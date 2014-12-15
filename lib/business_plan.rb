require "phone_plan"

class BusinessPlan < PhonePlan
  def cost
    if number_of_phones < 50
      subtotal * 0.75
    else
      subtotal * 0.50
    end
  end

  private

  def subtotal
    number_of_phones * price
  end
end
