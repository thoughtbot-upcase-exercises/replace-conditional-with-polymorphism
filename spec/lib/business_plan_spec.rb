require "spec_helper"

describe PhonePlan do
  describe "#cost" do
    context "when there are fewer than 50 phones" do
      it "returns the price with a 25% discount" do
        phone_plan = BusinessPlan.new(number_of_phones: 3, price: 40)
        expect(phone_plan.cost).to eq 90
      end
    end

    context "when there are 50 or more phones" do
      it "returns the price with a 50% discount" do
        phone_plan = BusinessPlan.new(number_of_phones: 51, price: 40)
        expect(phone_plan.cost).to eq 1020
      end
    end
  end
end
