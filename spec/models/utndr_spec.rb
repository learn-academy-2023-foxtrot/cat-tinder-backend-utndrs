require 'rails_helper'

RSpec.describe Utndr, type: :model do
  it 'is not valid without a name' do
    utndr = Utndr.create(
      name: nil,
      age: 26,
      content: 'Arts & Crafts',
      image: 'https://unsplash.com/photos/ia1p6fqftnQ'
    )
    expect(utndr.errors[:name]).to_not be_empty
  end
  it 'is not valid without a age' do
    utndr = Utndr.create(
      name: 'Paularts',
      age: nil,
      content: 'Arts & Crafts',
      image: 'https://unsplash.com/photos/ia1p6fqftnQ'
    )
    expect(utndr.errors[:age]).to_not be_empty
  end
   it 'is not valid without a content' do
    utndr = Utndr.create(
      name: 'Paularts',
      age: 26,
      content: nil,
      image: 'https://unsplash.com/photos/ia1p6fqftnQ'
    )
    expect(utndr.errors[:content]).to_not be_empty
   end
   it 'is not valid without a image' do
    utndr = Utndr.create(
      name: 'Paularts',
      age: 26,
      content: 'Arts & Crafts',
      image: nil
    )
    expect(utndr.errors[:image]).to_not be_empty
   end
   it 'is not valid if content is less than 10 characters long' do
    utndr = Utndr.create(
      name: 'Paularts',
      age: 26,
      content: nil,
      image: 'https://unsplash.com/photos/ia1p6fqftnQ'
    )
    expect(utndr.errors[:content]).to_not be_empty
   end
end