x_coords = ("a".."g").to_a

y_coords = (1..8).to_a

x_coords.each do |x|
  y_coords.each do |y|
    p "#{x}, #{y}"
  end
end
