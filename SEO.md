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
      <link rel="alternate" href="http://example.com" hreflang="en-us" /
      ``
    - recent updates (new sites)- sitemap variations, for new sites we can use special variations for sitemaps. 
      
    
- A sitemap is a file where you provide information about the pages, videos, and other files on your site, and the relationships between them. Search engines like Google read this file to crawl your site more efficiently. A sitemap tells Google which pages and files you think are important in your site, and also provides valuable information about these files. For example, when the page was last updated and any alternate language versions of the page.
- **React** does not have a built-in way to generate sitemaps. If you are using something like React Router to handle routing, you can find tools that can generate a sitemap though it may require some effort.
    - A sitemap video entry can specify the video running time, rating, and age-appropriateness rating.
    - A sitemap image entry can include the location of the images included in a page.
    - A sitemap news entry can include the article title and publication date.

