require 'nokogiri'
require_relative 'comment'
require_relative 'post'
require_relative 'application'

class Scraper

  @doc = Nokogiri::HTML(File.open("post.html"))

  def self.title
   @doc.search('.title a').map { |link| link.inner_text}
  end

  def self.url
    @doc.search('.title a').map { |link| link['href']}
  end

  def self.points
   @doc.search('.score').map { |link| link.inner_text}
  end

  def self.item_id 
    @doc.search('.subtext .score').map do |link| link.attr("id")[/\d+/]
  end

end
