class Assignment < ActiveRecord::Base
  attr_accessible :rollno, :doc
  has_attached_file :doc,
    :storage => :google_drive,
    :google_drive_credentials => "#{Rails.root}/config/google_drive.yml",
    :google_drive_options => {
      :public_folder_id => '0B4VcRFzXj-Leak4tdGg2czdvbTQ',
      :path => proc { |style| "[#{rollno}]_#{id}_#{doc.original_filename}" }      
    }
end
