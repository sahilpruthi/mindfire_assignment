# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Default user to be used 
User.create!(email: 'default@mindfire.com', password: 'password')

# Default Categories
Category.create!(title: 'Sports')
Category.create!(title: 'Business')
Category.create!(title: 'Entertainment')
Category.create!(title: 'Tech')

# Default Agencies
Agency.create!(name: 'Times Of India')
Agency.create!(name: 'Hindustan Times')
Agency.create!(name: 'The Hindu')

# Default Agency Feeds for Category Sports
AgencyFeed.create!(
	category_id: 1, agency_id: 1, agency_feed_url: 'https://timesofindia.indiatimes.com/sports'
	)
AgencyFeed.create!(
	category_id: 1, agency_id: 2, agency_feed_url: 'https://www.hindustantimes.com/sports'
	)
AgencyFeed.create!(
	category_id: 1, agency_id: 3, agency_feed_url: 'https://www.thehindu.com/sport/'
	)

# Default Agency Feeds  for Category Business
AgencyFeed.create!(
	category_id: 2, agency_id: 1, agency_feed_url: 'https://timesofindia.indiatimes.com/business'
	)
AgencyFeed.create!(
	category_id: 2, agency_id: 2, agency_feed_url: 'https://www.hindustantimes.com/business-news/'
	)
AgencyFeed.create!(
	category_id: 2, agency_id: 3, agency_feed_url: 'https://www.thehindu.com/business/'
	)

# Default Agency Feeds  for Category Entertainment
AgencyFeed.create!(
	category_id: 3, agency_id: 1, agency_feed_url: 'https://timesofindia.indiatimes.com/business'
	)
AgencyFeed.create!(
	category_id: 3, agency_id: 2, agency_feed_url: 'https://www.hindustantimes.com/entertainment/'
	)
AgencyFeed.create!(
	category_id: 3, agency_id: 3, agency_feed_url: 'https://www.thehindu.com/entertainment/'
	)

# Default Agency Feeds  for Category Tech
AgencyFeed.create!(
	category_id: 4, agency_id: 1, agency_feed_url: 'https://timesofindia.indiatimes.com/etimes'
	)
AgencyFeed.create!(
	category_id: 4, agency_id: 2, agency_feed_url: 'https://tech.hindustantimes.com/'
	)
AgencyFeed.create!(
	category_id: 4, agency_id: 3, agency_feed_url: ''
	)

# Default news for category ID 3 (Entertainment)
News.create!(
	news_title: 'Paava Kadhaigal’ interview: How Vetri Maaran, Gautham Menon, Vignesh Shivan
	 and news_Sudha Kongara joined the Netflix anthology', 
	news_description: 'Four leading filmmakers of Tamil cinema are set to give us their perspective on it,
	 in the form of an anthology film Paava Kadhaigal, dropping on Netflix later this month.
	  Touted to be on a hard-hitting subject, the four storylines will explore how love,
	   pride and honour influence complex relationships. It is helmed by Vetri Maaran, Gautham Menon,
	    Sudha Kongara and Vignesh Shivan, and stars Prakash Raj, Sai Pallavi, Anjali, Simran, Kalidas,
	     Kalki Koechlin and Shanthnu, among others.While Netflix has actively been putting out anthologies
	      in Bollywood, Paava Kadhaigal is their first such outing in Tamil cinema.The last decade has
	       thrown up a few interesting anthologies in Kollywood, including Aviyal, Solo and Sillu Karupatti.
	        But Paava Kadhaigal, produced by Ronnie Screwvala’s RSVP Movies and Ashi Dua Sara’s Flying Unicorn
	         Entertainment, might be the biggest of them all, considering the names involved. Excerpts from
	          a quick Zoom chat with the four acclaimed filmmakers', news_publish_date_time: DateTime.now,
	          news_link: 'https://www.thehindu.com/entertainment/movies/paava-kadhaigal-interview-how-vetri-maaran-gautham-menon-vignesh-shivan-and-sudha-kongara-joined-the-netflix-anthology/article32739556.ece',
	          category_id: 3, agency_id: 3
	          )

News.create!(
	news_title: 'Meet the anonymous calendar artists of Sivakasi', 
	news_description: 'They have never held an art exhibition, but their pictures turn up on walls regularly —
	 and stay there until the year ends. These are the anonymous calendar artists of Sivakasi, Tamil Nadu.
	  Calendar art, especially in southern India, is a genre that recasts the old skill of temple murals
	   into a new mould, aided by techniques that are drawn from proscenium theatre, cinema and British
	    colonial perspectives, with a uniquely Indian sensibility.From the 18th Century, the printing
	     press and celebrated artists like Raja Ravi Varma have helped to create a mass market for
	      religious pictures, especially in Hindu iconography. Annual calendars blended the commercial
	       and spiritual aspects of the art into a booming industry. Before computerisation introduced
	        automated printing, hundreds of illustrators used to gather in Sivakasi towards the end of
	         the year to start drawing what are known as ‘God pictures’ in industry parlance, for the
	          following year’s calendars.cToday, anecdotal evidence suggests that there are only around
	           eight to nine artists who specialise in drawing devotional pictures in Tamil Nadu.
	            MetroPlus talks to three.', news_publish_date_time: DateTime.now,
	          news_link: 'https://www.thehindu.com/entertainment/art/tamil-nadus-calendar-artists-paint-devotional-images-with-a-flourish/article32716049.ece',
	          category_id: 3, agency_id: 3
	          )

