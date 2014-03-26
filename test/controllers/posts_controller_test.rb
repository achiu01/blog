require 'test_helper'

class PostsControllerTest < ActionController::TestCase
	def test_index
		get :index 
		assert_response :success
		posts=assigns :posts
		assert posts
	end
	def test_index_body
		get :index
		assert_match "Listing Posts", response.body 
		puts response.body
	end
end
