require 'spec_helper'

describe Designation do

  before do 
    FactoryGirl.create(:designation)
  end

  context "Mass Assignments" do
   it { should allow_mass_assignment_of(:name)            }
   it { should allow_mass_assignment_of(:description)     } 
   it { should_not allow_mass_assignment_of(:created_at)  } 
   it { should_not allow_mass_assignment_of(:updated_at)  } 
  end

  context "Validations" do
   it { should validate_presence_of(:name)                     }
   it { should ensure_length_of(:name).is_at_most(30)          }
   it { should validate_uniqueness_of(:name).case_insensitive  }

   it { should validate_presence_of(:description)              } 
   it { should ensure_length_of(:description).is_at_most(250)  }
  end



end
