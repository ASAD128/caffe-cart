require 'rails_helper'

RSpec.describe Item, type: :model do
  subject {
    described_class.new(name: "Coffee", category_id: 1, tax_id: 1, discount_id: 1)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
end
