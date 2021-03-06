class User < ActiveRecord::Base
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  	has_many :pins

  	# Vincent Magic
    def to_s
  		if self.email
  			return self.email
  		else
  			return ""
  		end
  	end
end
