def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do |data_type, data|
    data.each do |quality, names|
      names.each do |name|
        pigeon_list[name][data_type] = [] if pigeon_list[name][data_type] = nil 
        pigeon_list[name][data_type] << quality
      end 
    end 
  end 
end