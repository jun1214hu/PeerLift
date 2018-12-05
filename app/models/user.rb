class User < ApplicationRecord
	has_many :user_tasks
	has_many :saved_scholarships, dependent: :destroy
	has_many :started_scholarships, dependent: :destroy
	has_many :file_uploads, dependent: :destroy

 	validates :email, uniqueness: true

	def self.find_or_create_from_auth_hash(auth)
		where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
			user.provider = auth.provider
			user.uid = auth.uid
			user.first_name = auth.info.first_name
			user.last_name = auth.info.last_name
			user.email = auth.info.email
			#user.picture = auth.info.image
			user.save!
		end
	end

	validates :provider,
	:uid,
	:email,
	:first_name,
	:last_name,
	presence: true

end
