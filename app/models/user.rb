class User < ActiveRecord::Base
  attr_accessible :email, :name, :mobile
end
