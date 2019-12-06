require 'rails_helper'

RSpec.describe Element, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:category) }

    it { should have_many(:exercise_elements) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
