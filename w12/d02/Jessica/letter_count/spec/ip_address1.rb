def valid_IP(address)
  ip_split = address.split(".")
  ip_split.each do |num|
    num.to_i <= 255 && num.to_i >= 0  
  end
end