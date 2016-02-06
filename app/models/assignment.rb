class Assignment < ActiveRecord::Base
  # attr_accessible :title, :body
  has_attached_file :doc,
    :storage => :google_drive,
    :google_drive_credentials => "#{Rails.root}/config/google_drive.yml",
    :google_drive_options => {
      :public_folder_id => '0B4VcRFzXj-Leak4tdGg2czdvbTQ'
    }
end
