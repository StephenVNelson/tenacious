require 'rails_helper'

RSpec.describe Exercise, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:workout_exercises) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
