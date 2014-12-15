require "spec_helper"

describe PhonePlan do
  describe "#cost" do
    context "when it is the individual plan" do
      it "multiples the price by the number of phones" do
        phone_plan = PhonePlan.new(
          number_of_phones: 3,
          price: 40,
          type: "individual"
        )
        expect(phone_plan.cost).to eq 120
      end
    end

    context "when it is the family plan" do
      it "discounts each additional phone" do
        phone_plan = PhonePlan.new(
          number_of_phones: 3,
          price: 40,
          type: "family"
        )
        expect(phone_plan.cost).to eq 60
      end
    end

    context "when it is the business plan" do
      context "when there are fewer than 50 phones" do
        it "returns the price with a 25% discount" do
          phone_plan = PhonePlan.new(
            number_of_phones: 3,
            price: 40,
            type: "business"
          )
          expect(phone_plan.cost).to eq 90
        end
      end

      context "when there are 50 or more phones" do
        it "returns the price with a 50% discount" do
          phone_plan = PhonePlan.new(
            number_of_phones: 51,
            price: 40,
            type: "business"
          )
          expect(phone_plan.cost).to eq 1020
        end
      end
    end
  end
end
