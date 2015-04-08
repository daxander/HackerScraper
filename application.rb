class Application

  @@link = ARGV.first



  def new_post
      title = Scraper.title(@@link)
      url = Scraper.url(@@link)
      points = Scraper.points(@@link)
      item_id = Scraper.item_id(@@link)
      Post.new(title, url, points, item_id)
  end

end
