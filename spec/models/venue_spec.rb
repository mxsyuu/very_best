require "rails_helper"

RSpec.describe Venue, type: :model do
  describe "Direct Associations" do
    it { should have_many(:likes) }
  end

  describe "InDirect Associations" do
    it { should have_many(:favorite_dishes) }
  end

  describe "Validations" do
  end
end
