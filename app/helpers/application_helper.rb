module ApplicationHelper

	def randomized_background_image
	  images = [
	  	"http://farm9.staticflickr.com/8003/7684079804_b9d461da3a_b.jpg", 
	  	"http://farm9.staticflickr.com/8439/7742099374_082b30c483_b.jpg", 
	  	"http://farm4.staticflickr.com/3675/11444342376_289d45ca96_b.jpg"
	  ]
	  images[rand(images.size)]
	end
end
