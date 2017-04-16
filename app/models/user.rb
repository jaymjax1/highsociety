# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string
#  email                  :string
#  first_name             :string
#  last_name              :string
#  street                 :string
#  city                   :string
#  state                  :string
#  zip_code               :integer
#  about_me               :text
#  profile_image          :string
#  background_image       :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  password_confirmation  :string
#  encrypted_password     :string
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  sign_in_count          :integer
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  reset_password_token   :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable and :omniauthable
has_many :posts
has_many :comments, through: :posts
has_and_belongs_to_many :groups, optional: true
validates :first_name, length: { maximum: 10}
validates :last_name, length: { maximum: 10}
validates :username, length: { maximum: 10}
validates :zip_code, length: { maximum:9}
validates :email, allow_blank: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
validates :street, length: { maximum: 20}
validates :city, length: { maximum: 20}
validates :state, length: { maximum: 20}
validates :about_me, length: { maximum: 100}



devise :database_authenticatable, :registerable,
:recoverable, :rememberable, :trackable, :validatable



end         

#  id               :integer          not null, primary key
#  username         :string
#  password         :string
#  email            :string
#  first_name       :string
#  last_name        :string
#  street           :string
#  city             :string
#  state            :string
#  zip_code         :integer
#  about_me         :text
#  profile_image    :string
#  background_image :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#


