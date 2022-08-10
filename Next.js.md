## Next.js
- Next.js is a flexible React framework that gives you building blocks to create fast web applications.
- Next.js is a React framework that gives you building blocks to create web applications. By framework, we mean Next.js handles the tooling and configuration needed for React, and provides additional structure, features, and optimizations for your application.
- You can use React to build your UI, then incrementally adopt Next.js features to solve common application requirements such as routing, data fetching, integrations - all while improving the developer and end-user experience.
- Whether you’re an individual developer or part of a larger team, you can leverage React and Next.js to build fully interactive, highly dynamic, and performant web applications. 
- There are multiple ways to build applications with React. Next.js provides a framework to structure your application, and optimizations that help make both the development process and final application faster.
- https://nextjs.org/learn/foundations/from-react-to-nextjs/getting-started-with-nextjs

### Different stages in Next.js
- The environment where your code runs: **Development** vs. **Production**
- When your code runs: **Build Time** vs. **Runtime**
- Where rendering happens: **Client** vs. **Server**

### Development and Production Environments
- You can think of environments as the context in which your code is running. During development, you’re building and running the application on your local machine. Going to production is the process of making your application ready to be deployed and consumed by users.
- In the **development** stage, Next.js optimizes for the developer and their experience building the application. It comes with features that aim to improve the Developer Experience such the TypeScript and ESLint integration, Fast Refresh, and more.
- In the **production** stage, Next.js optimizes for the end-users, and their experience using the application. It aims to transform the code to make it performant and accessible.
- Since each environment has different considerations and goals, there is a lot that needs to be done to move an application from development to production. For instance, the application code needs to be compiled, bundled, minified, and code split.
- **Next.js** handles much of these code transformations and underlying infrastructure to make it easier for your application to go to production. This is made possible because Next.js has a **compiler** written in Rust, a low-level programming language, and SWC, a platform that can be used for compilation, minification, bundling, and more.

#### Compilation
- In Next.js, compilation happens during the development stage as you edit your code, and as part of the build step to prepare your application for production.



### Problems with React
- Code has to be bundled using a bundler like webpack and transformed using a compiler like Babel.
- You need to do production optimizations such as code splitting.
- You might want to statically pre-render some pages for performance and SEO. You might also want to use server-side rendering or client-side rendering.
- You might have to write some server-side code to connect your React app to your data store.

