require "phone_plan"

class FamilyPlan < PhonePlan
  COST_PER_EXTRA_PHONE = 10

  def cost
    price + number_of_extra_phones * COST_PER_EXTRA_PHONE
  end

  private

  def number_of_extra_phones
    number_of_phones - 1
  end
end
