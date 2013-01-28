require 'spec_helper'

describe 'AmoebaInheritance' do

  before(:each) do
    @box = Box.create
    sub_sub_product = SubSubProduct.create(title: 'Awesome shoes')
    another_product = AnotherProduct.create(title: 'Cleaning product')
    sub_sub_product.box = @box
    sub_sub_product.another_product = another_product

    sub_sub_product.save
  end

  it 'works in real life' do
    @box.sub_products.first.another_product.title.should == 'Cleaning product'
  end

  it 'does not fail with a deep inheritance' do
    @box.amoeba_dup.sub_products.first.another_product.title.should == 'Cleaning product'
  end
end
