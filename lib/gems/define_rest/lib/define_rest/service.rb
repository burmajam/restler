module DefineRest
  class Service < ActiveRecord::Base
    self.table_name = 'define_rest_service'

    has_many :parameters
    has_many :headers

    ENCRYPTION_PROTECTION_TYPE = %w(mandatory optional no)

    validates_uniqueness_of :name
    validates_presence_of :name, :http_method, :url
    validates_inclusion_of :encryption, in: ENCRYPTION_PROTECTION_TYPE

    def self.search_by_name(phrase)
      where "name like ?", "%#{phrase}%"
    end
  end
end