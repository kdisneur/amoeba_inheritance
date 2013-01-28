class Box < ActiveRecord::Base

  attr_accessible :title
  has_many        :products
  has_many        :sub_products

  amoeba do
    enable
  end

end
