# SEO

## Empty First-pass Content
- We know React applications rely heavily on JavaScript, and they often run into problems with search engines. This is because React employs an app shell model by default. The initial HTML does not contain any meaningful content, and a user or a bot must execute JavaScript to see the page’s actual content.
- This approach means that Googlebot detects an empty page during the first pass. The content is seen by Google only when the page is rendered. This will delay the indexing of content when dealing with thousands of pages.

## Loading Time and User Experience
- Fetching, parsing, and executing JavaScript takes time. Further, JavaScript may need to make network calls to fetch the content, and the user may need to wait a while before they can view the requested information.
- Google has laid out a set of web vitals related to user experience, used in its ranking criteria. A longer loading time may affect the user experience score, prompting Google to rank a site lower.

## Page Metadata
- A meta description is a short snippet, a description tag in HTML, that summarizes a webpage’s content. On a search engine results page (SERP), the meta description appears under the page title and URL.
- **WHY** To increase the chances of your content being located in response to a search engine request, add appropriate metadata, such as a search engine title, description, keywords, copyright and event dates.
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
