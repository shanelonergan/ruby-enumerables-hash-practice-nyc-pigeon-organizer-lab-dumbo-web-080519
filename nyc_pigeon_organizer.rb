require "pry"
def nyc_pigeon_organizer(data)
  hash_by_name = {}
  data.each do | category, hash |
    hash.each do |attribute, names|
      names.each do |name|
        binding.pry
        if hash_by_name.has_key?(name)
          hash_by_name[name][category] >> attribute.to_s
          #binding.pry
        else
          hash_by_name[name][category] = attribute.to_s
          #binding.pry
        end
      end
    end
  end

  return hash_by_name
end
