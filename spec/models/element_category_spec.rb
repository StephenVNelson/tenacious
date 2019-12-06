require 'rails_helper'

RSpec.describe ElementCategory, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:elements) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
