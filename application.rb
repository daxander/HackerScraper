require 'nokogiri'
require_relative 'comment'
require_relative 'post'
require_relative 'scraper'
require 'pry'
class Application

  @@link = ARGV.first
  @@file = Nokogiri::HTML(File.open('post.html'))

 

  def new_post(article)
      title = Scraper.title(@@link)
      url = Scraper.url(@@link)
      points = Scraper.points(@@link)
      item_id = Scraper.item_id(@@link)
      new_post = Post.new(title, url, points, item_id)
      new_post.comments = Scraper.comments(@@link)

  end

end

Scraper.comments(Nokogiri::HTML(File.open('post.html')))