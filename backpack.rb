class Backpack
  def initialize(attributes)
    @attributes = attributes
    @items = ['pants', 'shirt']
    prepare
  end

  def items
    @items
  end

  def prepare

    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]
    
    # Ensure appropriate clothing is added to backpack
    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    else
      @items
    end

    # Ensure gym shoes are added to backpack if it's a gym day
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end

    # Bring a packed lunch on all weekdays, or a snack on weekends
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    else
      @items << 'snacks'
    end
  end

  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
