module ActsAsCurrency
  extend ActiveSupport::Concern
 
  included do
  end

  module ClassMethods
    def acts_as_currency(*attr_names)
      configuration = {}
      configuration[:fields] = attr_names.flatten.uniq.compact
      class_attribute :currency_options
      self.currency_options = configuration
      self.currency_options[:fields].each do |field|
        define_method(field, proc{return read_attribute(field).nil? ? 0 : read_attribute(field)/100.0})
        define_method("#{field}=") do |value|
          write_attribute(field, (value.to_d*100).to_i)
        end
      end
      include ActsAsCurrency::LocalInstanceMethods
    end
  end

  module LocalInstanceMethods
    def initialize(attributes = {})
      super
    end
  end

  ActiveRecord::Base.send :include, ActsAsCurrency
end
