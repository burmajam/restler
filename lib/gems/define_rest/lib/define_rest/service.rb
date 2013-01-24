module DefineRest
  class Service < ActiveRecord::Base
    self.table_name = 'define_rest_service'

    def self.search_by_name(phrase)
      where "name like ?", "%#{phrase}%"
    end
  end
end