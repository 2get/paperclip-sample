class Photo < ActiveRecord::Base
  attr_accessible :photo
  has_attached_file :photo,
  :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  :url => "/system/:attachment/:id/:style/:filename",
  :styles => { :medium => '300x300>', :thumb => '100x100>' }
end
