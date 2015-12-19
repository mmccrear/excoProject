class ApplicationRenewal < ActiveRecord::Base
  belongs_to :instance

  acts_as_commontable

end
