ActiveAdmin.register Article do

	permit_params :title, :content, :image, :writer_id, :photo

	show do |t|
	  attributes_table do
	    row :title
	    row :content
	    row :photo
	    row :writer_id #Writer.find(1).name
	    # row :image do
	    #   article.image? ? image_tag(article.image.url, height: '100') : content_tag(:span, "No image yet")
	    # end
	  end
	end

	# form :html => { :enctype => "multipart/form-data" } do |f|
	#   f.inputs do
	#     f.input :title
	#     f.input :content
	#     f.input :image, hint: f.article.image? ? image_tag(article.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG image" )
	#   end
	#   f.actions
	# end

end
