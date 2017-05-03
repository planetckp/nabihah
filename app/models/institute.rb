class Institute < ApplicationRecord

	
if Rails.env.development?
has_attached_file :image, styles: { large: "500x300>", medium: "200x200>", thumb: "100x100>" }, default_url: "missing.png"
validates_attachment_content_type :image, {content_type: /\Aimage\/.*\z/}


else
	
  has_attached_file :image, styles: { large: "500x300>", medium: "200x200>", thumb: "100x100>" }, default_url: "missing.png",

  					:storage => :dropbox,
    				:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    				:path => ":style/:id_:filename"
					validates_attachment_content_type :image, {content_type: /\Aimage\/.*\z/}

					end
				end