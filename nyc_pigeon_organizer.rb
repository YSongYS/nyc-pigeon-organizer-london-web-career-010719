def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do |data_type, data|
    data.each do |quality, names|
      names.each do |name|
        if pigeon_list[name]
          if pigeon_list[name][data_type]
            pigeon_list[name][data_type] << quality.to_s
          else
            pigeon_list[name][data_type] = [quality.to_s]
          end
        else
          pigeon_list[name] = {data_type => [quality.to_s]}
        end
      end
    end
  end
  pigeon_list
end
