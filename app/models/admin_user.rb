class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :roles, :first_name, :last_name, :nip
  
  has_many :projects
  has_many :projects_i_lead, :foreign_key => :leader_id
  has_many :audits_i_lead, :foreign_key => :leader_id
  has_many :audits_values, :foreign_key => :user_id
  has_many :assets, :foreign_key => :owner_id
  has_many :asset_updaters, :foreign_key => :updated_by_id
  has_many :asset_versions, :foreign_key => :uploader_id
  
  scope :with_role, lambda { |role| {:conditions => "roles_mask & #{2**ROLES.index(role.to_s)} > 0"} }
  
  def name
    first_name.nil? ? email : first_name + ' ' + last_name
  end
  
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask || 0) & 2**ROLES.index(r)).zero?
    end
  end
  
  def is?(role)
    roles.include?(role.to_s)
  end
  
end
