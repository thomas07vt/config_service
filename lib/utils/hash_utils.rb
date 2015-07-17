class HashUtils
  class << self
    def hash_to_open_struct(data_hash)
      elements_with_hash_values = data_hash.select { |key, value|  value.is_a? Hash }

      if elements_with_hash_values.empty?
        result = OpenStruct.new(data_hash)
      else
        result = OpenStruct.new(data_hash.select { |key, value|  !value.is_a?(Hash) })
        elements_with_hash_values.each do |key, value|
          result.send("#{key}=", hash_to_open_struct(value))
        end
      end

      result.extend(OpenStructHashable) if RUBY_PLATFORM == "java"
      result
    end
  end
end

module OpenStructHashable
  def [](val)
    @table[val.to_sym]
  end
end
