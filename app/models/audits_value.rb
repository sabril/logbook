class AuditsValue < ActiveRecord::Base
  attr_accessible :audit_id, :value_option_id
  belongs_to :audit
  belongs_to :value_option
end
