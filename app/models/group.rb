# == Schema Information
#
# Table name: groups
#
#  id               :integer          not null, primary key
#  name             :string
#  description      :text
#  location         :string
#  owner            :string
#  background_image :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Group < ApplicationRecord

	has_many :posts
	has_many :comments, through: :posts
	has_and_belongs_to_many :users, optional: true

	def self.search(search)
 		where("name LIKE ?", "%#{search}%") 
  	end

end
