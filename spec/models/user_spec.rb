require "rails_helper"

RSpec.describe User, type: :model do
  describe "Direct Associations" do
    it { should have_many(:dishes) }

    it { should have_many(:favorite_dishes) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
