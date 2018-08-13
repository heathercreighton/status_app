require 'rails_helper'

RSpec.describe State, type: :model do
  it {should validate_presence_of(:status)}
  # it {should validate_presence_of(:status_message)}
end


# # Test suite for the Todo model
# RSpec.describe Todo, type: :model do
#   # Association test
#   # ensure Todo model has a 1:m relationship with the Item model
#   it { should have_many(:items).dependent(:destroy) }
#   # Validation tests
#   # ensure columns title and created_by are present before saving
#   it { should validate_presence_of(:title) }
#   it { should validate_presence_of(:created_by) }
# end