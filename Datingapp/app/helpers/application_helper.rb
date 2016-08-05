module ApplicationHelper

def gravatar_for(user, size = 30, title = user.first_name)
	image_tag gravatar_image_url(user.email, :size => size,:default => user.fb_image ? user.fb_image : "") ,title: title, class: 'img-rounded'
end

def page_header(text)
  content_for(:page_header) { text.to_s }
end

def sender_name(conversation)
	conversation.receipts_for(current_user).first.message.sender.full_name
end

def read_more(text,length)
	truncate(text, :length => length)
end 


end
