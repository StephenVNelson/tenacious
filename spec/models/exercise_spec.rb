require 'rails_helper'

RSpec.describe Exercise, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:exercise_elements) }

    it { should have_many(:workout_exercises) }

    end

    describe "InDirect Associations" do

    it { should have_many(:workouts) }

    it { should have_many(:elements) }

    end

    describe "Validations" do
      
    end
end
