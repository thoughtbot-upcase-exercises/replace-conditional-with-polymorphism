require "phone_plan"

class IndividualPlan < PhonePlan
  def cost
    number_of_phones * price
  end
end
