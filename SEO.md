# SEO

### Empty First-pass Content
- We know React applications rely heavily on JavaScript, and they often run into problems with search engines. This is because React employs an app shell model by default. The initial HTML does not contain any meaningful content, and a user or a bot must execute JavaScript to see the page’s actual content.
- This approach means that Googlebot detects an empty page during the first pass. The content is seen by Google only when the page is rendered. This will delay the indexing of content when dealing with thousands of pages.

### Loading Time and User Experience
- Fetching, parsing, and executing JavaScript takes time. Further, JavaScript may need to make network calls to fetch the content, and the user may need to wait a while before they can view the requested information.
- Google has laid out a set of web vitals related to user experience, used in its ranking criteria. A longer loading time may affect the user experience score, prompting Google to rank a site lower.

