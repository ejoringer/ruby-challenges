class Blog
attr_accessor :title, :all_blog_posts, :total_blog_posts
	
	def initialize
		@time = Time.now
		puts "Name your blog:"
		@title = gets.chomp
		@all_blog_posts = []
		@total_blog_posts = 0
	end
	
	def create_blog_post
		my_blog_post = Blog_Post.new
		@all_blog_posts << my_blog_post	
		@total_blog_posts += 1
	end
		
	def get_blog_posts
		return @all_blog_posts
	end
		
	def publish(all_blog_posts)
		all_blog_posts.each do |blog_post|
		puts blog_post.title
		puts blog_post.time
		puts blog_post.content
	end
	
end
		

class Blog_Post 
attr_accessor :title, :time, :content,
		
	def initialize
		@time = Time.now
		puts "Name your blog post:"
		@title = gets.chomp
		
		puts "Write blog content here:"
		@content = gets.chomp
	end

end

emilys_blog = Blog.new
first_blog_post = emilys_blog.create_blog_post
all_blog_posts = emilys_blog.get_blog_posts
emilys_blog.publish(all_blog_posts)
end
