require 'write_xlsx'

module XlsxConcern
  extend ActiveSupport::Concern

  included do
  end

  module ClassMethods
    def export_xlsx(name: 'table')
      path = Rails.root.join('tmp').to_path + "/#{name}.xlsx"
      generate(path, self.all)
      path
    end

    def generate(path, data)
      xlsx_file = WriteXLSX.new(path)
      xlsx_sheet = xlsx_file.add_worksheet
      attribute_names = self.attribute_names
      attribute_names.each_with_index do |name, index|
        xlsx_sheet.write(0, index, self.human_attribute_name(name))
      end
      data.each_with_index do |user, index|
        attribute_names.each_with_index do |name, name_index|
          xlsx_sheet.write(index + 1, name_index, user[name])
        end
      end
      xlsx_file.close
    end
  end
end
