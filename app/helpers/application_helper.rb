module ApplicationHelper

  def full_title(page_title)
    base_title = "Liesl Wigand: Computer Scientist, Graduate Student"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end


  def get_comic(rss_page_url)
  	feed = Feedzirra::Feed::fetch_and_parse(rss_page_url)
    links = []
    link=""
  	feed.entries.each do |e|
  	  #{}"Looking at the entry #{e.title.gsub("n",' ')}".printn
  	  link = (Nokogiri(e.summary)/"img").to_html
      links.append(link) if not link.empty?
  	  next if link.empty?
  	  link = link[/"(.*)"/].gsub(/["]/,'')
  	end
    link = links[0]
    if link.include? "src"
      whereImg = (/src/ =~ link)
      whereSpace = (/\s/ =~ link[whereImg..link.length()])
      link = link[whereImg+5..whereImg+whereSpace-2]
    end
    link
  end

end
