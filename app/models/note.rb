class Note < ApplicationRecord

	validates :title, presence: true, length: { minimum: 5 }
	validates :content, presence: true

	has_attached_file :file, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/	
		
end
