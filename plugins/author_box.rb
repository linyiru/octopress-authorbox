require 'digest/md5'
module Jekyll
  require_relative 'post_filters'
  class AuthorBox < PostFilter

    def post_render(post)
      if post.is_post?
        authors = YAML::load(File.open(File.expand_path('../../author.yml', __FILE__)))

        if !post.data.key? 'author'
          raise "No author specified in post '#{post.data['title']}'"
        end

        authorName = post.data['author']
        if !authors.key? authorName
          raise "Could not find author data for '#{authorName}' in post '#{post.data['title']}'"
        end

        author = authors[post.data["author"]]
        post.content << render_content(author)
      end
    end
    
    def render_content(author)
      @template = Liquid::Template.parse(File.read(File.expand_path('../../source/_layouts/author.html', __FILE__)))
      html = @template.render( 'author' => author, 'gravatar' => get_gravatar(author['email']))
    end
    
    def get_gravatar(email)
      hash = Digest::MD5.hexdigest(email.downcase)
      image_src = "http://www.gravatar.com/avatar/#{hash}"  
    end
  end

end
