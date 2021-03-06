require 'rails_helper'

RSpec.describe Workout, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:workout_exercises) }

    it { should belong_to(:client) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    it { should have_many(:exercises) }

    end

    describe "Validations" do
      
    end
end
