#Q1
 stringHtmlQ1 = 
 "<html>
 <body>
 my name is <b>sato</b>.
 my name is <b>suzuki</b>.
 my name is <b>tanaka</b>.
 this is a <p>pen</p>.
 this is a <p>book</p>.
 </body>
 </html>"
 
 items = /<p>(.+?)<\/p>/
 names = /<b>(.+?)<\/b>/
 stringHtmlQ1.scan(items) do |item|
    puts item
 end
 
 stringHtmlQ1.scan(names) do |name|
 	puts name
 end
 
 #Q2
 stringHtmlQ2 = 
 "<html>
 <body>
 <p><a href="zipcode.php?pref=13&city=1131160&id=49058">minami ikebukuro</a></p>
 <p><a href="zipcode.php?pref=14&city=1131161&id=49059">minami ootsuka</a></p>
 <p><a href="zipcode.php?pref=15&city=1131162&id=49060">minami nagasaki</a></p>
 <p><a href="zipcode.php?pref=16&city=1131163&id=49061">mejiro</a></p>
 </body>
 </html>"
 
 cities = /<a.*>(.+?)<\/a>/
 stringHtmlQ2.scan(cities) do |city|
   puts city
 end
 
 prefValue = /<a.*pref=(.*)&c.*>.*<\/a>/
 stringHtmlQ2.scan(prefValue) do |preVal|
 	puts preVal
 end
 
 cityValue = /<a.*city=(.*)&id.*>.*<\/a>/
 stringHtmlQ2.scan(cityValue) do |cityVal|
 	puts cityVal
 end