News.create!(
	news_title: 'Meet the anonymous calendar artists of Sivakasi', 
	news_description: 'They have never held an art exhibition, but their pictures turn up on walls regularly —
	 and stay there until the year ends. These are the anonymous calendar artists of Sivakasi, Tamil Nadu.
	  Calendar art, especially in southern India, is a genre that recasts the old skill of temple murals
	   into a new mould, aided by techniques that are drawn from proscenium theatre, cinema and British
	    colonial perspectives, with a uniquely Indian sensibility.From the 18th Century, the printing
	     press and celebrated artists like Raja Ravi Varma have helped to create a mass market for
	      religious pictures, especially in Hindu iconography. Annual calendars blended the commercial
	       and spiritual aspects of the art into a booming industry. Before computerisation introduced
	        automated printing, hundreds of illustrators used to gather in Sivakasi towards the end of
	         the year to start drawing what are known as ‘God pictures’ in industry parlance, for the
	          following year’s calendars.cToday, anecdotal evidence suggests that there are only around
	           eight to nine artists who specialise in drawing devotional pictures in Tamil Nadu.
	            MetroPlus talks to three.', news_publish_date_time: DateTime.now,
	          news_link: 'https://www.thehindu.com/entertainment/art/tamil-nadus-calendar-artists-paint-devotional-images-with-a-flourish/article32716049.ece',
	          category_id: 3, agency_id: 3
	          )

# Default news for category ID 1 (Sports)

News.create!(
	news_title: 'IPL 2020: Dinesh Karthik should bat after Eoin Morgan and Andre Russell, says Gautam Gambhir', 
	news_description: 'SHARJAH: Two-time IPL winning Kolkata Knight Riders captain Gautam Gambhir believes
	 current skipper Dinesh Karthik should bat after Eoin Morgan and Andre Russell and also wants Sunil Narine to
	  be dropped from the top of the order. Apart from a 23-ball 30 coming at no 3 against Mumbai Indians, Karthik
	   has failed to produce any significant score despite batting ahead of Morgan so far in the tournament.
	    The wicket-keeper batsman scored 6 after coming on to bat at no 5 against Delhi Capitals on Saturday even
	     as Morgan (44 off 18) and Rahul Tripathi (36 off 16) raised hopes of a successful chase after batting
	      at no 6 and 8 respectively.', news_publish_date_time: DateTime.now,
          news_link: 'https://timesofindia.indiatimes.com/sports/cricket/ipl/top-stories/ipl-2020-dinesh-karthik-should-bat-after-eoin-morgan-and-andre-russell-says-gautam-gambhir/articleshow/78473710.cms',
          category_id: 1, agency_id: 1
	          )


News.create!(
	news_title: 'MI vs SRH Live Score, IPL 2020 Match Today: De Kock, Kishan keep Mumbai Indians going after two blows', 
	news_description: 'IPL 2020 Live Score, Mumbai Indians (MI) vs Sunrisers Hyderabad (SRH): Siddarth Kaul picked
	 up his 50th IPL wicket dismissing Suryakumar Yadav. Mumbai Indians were dented early after losing Rohit Sharma
	  in the first over of the match. This was after MI opted to bat against Sunrisers Hyderabad in Sharjah.
	   The Indian Premier League 2020 is in for another cracker of a contest as two formidable sides in MI and
	    SRH are set to do battle in Match 17 of the tournament. The Sunrisers, led by David Warner, will have no
	     shortage of confidence coming off successive wins, but defending champions MI have proven why they cannot
	      be discarded even with defeats. Both their losses have been followed by wins, ensuring that the side is
	       not left to play catch up late in the tournament. Two of the finest batsmen in Warner and Rohit Sharma
	        will be up against each other and a win here for either side can only bode well for the franchise moving
	         forward.', news_publish_date_time: DateTime.now,
          news_link: 'https://www.hindustantimes.com/cricket/ipl-2020-mi-vs-srh-live-score-mumbai-indians-vs-sunrisers-hyderabad-indian-premier-league-match-today-live-updates-uae/story-reHrOCbDABBcqGcLj7cCTJ.html',
          category_id: 1, agency_id: 2
	          )

