require 'rails_helper'

RSpec.describe ExerciseElement, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:exercise) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
