def ip_address(address)
  split_location = (address.length)/4
  split_address = address.scan(/#{split_location}/)
  adddress_to_i = split_address.map {|num| num.to_i}

  adddress_to_i.each do |num|
    if num > 255 ? true : false
    end
  end

  
##finds location where address should be split apart
  # split_location = (address.length)/3
  # address.insert(split_location, ".")
  # address.insert(split_location*2 + 1, ".")

  # address.map{ |num| num.to_i }

  # address.scan(/.{4}/)

