class Book < ActiveRecord::Base

  has_one :category



  def self.export_excel
    book = Spreadsheet::Workbook.new
    sheet = book.create_worksheet(:name => 'Sheet1')

    format = Spreadsheet::Format.new pattern: 1, pattern_bg_color: :cyan, color: :white

    ExcelUtil::set_format sheet.row(0) , format , Book.column_names.size
    sheet.row(0).replace Book.column_names

    self.all.to_a.each_with_index do |b , i|
      sheet.row(i + 1).replace b.attributes.values
    end

    book

  end
end
