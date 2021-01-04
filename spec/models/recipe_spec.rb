require "rails_helper"

RSpec.describe Recipe, type: :model do
  describe "#validations" do
    it "should be invalid if name is not present" do
      recipe = build :recipe, name: nil
      expect(recipe).not_to be_valid
      expect(recipe.errors.messages[:name]).to include("can't be blank") 
    end
  end
end