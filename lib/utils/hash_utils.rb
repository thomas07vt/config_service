class HashUtils
  class << self
    def hash_to_open_struct(data_hash)
      elements_with_hash_values = data_hash.select { |key, value|  value.is_a? Hash }
      return OpenStruct.new(data_hash) if elements_with_hash_values.empty?

      result = OpenStruct.new(data_hash.select { |key, value|  !value.is_a?(Hash) })
      elements_with_hash_values.each do |key, value|
        result.send("#{key}=", hash_to_open_struct(value))
      end
      result
    end
  end
end