class Friendship < ActiveRecord::Base
belongs_to :user
belongs_to :fitpartner, :class_name => "User"
end