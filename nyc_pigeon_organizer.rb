def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do |data_type, data|
    data.each do |quality, names|
      names.each do |name|
        if pigeon_list[name]
          if pigeon_list[name][data_type] != nil
            pigeon_list[name][data_type] << quality
          else
            pigeon_list[name][data_type] << [quality]
          end
        else
          pigeon_list[name] = {data_type => [quality]}
        end
      end
    end
  end
  puts pigeons_list
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)
