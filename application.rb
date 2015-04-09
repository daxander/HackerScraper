require 'nokogiri'
require_relative 'comment'
require_relative 'post'
require_relative 'scraper'

class Application

  @@file = ARGV.first
  @@link = Nokogiri::HTML(File.open('post.html'))

  def Application.new_post
      title = Scraper.title(@@link)
      url = Scraper.url(@@link)
      points = Scraper.points(@@link)
      item_id = Scraper.item_id(@@link)
      new_post = Post.new(title, url, points, item_id)
      new_post.comments = Scraper.comments(@@link)
      new_post
  end

end
p call_post = Application.new_post
Scraper.comments(Nokogiri::HTML(File.open('post.html')))