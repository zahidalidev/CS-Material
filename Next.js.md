# Next.js
- Next.js is a flexible React framework that gives you building blocks to create fast web applications.
- Next.js is a React framework that gives you building blocks to create web applications. By framework, we mean Next.js handles the tooling and configuration needed for React, and provides additional structure, features, and optimizations for your application.
- You can use React to build your UI, then incrementally adopt Next.js features to solve common application requirements such as routing, data fetching, integrations - all while improving the developer and end-user experience.
- Whether you’re an individual developer or part of a larger team, you can leverage React and Next.js to build fully interactive, highly dynamic, and performant web applications. 
- There are multiple ways to build applications with React. Next.js provides a framework to structure your application, and optimizations that help make both the development process and final application faster.
- https://nextjs.org/learn/foundations/from-react-to-nextjs/getting-started-with-nextjs

## Different stages in Next.js
- The environment where your code runs: **Development** vs. **Production**
- When your code runs: **Build Time** vs. **Runtime**
- Where rendering happens: **Client** vs. **Server**

## Development and Production Environments
- You can think of environments as the context in which your code is running. During development, you’re building and running the application on your local machine. Going to production is the process of making your application ready to be deployed and consumed by users.
- In the **development** stage, Next.js optimizes for the developer and their experience building the application. It comes with features that aim to improve the Developer Experience such the TypeScript and ESLint integration, Fast Refresh, and more.
- In the **production** stage, Next.js optimizes for the end-users, and their experience using the application. It aims to transform the code to make it performant and accessible.
- Since each environment has different considerations and goals, there is a lot that needs to be done to move an application from development to production. For instance, the application code needs to be compiled, bundled, minified, and code split.
### **Next.js** 
- handles much of these code transformations and underlying infrastructure to make it easier for your application to go to production. This is made possible because Next.js has a **compiler** written in Rust, a low-level programming language, and SWC, a platform that can be used for compilation, minification, bundling, and more.
### **Compilation**
- In Next.js, compilation happens during the development stage as you edit your code, and as part of the build step to prepare your application for production.
### **Minifying** 
- Minification is the process of removing unnecessary code formatting and comments without changing the code’s functionality. The goal is to improve the application’s performance by decreasing file sizes. In Next.js, JavaScript and CSS files are automatically minified for production.
### **Bundling** 
- Bundling is the process of resolving the web of dependencies and merging (or ‘packaging’) the files (or modules) into optimized bundles for the browser, with the goal of reducing the number of requests for files when a user visits a web page.
### **Splitting** 
- Code-splitting is the process of splitting the application’s bundle into smaller chunks required by each entry point. The goal is to improve the application's initial load time by only loading the code required to run that page. Next.js has built-in support for code splitting. Each file inside your pages/ directory will be automatically code split into its own JavaScript bundle during the build step. 

## Rendering
- There is an unavoidable unit of work to convert the code you write in React into the HTML representation of your UI. This process is called rendering.
- Rendering can take place on the server or on the client. It can happen either ahead of time at build time, or on every request at runtime.
- With Next.js, three types of rendering methods are available: Server-Side Rendering, Static Site Generation, and Client-Side Rendering.

### Pre-Rendering
- Server-Side Rendering and Static Site Generation are also referred to as Pre-Rendering because the fetching of external data and transformation of React components into HTML happens before the result is sent to the client.

### Client-Side Rendering vs. Pre-Rendering
- In a standard React application, the browser receives an empty HTML shell from the server along with the JavaScript instructions to construct the UI. This is called client-side rendering because the initial rendering work happens on the user's device.
- You can opt to use client-side rendering for specific components in your Next.js application by choosing to fetch data with React’s useEffect() or a data fetching hook such as useSWR.
- In contrast, Next.js pre-renders every page by default. Pre-rendering means the HTML is generated in advance, on a server, instead of having it all done by JavaScript on the user's device.
- In practice, this means that for a fully client-side rendered app, the user will see a blank page while the rendering work is being done. Compared to a pre-rendered app, where the user will see the constructed HTML:

