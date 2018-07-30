class ApplicationForm
  include ActiveModel::Model
  include ActiveModel::Validations

  def self.all_fields
    @all_fields ||= {}
  end

  def self.fields(model, *names)
    unless all_fields.key? model
      attr_reader model

      define_method :"validate_#{model}!" do
        own = send model

        unless own.valid?
          errors.messages.merge!(own.errors.messages) { |_, ary1, ary2| ary1 + ary2 }
          errors.details.merge!(own.errors.details)   { |_, ary1, ary2| ary1 + ary2 }
        end
      end

      validate :"validate_#{model}!"

      all_fields[model] = []
    end

    delegate *names, to: model

    all_fields[model] = all_fields[model] + names
    all_fields[model].uniq!
    all_fields
  end

  def persisted?
    false
  end

  def to_h
    self.class.all_fields.map { |a| [a, self.send(a)] if self.respond_to?(a) }.compact.to_h
  end
end
