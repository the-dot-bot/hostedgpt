class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  include Scopes::AutoGenerated
end
