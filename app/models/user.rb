class User < ActiveRecord::Base
  rolify  :before_add => :before_add_method
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def before_add_method(role)
    # do something before it gets added
  end       
end