News.create!(
	news_title: 'Indian Premier League 2020 | Mumbai elects to bat against Hyderabad', 
	news_description: 'Hyderabad made two changes to its side while Mumbai are playing the same side. Mumbai Indians
	 skipper Rohit Sharma won the toss and opted to bat in their Indian Premier League match against Sunrisers
	  Hyderabad here on Sunday. Mumbai are playing the same side that won them the last game while Sunrisers
	   Hyderabad replaced injured seamer Bhuvneshwar Kumar with Sandeep Sharma and Khaleel Ahmed with Siddarth Kaul.',
	    news_publish_date_time: DateTime.now,
          news_link: 'https://www.thehindu.com/sport/cricket/indian-premier-league-2020-mumbai-indians-vs-sunrisers-hyderabad-in-sharjah/article32765089.ece',
          category_id: 1, agency_id: 3
	          )

# Default news for category ID 2 (Business)

News.create!(
	news_title: 'Stormy GST Council meet likely on Monday; non-BJP states to oppose Centres borrowing option', 
	news_description: 'NEW DELHI: The GST Council meeting on Monday may turn into a stormy affair, with non-BJP
	 ruled states still being in disagreement with the Centre on the compensation issue While as many as 21 states,
	  mostly ruled by BJP or parties which have supported it on issues, had till mid-September opted to borrow
	   Rs 97,000 crore to meet the  in the current fiscal, opposition-led states like West Bengal,
	    Punjab and Kerala have not yet accepted the borrowing option',
	    news_publish_date_time: DateTime.now,
          news_link: 'https://timesofindia.indiatimes.com/business/india-business/stormy-gst-council-meet-likely-on-monday-non-bjp-states-to-oppose-centres-borrowing-option/articleshow/78474107.cms',
          category_id: 2, agency_id: 1
	          )

News.create!(
	news_title: 'TCS earnings, global factors to dictate domestic markets this week: Analysts', 
	news_description: 'Benchmark index Sensex advanced by 3.49 per cent or 1,308.39 points last week on the
	 back of Unlock 5.0 guidelines, positive macroeconomic data and renewed hopes of US stimulus measures.
	  Domestic markets were closed on Friday on account of ‘Gandhi Jayanti’.',
	    news_publish_date_time: DateTime.now,
          news_link: 'https://www.hindustantimes.com/business-news/tcs-earnings-global-factors-to-dictate-domestic-markets-this-week-analysts/story-bmfzsdh13vxq4TTxcSXSMM.html',
          category_id: 2, agency_id: 2
	          )


News.create!(
	news_title: 'Big Billion Days will help create lakhs of indirect jobs: Flipkart', 
	news_description: 'E-tailer Flipkart on Saturday said its six-day annual sales event ‘The Big Billion Days’
	 is scheduled to commence from October 16. The event is expected to create more than 70,000 direct jobs and
	  lakhs of indirect seasonal jobs as more sellers, artisans, and brands gear up to fulfil consumer demand,
	   Flipkart said.',
	    news_publish_date_time: DateTime.now,
          news_link: 'https://www.thehindu.com/business/big-billion-days-will-help-create-lakhs-of-indirect-jobs-flipkart/article32762581.ece',
          category_id: 2, agency_id: 3
	          )


# Default news for category ID 4 (Tech)

News.create!(
	news_title: 'Stormy GST Council meet likely on Monday; non-BJP states to oppose Centres borrowing option', 
	news_description: 'The 14th edition of Bigg Boss premiered last night (October 3). The grand season premiere
	 show saw host Salman Khan introducing all the contestants to be locked inside the house, however, with a twist.
	  Here are some interesting, controversial and some laugh-worthy moments from last night',
	    news_publish_date_time: DateTime.now,
          news_link: 'https://timesofindia.indiatimes.com/tv/news/hindi/bigg-boss-14-grand-premiere-review-fake-audience-contestants-getting-rejected-and-more/articleshow/78474054.cms',
          category_id: 4, agency_id: 1
	          )

News.create!(
	news_title: 'Former Chinese diplomat worked on TikTok content policy: Report', 
	news_description: 'A former Chinese government official decided what content should be allowed on TikTok,
	 the Financial Times reported, citing two people close to the short-video app company.Cai Zheng ran ByteDance’s
	  global content policy team in Beijing until early this year. He was previously working in China’s embassy in
	   Tehran, the FT said, citing a deleted LinkedIn profile.joined ByteDance in 2018 and wrote guidelines for what
	    videos were acceptable on TikTok and other apps including Helo and Vigo Video.',
	    news_publish_date_time: DateTime.now,
          news_link: 'https://www.hindustantimes.com/business-news/tcs-earnings-global-factors-to-dictate-domestic-markets-this-week-analysts/story-bmfzsdh13vxq4TTxcSXSMM.html',
          category_id: 4, agency_id: 2
	          )