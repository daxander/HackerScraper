# require 'nokogiri'
# require_relative 'comment'
# require_relative 'post'
# require_relative 'application'


class Scraper

  def self.title(link)
   link.search('.title a').map { |link| link.inner_text}
  end

  def self.url(link)
    link.search('.title a').map { |link| link['href']}
  end

  def self.points(link)
   link.search('.score').map { |link| link.inner_text}
  end

  def self.item_id(link) 
    link.search('.subtext .score').map do |link| link.attr("id")[/\d+/]
    end
  end

  def self.comments(link)
    comments = []
    link.search('.default').each do |comment|
    user_id = comment.search('.comhead a').first.text
    content = comment.search('.comment').text
        comments << Comment.new(user_id, content)
    end
    comments
  end

end

    