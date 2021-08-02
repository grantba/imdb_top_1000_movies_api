class WebScrapper < Kimurai::Base

    @start_urls = []
        
    def parse(response, url:, data: { })
        movies_array = []
        movies = response.css("div.lister.list.detail.sub-list div.lister-item.mode-advanced")
        movies.each do |m|
            scrapped_data = {
                Title: m.css("div.lister-item-content h3.lister-item-header a").text.strip,
                imdbID: m.css("h3.lister-item-header a").attr("href").value,
                Year: m.css("span.lister-item-year.text-muted.unbold").text.strip
                }
            movies_array << scrapped_data
            end
        Movie.make_a_movie(movies_array)
    end
  
end