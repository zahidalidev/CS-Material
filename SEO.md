# SEO

## Empty First-pass Content
- We know React applications rely heavily on JavaScript, and they often run into problems with search engines. This is because React employs an app shell model by default. The initial HTML does not contain any meaningful content, and a user or a bot must execute JavaScript to see the page’s actual content.
- This approach means that Googlebot detects an empty page during the first pass. The content is seen by Google only when the page is rendered. This will delay the indexing of content when dealing with thousands of pages.

## Loading Time and User Experience
- Fetching, parsing, and executing JavaScript takes time. Further, JavaScript may need to make network calls to fetch the content, and the user may need to wait a while before they can view the requested information.
- Google has laid out a set of web vitals related to user experience, used in its ranking criteria. A longer loading time may affect the user experience score, prompting Google to rank a site lower.

<hr />

## Page Metadata
- A meta description is a short snippet, a description tag in HTML, that summarizes a webpage’s content. On a search engine results page (SERP), the meta description appears under the page title and URL.
- **WHY** To increase the chances of your content being located in response to a search engine request, add appropriate metadata, such as a search engine title, description, keywords, copyright and event dates.
- **WHAT DO** The main purpose of a page’s meta description is to get the visitors from SERPs and social media to click the link to your page. In essence, it attracts users and generates traffic to your page! 
- It's a crucial component of on-page SEO, which is why you need to understand its optimization best practices.
![ezgif com-gif-maker (2)](https://user-images.githubusercontent.com/46484008/189190349-e0a3b2fa-d670-461c-a57b-0eaa54ef096f.png)
- Search engines show the meta description in search result listing mostly when the searched for phrase is contained in the description. In the example above, for example, you see the word "gifts" is in bold. This is because "gifts" was the searched for query.
- **LENGTH** Google bases meta description lengths based on pixels, so the limit on desktop is 920 pixels, which is roughly 158 characters, and 680 pixels on mobile, which is roughly 120 characters. 
- The meta description snippet is also show when a piece of content is shared on social media.
- **Where to add** In the HTML code, a meta description tag looks like this:
```
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="A page's description, one or two sentences."/>
  </head>
</html>
```
- The meta description, if written well, helps improve click-through rate (CTR) to your site from the SERPs.
- **WHY IMPORTANT?** The meta description, if written well, helps improve click-through rate (CTR) to your site from the SERPs. Google says that the meta description doesn't lead to direct page rank benefits, but there is an indirect benefit, as a well-written meta description will increase CTR, and Google may use this user-controlled metric to determine a page's rank position.

### How to Write Meta Descriptions for SEO
- A good meta description prioritizes the user experience and has the following three features:
    - **Answers these user questions**: “What is the page about?” and “Why is my page the best choice for the search?" 
    - **Includes the primary keyword the page aims to rank for**. Including the target keyword here is an on-page optimization opportunity. 
    - **Uses benefits-focused content**. Tell the reader what they'll get from clicking on your listing.
### Best Practices When Writing Meta Descriptions
- Attain 158 characters and no longer on desktop and 120 characters on mobile.
- Use action-oriented language. It gets clicks!
- Make it specific and relevant. Put that keyword in and don't create duplicate meta descriptions!
- Don't deceive users. Include what the user will find on the page, you don't want to lose users trust!
- Provide a solution or benefit. Create value!
- **Avoid**
    - Don't stuff keywords. Repeating your keyword 9 times will get you penalized.
    - Don’t copy and paste a large block of content from the page or post as the meta description.
    - Don’t use the same description on more than one page or post.
 
 <hr />
 
## Sitemap
- Sitemap is a signal about which URLs you would like google to crawl on your site. it may provide information on URLs that were recently created or modified and give some extra information about them. Google support four main ways to provide additional information.
    - images- URL extension, you can extend a URL with images included in it.
    - videos- URL extension, you can extend a URL with videos included in it.
    - languages/country versions
    - language/country versions -hreflang annotations- you can include information about alternate languages, the hreflang attribute (also referred to as rel="alternate" hreflang="x") tells Google which language you are using on a specific page, so the search engine can serve that result to users searching in that language. **Where to put hreflang**, The hreflang attribute can be placed in the on-page markup, the HTTP header, or the sitemap. Only use one of those locations. If you choose the sitemap, this tool can help you.
      ```
      <link rel="alternate" href="https://edition.cnn.com" hreflang="en-us">
      ```
      ![image](https://user-images.githubusercontent.com/46484008/189232984-b5882a5a-bbe3-4656-9a9e-ceac4807b798.png)
    - recent updates (new sites)- sitemap variations, for new sites we can use special variations for sitemaps. 
      
    
- A sitemap is a file where you provide information about the pages, videos, and other files on your site, and the relationships between them. Search engines like Google read this file to crawl your site more efficiently. A sitemap tells Google which pages and files you think are important in your site, and also provides valuable information about these files. For example, when the page was last updated and any alternate language versions of the page.
- **React** does not have a built-in way to generate sitemaps. If you are using something like React Router to handle routing, you can find tools that can generate a sitemap though it may require some effort.
    - A sitemap video entry can specify the video running time, rating, and age-appropriateness rating.
    - A sitemap image entry can include the location of the images included in a page.
    - A sitemap news entry can include the article title and publication date.

- **HELPFUl WHEN** 
    - Your site is really large
    - your pages are isolated
    - your site is new/changes quickly, such as news website
- **Do we need a sitemap?** If your site's pages are properly linked, Google can usually discover most of your site. Proper linking means that all pages that you deem important can be reached through some form of navigation, be that your site's menu or links that you placed on pages. Even so, a sitemap can improve the crawling of larger or more complex sites, or more specialized files.

### Create sitemap
- [Create sitemap](https://developers.google.com/search/docs/advanced/sitemaps/build-sitemap#sitemapformat)
- XML, [Complex Sitemaps examples ](https://www.sitemaps.org/protocol.html), Here is a very basic XML sitemap that includes the location of a single URL:
  ```
  <?xml version="1.0" encoding="UTF-8"?>
  <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <url>
      <loc>http://www.example.com/foo.html</loc>
      <lastmod>2018-06-04</lastmod>
    </url>
  </urlset>
  ```
 ### Submit sitemap
 - Google doesn't check a sitemap every time a site is crawled; a sitemap is checked only the first time that we notice it, and thereafter only when you ping us to let us know that it's changed. Alert Google about a sitemap only when it's new or updated; don't submit or ping unchanged sitemaps multiple times.
 - Make your sitemap available to Google by adding it to your robots.txt file or directly submitting it to Search Console.
 - [Submit sitemap](https://developers.google.com/search/docs/advanced/sitemaps/build-sitemap#addsitemap:~:text=large%20sitemaps.-,Submit%20your%20sitemap%20to%20Google,-Google%20doesn%27t%20check)
### Split up your large sitemaps
- If you have a sitemap that's larger than 50MB, you'll need to split up your large sitemap into multiple sitemaps. You can use a sitemap index file as a way to submit many sitemaps at once. The XML format of a sitemap index file is very similar to the XML format of a sitemap file. The sitemap index file uses the following XML tags:
    - **sitemapindex** - the parent tag surrounds the file.
    - **sitemap** - the parent tag for each sitemap listed in the file (a child of the sitemapindex tag)
    - **loc** - the location of the sitemap (a child of the sitemap tag)
```
<?xml version="1.0" encoding="UTF-8"?>
<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <sitemap>
    <loc>http://www.example.com/sitemap1.xml.gz</loc>
  </sitemap>
  <sitemap>
    <loc>http://www.example.com/sitemap2.xml.gz</loc>
  </sitemap>
</sitemapindex>
```
### Video sitemaps
- A video sitemap is a sitemap with additional information about video hosted on your pages. Creating a video sitemap is an excellent way to help Google find and understand the video content on your site, especially content that was recently added or that we might not otherwise discover with our usual crawling mechanisms. A video sitemap is an extension to the Sitemap protocol.
```
<url>
  <!-- URL of the host page -->
  <loc>https://example.com/mypage</loc>
  <!-- Information about video 1, like the title and URL for the video's media file -->
  <video:video>
    <video:title>Grilling steaks for summer</video:title>
    <video:content_loc>
      http://streamserver.example.com/video123.mp4</video:content_loc>
  </video:video>
  <!-- As many additional <video> entries as you need -->
  <video></video>
</url>
```

### Image sitemaps
- Add images to an existing sitemap, or create a separate sitemap just for your images. Adding images to a sitemap helps Google discover images that we might not otherwise find (such as images your site reaches with JavaScript code).
```
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:image="http://www.google.com/schemas/sitemap-image/1.1">
  <url>
    <loc>http://example.com/sample1.html</loc>
    <image:image>
      <image:loc>http://example.com/image.jpg</image:loc>
    </image:image>
    <image:image>
      <image:loc>http://example.com/photo.jpg</image:loc>
    </image:image>
  </url>
  <url>
    <loc>http://example.com/sample2.html</loc>
    <image:image>
      <image:loc>http://example.com/picture.jpg</image:loc>
    </image:image>
  </url>
</urlset>
```

### Google News sitemaps
- Only include URLs for articles that were published in the last two days. Once the articles are older than two days, either remove those URLs from the News sitemap or remove the <news:news> metadata from the older URLs. The articles will remain in the index for the regular 30-day period.
- If you choose the method of removing old URLs from your News sitemap, this could mean that your sitemap becomes empty for a period of time (for example, if you haven't published new articles in the last few days). You may see an Empty Sitemap warning in Search Console, but this is just to make sure it was intentional on your behalf. It will not cause any problems with Google Search if the file is empty.
- Update your News sitemap with new articles as they're published. Don't create a new sitemap with each update. Google News crawls News sitemaps as often as it crawls the rest of your site.
- You can add up to 1,000 URLs in a News sitemap. If there are more than 1,000 URLs in a News sitemap, break your sitemap into several smaller sitemaps, and use a sitemap index file to manage them as defined by the sitemap protocol. Since News sitemaps are crawled more often than web sitemaps, this limit ensures that your site isn't unnecessarily overloaded.
```
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:news="http://www.google.com/schemas/sitemap-news/0.9">
  <url>
   <loc>http://www.example.org/business/article55.html</loc>
   <news:news>
   <news:publication>
     <news:name>The Example Times</news:name>
     <news:language>en</news:language>
   </news:publication>
   <news:publication_date>2008-12-23</news:publication_date>
     <news:title>Companies A, B in Merger Talks</news:title>
    </news:news>
  </url>
</urlset>
```

<hr />

## robots.txt
- A robots.txt file tells search engine crawlers which URLs the crawler can access on your site. This is used mainly to avoid overloading your site with requests; it is not a mechanism for keeping a web page out of Google. To keep a web page out of Google, block indexing with noindex or password-protect the page.

### used for?
- A robots.txt file is used primarily to manage crawler traffic to your site, and usually to keep a file off Google, depending on the file type:

### robots.txt effect on different file types
- **Web page** You can use a robots.txt file for web pages (HTML, PDF, or other non-media formats that Google can read), to manage crawling traffic if you think your server will be overwhelmed by requests from Google's crawler, or to avoid crawling unimportant or similar pages on your site.	If the page is blocked by the robot.txt,its URL can still appear in searh results but the search result will not have description, images, videos, PDFs, and other nont-HTML files will be excluded.
- **Media file** Use robots.txt to manage crawl traffic and also to prevent images, videos, and audio files from appearing in google search search results.
- **Resource file** You can use a robots.txt file to block resource files such as unimportant image, script, or style files, if you think that pages loaded without these resources will not be significantly affected by the loss. However, if the absence of these resources make the page harder for Google's crawler to understand the page, don't block them, or else Google won't do a good job of analyzing pages that depend on those resources.	

### limitations
- robots.txt directives may not be supported by all search engines.
    - While Googlebot and other respectable web crawlers obey the instructions in a robots.txt file, other crawlers might not. Therefore, if you want to keep information secure from web crawlers, it's better to use other blocking methods, such as password-protecting private files on your server.
- Different crawlers interpret syntax differently.
    - Although respectable web crawlers follow the directives in a robots.txt file, each crawler might interpret the directives differently. You should know the proper syntax for addressing different web crawlers as some might not understand certain instructions.
- A page that's disallowed in robots.txt can still be indexed if linked to from other sites
    - While Google won't crawl or index the content blocked by a robots.txt file, we might still find and index a disallowed URL if it is linked from other places on the web. To properly prevent your URL from appearing in Google search results, password-protect the files on your server, use the noindex meta tag or response header, or remove the page entirely.

### Create a robots.txt file
- A robots.txt file lives at the root of your site. So, for site www.example.com, the robots.txt file lives at www.example.com/robots.txt. robots.txt is a plain text file that follows the Robots Exclusion Standard. A robots.txt file consists of one or more rules. Each rule blocks or allows access for a given crawler to a specified file path on the domain or subdomain where the robots.txt file is hosted.
- sample file:
    ```
    User-agent: Googlebot
    Disallow: /nogooglebot/

    User-agent: *
    Allow: /

    Sitemap: http://www.example.com/sitemap.xml
    ```
    - The user agent named Googlebot is not allowed to crawl any URL that starts with http://example.com/nogooglebot/.
    - All other user agents are allowed to crawl the entire site. This could have been omitted and the result would be the same; the default behavior is that user agents are allowed to crawl the entire site.
    - The site's sitemap file is located at http://www.example.com/sitemap.xml.
### Format and location rules for robots.txt:
- The file must be named robots.txt.
- Site can have only one robots.txt
- robots.txt file must be located at the root of your project, for example https://website.example.com/robots.txt
- A robots.txt file applies only to paths within the protocol, host, and port where it is posted. That is, rules in https://example.com/robots.txt apply only to files in https://example.com/, not to subdomains such as https://m.example.com/, or alternate protocols, such as http://example.com/
- A robots.txt file must be an UTF-8 encoded text file. 

### Rules to the robots.txt file
- A robots.txt file consists of one or more groups.
- Each group consist of multple rules or instructions, each group begins with the **User-agent** line that specifies the target of the groups.
- Group give the following information
    - who the group applies to like user agent
    - which files agent can access and cannot access
- Crawlers process from top to bottom
- User agent can crawl any page that is not blocked by a **disallow** rule
- Rules are case-sensitive
- [Exmaple of valid robots.txt URLs](https://developers.google.com/search/docs/advanced/robots/robots_txt#examples-of-valid-robots.txt-urls)

### Upload the robots.txt file
- How you upload the robots.txt file to your site depends on your site and server architecture. Look for the documentation of your hosting company; for example, search for "upload files infomaniak".
- After you upload the robots.txt file, test whether it's publicly accessible and if Google can parse it.
- To test whether your newly uploaded robots.txt file is publicly accessible, open a private browsing window (or equivalent) in your browser and navigate to the location of the robots.txt file. For example, https://example.com/robots.txt. If you see the contents of your robots.txt file, you're ready to test the markup.

### Submit robots.txt file to Google
- Once you uploaded and tested your robots.txt file, Google's crawlers will automatically find and start using your robots.txt file. You don't have to do anything.

### Update your robots.txt file
- Download your robots.txt file
- copy the content by navigating like https://example.com/robots.txt or using curl 'curl https://example.com/robots.txt -o robots.txt' and create new file robots.txt and upload the file at root of your project, and Google's crawlers will notice changes you made to your robots.txt file and update the cached version every 24 hours. 

### How Google interprets the robots.txt specification
- Google's automated crawlers support the Robots Exclusion Protocol (REP). This means that before crawling a site, Google's crawlers download and parse the site's robots.txt file to extract information about which parts of the site may be crawled.

### Caching
- Google generally caches the contents of robots.txt file for up to 24 hours, but may cache it longer in situations where refreshing the cached version isn't possible (for example, due to timeouts or 5xx errors). The cached response may be shared by different crawlers. Google may increase or decrease the cache lifetime based on max-age Cache-Control HTTP header

### Meta Robots tag vs Robots.txt
- The Meta tag option tells bots not to index individual files, whereas Robots.txt can be used to restrict access to entire directories.
- Robots.txt files are best for disallowing a whole section of a site, such as a category whereas a meta tag is more efficient at disallowing single files and pages. You could choose to use both a meta robots tag and a robots.txt file as neither has authority over the other, but “noindex” always has authority over “index” requests.
- Sure, use a Meta tag if you have the odd page in indexed folders that you want skipping, but generally, I'd recommend you most of your non-indexed content in one or more folders and use robots.txt to skip the lot.

<hr />

## Crawler Management
### Reduce the Googlebot crawl rate
- Google has sophisticated algorithms to determine the optimal crawl rate for a site. And goal is to crawl as many pages from the site as google can on each visit without overwhelming the server's bandwidth. In some cases, Google's crawling of your site might be causing a critical load on your infrastructure, or cause unwanted costs during an outage. To alleviate this, you may decide to reduce the number of requests made by Googlebot.
- To reduce the reduce the Googlebot crawl rate, here are some options:
    - **Reduce crawl rate with Search Console (recommended)** To quickly reduce the crawl rate, you can change the Googlebot crawl rate in Search Console. Changes made to this setting are generally reflected within days. To use this setting, first verify your site ownership. Make sure that you avoid setting the crawl rate to a value that's too low for your site's needs. Learn more about what crawl budget means for Googlebot.If the Crawl Rate Settings is unavailable for your site, file a special request to reduce the crawl rate. You cannot request an increase in crawl rate.
    - **Let Google reduce the crawl rate automatically** If you need to urgently reduce the crawl rate for short period of time (for example, a couple of hours, or 1-2 days), then return an informational error page with a 500, 503, or 429 HTTP response status code instead of all content. Googlebot reduces your site's crawling rate when it encounters a significant number of URLs with 500, 503, or 429 HTTP response status codes (for example, if you disabled your website). The change is reflected both in the crawling of the URLs that return these errors, as well as the website overall. Once the number of these errors is reduced, the crawl rate will automatically start increasing again. 
### Verifying Googlebot and other Google crawlers
- You can verify if a web crawler accessing your server really is a Google crawler, such as Googlebot. This is useful if you're concerned that spammers or other troublemakers are accessing your site while claiming to be Googlebot.
- There are two methods for verifying Google's crawlers:
    - **Manually**: For one-off lookups, use command line tools. This method is sufficient for most use cases.
    - **Automatically**: For large scale lookups, use an automatic solution to match a crawler's IP address against the list of published Googlebot IP addresses.
    - **Manually** Use command line tools
        - 1. Run a reverse DNS lookup on the accessing IP address from your logs, using the host command.
        - 2. Verify that the domain name is either googlebot.com or google.com.
        - 3. Run a forward DNS lookup on the domain name retrieved in step 1 using the host command on the retrieved domain name.
        - 4. Verify that it's the same as the original accessing IP address from your logs.
          ```
            $ host 66.249.66.1
            1.66.249.66.in-Aaddr.arpa domain name pointer crawl-66-249-66-1.googlebot.com.

            $ host crawl-66-249-66-1.googlebot.com
            crawl-66-249-66-1.googlebot.com has address 66.249.66.1
          ```
    - **Automatic** We can identify Googlebot by IP address by matching the crawler's IP address to the [list of Googlebot IP addresses](https://developers.google.com/static/search/apis/ipranges/googlebot.json). For other Google IP addresses from where your site may be accessed (for example, by user request or Apps Scripts), match the accessing IP address against the list of Google IP addresses.

### General theory of crawling
- The web is a nearly infinite space, exceeding Google's ability to explore and index every available URL. As a result, there are limits to how much time Googlebot can spend crawling any single site. The amount of time and resources that Google devotes to crawling a site is commonly called the **site's crawl budget**. Note that not everything crawled on your site will necessarily be indexed; each page must be evaluated, consolidated, and assessed to determine whether it will be indexed after it has been crawled.
- Crawl budget is determined by two main elements: crawl capacity limit and crawl demand.
    - **Crawl capacity limit** Googlebot wants to crawl your site without overwhelming your servers. To prevent this, Googlebot calculates a crawl capacity limit, which is the maximum number of simultaneous parallel connections that Googlebot can use to crawl a site, as well as the time delay between fetches. This is calculated to provide coverage of all your important content without overloading your servers. The crawl capacity limit can go up and down based on a few factors:
        - **Crawl health**: If the site responds quickly for a while, the limit goes up, meaning more connections can be used to crawl. If the site slows down or responds with server errors, the limit goes down and Googlebot crawls less.
        - **Limit set by site owner in Search Console**: Website owners can optionally reduce Googlebot's crawling of their site. Note that setting higher limits won't automatically increase crawling.
        - **Google's crawling limits**: Google has a lot of machines, but not infinite machines. We still need to make choices with the resources that we have.            
    - **Crawl demand** Google typically spends as much time as necessary crawling a site, given its size, update frequency, page quality, and relevance, compared to other sites. Additionally, site-wide events like site moves may trigger an increase in crawl demand in order to reindex the content under the new URLs. The factors that play a significant role in determining crawl demand are:
        - **Perceived inventory**: Without guidance from you, Googlebot will try to crawl all or most of the URLs that it knows about on your site. If many of these URLs are duplicates, or you don't want them crawled for some other reason (removed, unimportant, and so on), this wastes a lot of Google crawling time on your site. This is the factor that you can positively control the most.
        - **Popularity**: URLs that are more popular on the Internet tend to be crawled more often to keep them fresher in our index.
        - **Staleness**: Our systems want to recrawl documents frequently enough to pick up any changes. 
- Taking crawl capacity and crawl demand together, Google defines a site's crawl budget as the set of URLs that Googlebot can and wants to crawl. Even if the crawl capacity limit isn't reached, if crawl demand is low, Googlebot will crawl your site less.
### Best practices
- **Manage your URL inventory** Use the appropriate tools to tell Google which pages to crawl and which not to crawl. If Google spends too much time crawling URLs that aren't appropriate for the index, Googlebot might decide that it's not worth the time to look at the rest of your site (or increase your budget to do so).
    - **Consolidate duplicate content**: Eliminate duplicate content to focus crawling on unique content rather than unique URLs.
    - **Block crawling of URLs using robots.txt**: Some pages might be important to users, but you don't necessarily want them to appear in Search results. For example, infinite scrolling pages that duplicate information on linked pages, or differently sorted versions of the same page. If you can't consolidate them as described in the first bullet, block these unimportant (for search) pages using robots.txt. Blocking URLs with robots.txt significantly decreases the chance the URLs will be indexed.
    - **Return a 404 or 410 status code** for permanently removed pages. Google won't forget a URL that it knows about, but a 404 status code is a strong signal not to crawl that URL again. Blocked URLs, however, will stay part of your crawl queue much longer, and will be recrawled when the block is removed.  
    - **Eliminate soft 404 errors**. soft 404 pages will continue to be crawled, and waste your budget. Check the Index Coverage report for soft 404 errors. (A **soft 404 error** is when a URL that returns a page telling the user that the page does not exist and also a 200 (success) status code. In some cases, it might be a page with no main content or empty page.)
    - **Keep your sitemaps up to date**. Google reads your sitemap regularly, so be sure to include all the content that you want Google to crawl. If your site includes updated content, we recommend including the <lastmod /> tag. 
    - **Monitor your site crawling**. Monitor whether your site had any availability issues during crawling, and look for ways to make your crawling more efficient.
