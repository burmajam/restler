module DefineRest
  class Service < ActiveRecord::Base
    self.table_name = 'define_rest_service'

    has_many :parameters

    validates_uniqueness_of :name

    def self.search_by_name(phrase)
      where "name like ?", "%#{phrase}%"
    end
  end
end