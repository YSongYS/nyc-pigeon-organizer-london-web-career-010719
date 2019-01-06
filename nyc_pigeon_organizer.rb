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
  puts pigeon_list
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
