class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    already_exists = false
    BRANDS.each do |item|
      if item == brand
        already_exists = true
      end
    end
    if already_exists == false
      BRANDS << brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
