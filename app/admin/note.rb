ActiveAdmin.register Note do

	permit_params :title, :content, :file

	show do |t|
		attributes_table do
			row :title
			row :content
			row :file do
				note.file? ? image_tag(note.file.url, height: '100') : content_tag(:span, "No file yet")
			end
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :title
			f.input :content
			f.input :file, hint: f.note.file? ? image_tag(note.file.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF file")
		end
		f.actions
	end

end
