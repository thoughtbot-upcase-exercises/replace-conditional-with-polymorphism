class PhonePlan
  def initialize(number_of_phones:, price:, type:)
    @number_of_phones = number_of_phones
    @price = price
    @type = type
  end

  def cost
    if type == "individual"
      number_of_phones * price
    elsif type == "family"
      number_of_extra_phones = number_of_phones - 1
      cost_per_extra_phone = 10

      price + (number_of_extra_phones * cost_per_extra_phone)
    elsif type == "business"
      subtotal = number_of_phones * price

      if number_of_phones < 50
        subtotal * 0.75
      else
        subtotal * 0.50
      end
    end
  end

  private

  attr_reader :number_of_phones, :price, :type
end
