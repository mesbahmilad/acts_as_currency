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
      include ActsAsCurrency::LocalInstanceMethods
    end
  end

  module LocalInstanceMethods
    def initialize(attributes = {})
      self.currency_options[:fields].each do |field|
        self.class.send(:define_method, field, proc{return read_attribute(field).nil? ? 0 : read_attribute(field)/100.0})
        self.class.send :define_method, "#{field}=" do |value|
          write_attribute(field, value.to_d*100)
        end
      end
      super
    end
  end

  ActiveRecord::Base.send :include, ActsAsCurrency
end