### Server-Side Rendering
- With server-side rendering, the HTML of the page is generated on a server for each request. The generated HTML, JSON data, and JavaScript instructions to make the page interactive are then sent to the client.
- On the client, the HTML is used to show a fast non-interactive page, while React uses the JSON data and JavaScript instructions to make components interactive (for example, attaching event handlers to a button). This process is called **hydration**.
- In Next.js, you can opt to server-side render pages by using getServerSideProps.

### Static Site Generation
- With Static Site Generation, the HTML is generated on the server, but unlike server-side rendering, there is no server at runtime. Instead, content is generated once, at build time, when the application is deployed, and the HTML is stored in a CDN and re-used for each request.
- In Next.js, you can opt to statically generate pages by using getStaticProps.
- The beauty of Next.js is that you can choose the most appropriate rendering method for your use case on a page-by-page basis, whether that's Static Site Generation, Server-side Rendering, or Client-Side Rendering. 

## Network?
- It’s helpful to know where your application code is stored and run once it’s deployed to the network. You can think of the network as linked computers (or servers) capable of sharing resources. In the case of a Next.js application, your application code can be distributed to origin servers, Content Delivery Networks (CDNs), and the Edge. Let’s see what each of these are:

### Origin Servers
- As we discussed earlier, the server refers to the main computer that stores and runs the original version of your application code. We use the term origin to distinguish this server from the other places application code can be distributed to, such as CDN servers and Edge servers. When an origin server receives a request, it does some computation before sending a response. The result of this computation work can be moved to a CDN (Content Delivery Network)

### Content Delivery Network
- CDNs store static content (such as HTML and image files) in multiple locations around the world and are placed between the client and the origin server. When a new request comes in, the closest CDN location to the user can respond with the cached result.
- This reduces the load on the origin because the computation doesn’t have to happen on each request. It also makes it faster for the user because the response comes from a location geographically closer to them.
- In Next.js, since pre-rendering can be done ahead of time, CDNs are well suited to store the static result of the work - making content delivery faster.

### The Edge
- The Edge is a generalized concept for the fringe (or edge) of the network, closest to the user. CDNs could be considered part of "the Edge" because they store static content at the fringe (edge) of the network.
- Similar to CDNs, Edge servers are distributed to multiple locations around the world. But unlike CDNs, which store static content, some Edge servers can run code. This means both caching and code execution can be done at the Edge closer to the user.
- Pros of Edge: 1- Reduce load on a single server 2- Deliver content faster 3- Improve performance

## Problems with React
- Code has to be bundled using a bundler like webpack and transformed using a compiler like Babel.
- You need to do production optimizations such as code splitting.
- You might want to statically pre-render some pages for performance and SEO. You might also want to use server-side rendering or client-side rendering.
- You might have to write some server-side code to connect your React app to your data store.

## Features of Next.js
- An intuitive page-based routing system (with support for dynamic routes)
- Pre-rendering, both static generation (SSG) and server-side rendering (SSR) are supported on a per-page basis
- Automatic code splitting for faster page loads
- Client-side routing with optimized prefetching
- Built-in CSS and Sass support, and support for any CSS-in-JS library
- Development environment with Fast Refresh support
- API routes to build API endpoints with Serverless Functions
- Fully extendable

## Code splitting and prefetching, single and multipage (React & Next.js)
- **Next.js** does code splitting automatically, so each page only loads what’s necessary for that page. That means when the homepage is rendered, the code for other pages is not served initially. This ensures that the homepage loads quickly even if you have hundreds of pages. Only loading the code for the page you request also means that pages become isolated. If a certain page throws an error, the rest of the application would still work. Furthermore, in a production build of Next.js, whenever Link components appear in the browser’s viewport, Next.js automatically prefetches the code for the linked page in the background. By the time you click the link, the code for the destination page will already be loaded in the background, and the page transition will be near-instant!
- **React** is a Single Page Application (SPA) frontend framework. An intuitive definition of what this means is that your web app needs only 1 page load. However, an SPA can support the user experience of having "multiple pages", including changing the url path: e.g. www.app.com/home -> www.app.com/about.
