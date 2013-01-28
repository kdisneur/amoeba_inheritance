class Product < ActiveRecord::Base

  attr_accessible :title
  belongs_to      :box

  amoeba do
    enable
    propagate
  end

end
