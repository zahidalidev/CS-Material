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





