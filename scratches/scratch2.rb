Square.destroy_all

x = (1..8).to_a
y = (1..8).to_a.reverse

y.each do |y|
  x.each do |x|
    Square.create!(x: x.to_s, y: y.to_s)
  end
end
