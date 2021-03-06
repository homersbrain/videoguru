class AddTestData < ActiveRecord::Migration
  def self.up
		Title.destroy_all
		User.destroy_all
				
		ironman = Title.create(:movie_name => "Iron Man 3 Trailer",
													:director => "Shane Black",
													:image_url => "64.jpg",
													:video_url => "64_480p.webm",
													:rating => 5)
		
		wwz = Title.create(:movie_name => "Cloud Atlas Trailer",
											:director => "Wachowskis",
											:image_url => "67.jpg",
											:video_url => "67_480p.webm",
											:rating => 5)
		
		skyfall = Title.create(:movie_name => "Skyfall Trailer",
													:director => "Sam Mendez",
													:image_url => "66.jpg",
													:video_url => "66_480p.webm",
													:rating => 5)
		
		user1 = User.create(:name => "admin",
												:email => "admin@hotmail.com",
												:password => "password",
												:address_line => "456 Another St",
												:city => "Houston",
												:state => "TX",
												:zipcode => 77807)
		user1.toggle!(:admin)				
					
		owais = User.create(:name => "Owais Ahmed",
								:email => "owais@hotmail.com",
								:password => "password",
								:address_line => "123 Random St",
								:city => "Houston",
								:state => "TX",
								:zipcode => 78705)
		owais.titles << wwz
		owais.titles << skyfall
					
		jerry = User.create(:name => "Jerry Seinfeld",
								:email => "jerry@hotmail.com",
								:password => "password",
								:address_line => "789 New St",
								:city => "New York",
								:state => "NY",
								:zipcode => 73465)
		jerry.titles << ironman
  
  end

  def self.down
    Title.destroy_all
    User.destroy_all
  end
  
end