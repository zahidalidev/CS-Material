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
- 





## Problems with React
- Code has to be bundled using a bundler like webpack and transformed using a compiler like Babel.
- You need to do production optimizations such as code splitting.
- You might want to statically pre-render some pages for performance and SEO. You might also want to use server-side rendering or client-side rendering.
- You might have to write some server-side code to connect your React app to your data store.


