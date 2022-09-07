class HelperMethods

  def print_hash_array(hash_array)
    hash_array.each do |hash|
      hash.each do |key,value|
        print key, ": ", value, "\n"
      end
    end
  end

end
