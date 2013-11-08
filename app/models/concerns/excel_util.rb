module ExcelUtil

  def set_format row , format , size
    size.times do |i|
      row.set_format(i , format)
    end
  end

  module_function :set_format
end