require 'test_helper'

class PostTest < ActiveSupport::TestCase
def test_title_len
	post = Post.new
	assert_not post.valid?
end
def test_valid_title_len
	post = Post.new
	post.title = "post name"
	assert post.valid?
end
def test_valid_title_too_short
	post = Post.new
	post.title = ""
	assert_not post.valid?
end
end
