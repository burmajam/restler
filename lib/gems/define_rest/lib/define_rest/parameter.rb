module DefineRest
  class Parameter < ActiveRecord::Base
    self.table_name = 'define_rest_parameters'

    PRESENCE_TYPE = %w(optional mandatory)

    validates_inclusion_of :presence, in: PRESENCE_TYPE
  end
end