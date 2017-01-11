require 'pry'

def nyc_pigeon_organizer(data)
  name_array = []
  pigeon_list = {}
  data[:gender].each do |k, v|
    name_array << v
  end
  name_array.flatten!
  name_array.each do |name|
    pigeon_list[name] = {}
    pigeon_list[name][:color] = []
    pigeon_list[name][:gender] = []
    pigeon_list[name][:lives] = []
  end
  data[:color].each do |k, v|
    v.each do |name|
      pigeon_list.each do |pigeon, v|
        if name == pigeon
          pigeon_list[pigeon][:color] << k.to_s
        end
      end
    end
  end
  data[:gender].each do |k, v|
    v.each do |name|
      pigeon_list.each do |pigeon, v|
        if name == pigeon
          pigeon_list[pigeon][:gender] << k.to_s
        end
      end
    end
  end
  data[:lives].each do |k, v|
    v.each do |name|
      pigeon_list.each do |pigeon, v|
        if name == pigeon
          pigeon_list[pigeon][:lives] << k
        end
      end
    end
  end
  return pigeon_list
end
