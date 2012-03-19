class Student < ActiveRecord::Base
  validates :studentnumber, :length => {:is => 9, :message => "needs to be 9 digits long"}, :format => { :with => /\d+/, :message => "can only contain digits"}, :uniqueness => { :is => true, :message => "has already been used for registration, and cannot be used again"}
  validates :password, :length => {:in => 6..15, :too_long => "needs to be less than %{count} characters", :too_short => "needs to be longer than %{count} characters" }, :confirmation => { :is => true, :message => "does not match the confirmation supplied"}
  validates :password_confirmation, :presence => { :is => true, :message => "needs to be completed"}
  validates :email, :confirmation => { :is => true, :message => "does not match the confirmation supplied"}, :format => { :with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i, :message => "is not a valid email address"}
  validates :email_confirmation, :presence => { :is => true, :message => "needs to be completed"}
end
