class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_paper_trail
  
  include RoleModel
  roles_attribute :roles_mask
  roles :admin, :student, :officer, :alumni, :duty_supervisor, :ees, :crew_chief_trainer, :crew_chief, :probationary_crew_chief, :driver_trainer, :driver, :probationary_driver, :attendant, :observer
end
