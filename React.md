### What is JSX <!-- const element = <h1>Hello, world!</h1>; -->
- JSX is not a string not HTML, JSX stand for JavaScript XML. It is simply a syntax extension of javascript. It allows us to directly write HTML
in react (within javascript code). Instead of separating the markup and logic in separated files, React uses components for this purpose.
- At build time the JSX is compiled into imperative JavaScript code. At runtime this code is loaded into the browser and executed. Both Babel and
TypeScript can compile JSX into JavaScript. Therefore it integrates easily into a modern JavaScript build setup where either Babel or TypeScript are typically used.
- JSX is an Expression Too: After compilation, JSX expressions become regular JavaScript function calls and evaluate to JavaScript objects.
 
### Babel in React
-  With JSX, it is easy to define UI components in React. JSX should not be implemented directly by browsers, but instead requires a compiler to transform it into ECMAScript. This is where Babel comes in. Babel acts as this compiler allowing us to leverage all the benefits of JSX while building React components.'
- Babel is a toolchain that is mainly used to convert ECMAScript 2015+ code into a backwards compatible version of JavaScript in current and older browsers or environments.
- React doesn't "need" babel or webpack but the library is built on the concept of using ES6 javascript syntax and JSX (essentially HTML in JS). React however can be used without ES6 and JSX which would remove the initial need for Babel but you would lose the potential benefits of ES6 and JSX.
- Babel is a JavaScript transpiler that converts edge JavaScript into plain old ES5 JavaScript that can run in any browser (even the old ones). It makes available all the syntactical sugar that was added to JavaScript with the new ES6 specification, including classes, fat arrows and multiline strings.
- Babel compiles JSX down to React.createElement() calls.

**These two examples are identical:**
```
const element = (
  <h1 className="greeting">
    Hello, world!
  </h1>
);

const element = React.createElement(
  'h1',
  {className: 'greeting'},
  'Hello, world!'
);
```
- React.createElement() performs a few checks to help you write bug-free code but essentially it creates an object like this:

```
// Note: this structure is simplified
const element = {
  type: 'h1',
  props: {
    className: 'greeting',
    children: 'Hello, world!'
  }
};
```
These objects are called “React elements”. You can think of them as descriptions of what you want to see on the screen. React reads these objects and uses them to construct the DOM and keep it up to date.

### escape
- The escape() function computes a new string in which certain characters have been replaced by a hexadecimal escape sequence. Note: This function was used mostly for URL queries (the part of a URL following ? ) —not for escaping ordinary String literals, which use the format " \xHH "

### Updateing React Element
- React elements are immutable. Once you create an element, you can’t change its children or attributes. An element is like a single frame in a movie: it represents the UI at a certain point in time.
- With our knowledge so far, the only way to update the UI is to create a new element, and pass it to ReactDOM.render().

### DOM (Document Object Model)
- The Document Object Model is a cross-platform and language-independent interface that treats an XML or HTML document as a tree structure wherein each node is an object representing a part of the document. The DOM represents a document with a logical tree.
- What is Real/Browser DOM? DOM stands for "Document Object Model". It represents the entire UI of the web application as a tree data structure. In simpler terms, it is a structural representation of the HTML elements of the web application.
- The virtual DOM (VDOM) is a programming concept where an ideal, or “virtual”, representation of a UI is kept in memory and synced with the “real” DOM by a library such as ReactDOM. This process is called reconciliation. ... They may also be considered a part of “virtual DOM” implementation in React.

### Pure Function
- Pure Function is a function (a block of code ) that always returns the same result if the same arguments are passed. It does not depend on any state, or data change during a program's execution rather it only depends on its input arguments.

### !!!!! All React components must act like pure functions with respect to their props.

### Super(props) in class constructor
- So to ensure that the React. Component 's constructor() function gets called, we call super(props) . super(props) is a reference to the parents constructor() function, that's all it is. We have to add super(props) every single time we define a constructor() function inside a class-based component

### Callback
- A callback function is a function passed into another function as an argument, which is then invoked inside the outer function to complete some kind of routine or action.
- A JavaScript callback is a function which is to be executed after another function has finished execution. A more formal definition would be - Any function that is passed as an argument to another function so that it can be executed in that other function is called as a callback function.

### useRef
- The useRef Hook allows you to persist values between renders. It can be used to store a mutable value that does not cause a re-render when updated. It can be used to access a DOM element directly.

### useCallback VS useMemo
- UseCallback is used to optimize the rendering behavior of your React function components, while useMemo is used to memoize expensive functions to avoid having to call them on every render.

### React’s Diffing Algorithm
- something warmer than plain old sentience: attention.
How is React so fast? So amenable? So receptive? The answer lies in the diffing algorithm, a sphinx whose beguiling riddle has confounded many a humble developer.
- React’s speed is a result of its virtual DOM. Behind the scenes, every time a change is made to a React app (such as calling setState(), the firing of an event handler, or sending an API request), React renders an entirely new virtual DOM from scratch. In keeping with JavaScript’s ontology, the Virtual DOM is itself — like everything else in the JavaScript world— a JavaScript object!
- At any given time, ReactJS maintains two virtual DOM, one with the updated state Virtual DOM and other with the previous state Virtual DOM.
- https://javascript.plainenglish.io/reacts-diffing-algorithm-1a64cfefa4e0

**The process**
- Each time render() is executed, React creates a virtual DOM object based on the JSX returned by render(). The virtual DOM is called “virtual” because it’s a replica of the real DOM — a lightweight JavaScript replica object representing the data structures and data of the component.
- Subsequently, each time render() is executed, a new version of the virtual DOM is created. This latest virtual DOM is compared with the immediately previous version, using a diffing algorithm.
- The diffing algorithm comes up with the minimum number of steps to update the real DOM, in O(n) time, making it really efficient. Based on whatever changes were detected by this diffing algorithm, a patch is created and scheduled to be applied to the real DOM.
- React considers dirty only those components for which the state/props changed.
- CD cycles are batched. This means that while React is busy updating the real DOM, all the CD requests that come in are batched together and are brought into effect only after the previous DOM update cycle has ended.

### What is Change Detection (CD)?
- CD is the process of detecting whether the application’s UI should be updated (and, if so, which parts to update) when changes to the underlying model come in through user interaction or through the network.

### npx
- The npx stands for Node Package Execute and it comes with the npm, when you installed npm above 5.2.0 version then automatically npx will installed. It is an npm package runner that can execute any package that you want from the npm registry without even installing that package.

### State and Props
- https://medium.com/@ahmedwasim777/how-react-works-part-2-32414f5e1a66

### Iterators
- In JavaScript an iterator is an object which defines a sequence and potentially a return value upon its termination.
Specifically, an iterator is any object which implements the Iterator protocol by having a next() method that returns an object with two properties:
value
The next value in the iteration sequence.
done
This is true if the last value in the sequence has already been consumed. If value is present alongside done, it is the iterator's return value.
- For a function to implement the iterator protocol, it must return an object with a next function. This next function returns an object with the attributes value and done.

### Generators
- Generators are special JavaScript functions that implement the iterator protocol.
- A generator is a function that can stop midway and then continue from where it stopped. In short, a generator appears to be a function but it behaves like an iterator.
- A generator is a process that can be paused and resumed and can yield multiple values. A generator in JavaScript consists of a generator function, which returns an iterable Generator object.

### Styled Components
- Styled-components is a library built for React and React Native developers. It allows you to use component-level styles in your applications. Styled-components leverage a mixture of JavaScript and CSS using a technique called CSS-in-JS
- styled-components is the result of wondering how we could enhance CSS for styling React component systems. By focusing on a single use case we managed to optimize the experience for developers as well as the output for end users.
- Automatic critical CSS: styled-components keeps track of which components are rendered on a page and injects their styles and nothing else, fully automatically. Combined with code splitting, this means your users load the least amount of code necessary.
- No class name bugs
- Easier deletion of CSS: it can be hard to know whether a class name is used somewhere in your codebase. styled-components makes it obvious, as every bit of styling is tied to a specific component
- Simple dynamic styling
- Painless maintenance

### Fetch VS Axios
- Axios is a Javascript library used to make http requests from node.js or XMLHttpRequests from the browser and it supports the Promise API that is native to JS ES6. Another feature that it has over .fetch() is that it performs automatic transforms of JSON data.
- If you use .fetch() there is a two-step process when handing JSON data. The first is to make the actual request and then the second is to call the .json() method on the response.
```
const url = 'https://api.spotify.com/v1/artists/0OdUWJ0sBjDrqHygGUXeCF'

fetch(url).then(response => response.json()).then(data => console.log(data));

axios.get(url).then(response => console.log(response));
```
- The second issue with .fetch() is that in case of error it excecute 'then(res => console.log(res))' block insead of 'catch(error => console.log(error))' block
- So Axios automatically convert the response to JSON and handle the error in catch block.

### API
- An API (application program interface) is a set of rules that enables different programs to communicate with one another. It outlines the appropriate way for a software developer to compose a program on a server that communicates with various client applications.

### 46- REST
- Representational State Transfer, it means server will transfer a representation of requested resource's state to the client system. it is basically architecture style which is stateless and works only on HTTP. REST works with plain text, XML, HTML and JSON.

### 47- SOAP
- Simple Object Access Prtocol is basically a messaging protocol which is used for exchanging structured data in the implementation of web services in computer network. SOAP provide excellent data security and retry logic to compensate unsuccessful communications. This works only with XML format.

### REST (Representational State Transfer Application) & SOAP (Simple Object Access Protocol) API
- It means when a RESTful API is called, the server will transfer a representation of the requested resource’s state to the client system
- SOAP is a messaging protocol specification for exchanging structured information (data) in the implementation of web services in computer networks.
- Typical data transfer protocols, such as SOAP (Simple Object Access Protocol), offer excellent data security and integrity capabilities. Moreover, SOAP offers in-built retry logic to compensate for unsuccessful communications. But such protocols are also tough to work with. RESTful API is a simpler alternative that has developed exponentially in the past few years. People often get confused regarding REST standards. Compared to SOAP, older web services, REST is more flexible and easy to implement.
- SOAP only works with XML formats whereas REST work with plain text, XML, HTML and JSON.
- SOAP cannot make use of REST whereas REST can make use of SOAP.
- SOAP is a protocol whereas REST is an architectural pattern.
- SOAP is standerized protcol with predefined rules to follow.
- Stateless but we can make it statefull
- SOAP: API calls cannot be cached
- SOAP require more bandwith and computing power
- SOAP works on HTTP, UDP, SMTP and others
- REST is architecturel style with loose guidelines and recommendations
- REST is stateless
- REST API calls can be cached
- REST require fewer resources
- REST works only on HTTP

### HTTP & TCP
- As a request-response protocol, HTTP gives users a way to interact with web resources such as HTML files by transmitting hypertext messages between clients and servers. HTTP clients generally use Transmission Control Protocol (TCP) connections to communicate with servers.
- HTTP is a protocol designed for the exchange of files between remote devices, specifically adapted for web contents. You surf websites using HTTP. A web service is an application that runs on top of HTTP. It is like a website intended to be read from other applications rather than humans.
- HTTP requests are messages sent by the client to initiate an action on the server. Their start-line contain three elements: An HTTP method, a verb (like GET , PUT or POST ) or a noun (like HEAD or OPTIONS ), that describes the action to be performed.
- TCP is used for organizing data in a way that ensures the secure transmission between the server and client. It guarantees the integrity of data sent over the network, regardless of the amount. For this reason, it is used to transmit data from other higher-level protocols that require all transmitted data to arrive.

### static routes vs dynamic routing
 “Static Routing” you declare your routes as part of your app's initialisation before any rendering takes place (Rails, Express, Ember, Angular, and so on). “Dynamic Routing” means that routing takes place as your app is rendering, not in a configuration or convention outside of a running app.
 - The main difference between static vs. dynamic routing is the time at which the routing takes place. In dynamic routing, routes are initialized dynamically when the page gets rendered.
- Dynamic routing allows rendering your React components conditionally.
- dynamic route: /api/v1/posts/:id

### react-router-dom vs react-router
If you are writing an application that will run in the browser, you should instead install react-router-dom. Similarly, if you are writing a React Native application, you should instead install react-router-native. Both of those will install react-router as a dependency.

### Lexical vs Closure Scope in JS
- https://www.freecodecamp.org/news/javascript-closure-lexical-scope/

### Debouncing 
- A Debouncing Events in ReactJS will allow you to call a function that ensures that a time-consuming task does not fire so often. It's a function that takes a function as a parameter and wraps that function in a closure and returns it so this new function displays the “wait for a bit” behavior.

### Throttling
- Throttling or sometimes is also called throttle function is a practice used in websites. Throttling is used to call a function after every millisecond or a particular interval of time only the first click is executed immediately.

### Debouncing vs Throttling
- Throttling: the original function will be called at most once per specified period. Debouncing: the original function will be called after the caller stops calling the decorated function after a specified period.

### suspense 
- React Suspense is a React component that suspends a component('s) being render until a certain condition has been met, and will display a fallback option. This fallback option is required, and it may be a string or another React component such as a spinner.
- It lets data fetching libraries deeply integrate with React.
- It doesn’t say how the data is fetched, but it lets you closely control the visual loading sequence of your app.
- It helps you avoid race conditions. 
- **race conditions** You would typically notice a race condition (in React) when two slightly different requests for data have been made, and the application displays a different result depending on which request completes first.

 
### WHAT IS MEMOIZATION?
- Memoization is optimization technique to speed up the rendering process of the components. It offers React.memo() and useMemo() to implement memoization.

### React.memo
- Performance optimization is an important factor in web development. React uses “memoization” as an optimization technique to speed up the rendering process of the components. It offers React.memo() and useMemo() to implement memoization.
- React.memo() was introduced with React 16.6 to avoid unnecessary re-renders in functional components. It is a higher-order component that accepts another component as a prop. It will only render the component if there is any change in the props.
- Suppose when any state changes in parent component than child component will also re-render even the state which is passed to child component is not changed.So we can use React.memo as a HOC to the child component like 
```
import React from "react"; 

//Child.jsexport 
function Child(props) { 
  console.log("Child Render"); 
  return ( 
    <div> 
      <h2>{props.name}</h2> 
    </div> 
  );
} 

export default React.memo(Child); //Add React.memo() HOC to the child component
```
here when we change the state of parent component, the child component won't be re-rendered, and the application will reuse the previous rendered output.
- In addition, React.memo() will shallowly compare complex objects in the props object. If you want more authority over the comparison, you can also pass a custom comparison function as the second argument as shown below:
```
export function Child(props) { 
  /* render using props */
 }
function areSame(prevProps, nextProps) { 
    /* return true if passing nextProps to render would return the same result as passing prevProps to render, otherwise return false */
 }

export default React.memo(Child, areSame);
```
- **WHEN** 
  - Components are rendered too frequently and slow down the application.
  - Component renders’ cost is high (When the loading time is more than 100ms).
  - Component keeps re-rendering for the same set of props. 

### What is useMemo()?
- useMemo() is one of the most used React Hooks among developers. It takes a function and a dependency array as input and memoizes the value returned by that function. The specialty of useMemo() is that it will only recalculate the memoized value when one of the dependencies changes. This optimization helps avoid costly calculations on each render.


### Diff between useMemo and React.memo
- Use React.memo to memoize an entire component.
- Use useMemo to memoize a value within a functional component.

<hr />

## New in React 18

###  Concurrent React
- https://www.freecodecamp.org/news/react-18-new-features/
- In a non-concurrent setting, we can only have one call at a time. Mean if we want to make two calls then 1st we can make 1st call and then end that call, and then have 2nd call. so before react 18, rendering was a single, uninterrupted, synchronous transaction and once rendering started, it couldn’t be interrupted.
- In React 18 we can have two calls at the same time it does not mean that we are attending both calls, becuase it's like we can start two calls at the same time but we can switch between them and can put one call on hold.
- Concurrency is a foundational update to React’s rendering mechanism. Concurrency allows React to interrupt rendering.
- React 18 introduces the foundation of concurrent rendering and new features such as suspense, streaming server rendering, and transitions are powered by concurrent rendering.

### Automatic Batching
- If there are multiple state updates then react batch them in an event handler and wait for a micro-task to finish before re-rendering and then re-render once. React 18 provide automating Batching which significantly reduces the re-renders. eg.
```
const handleClick = () => {
 setCounter();
 setActive();
 setValue();
}
```
- Before React 18, without automatic batching React compoenent re-render on every state update.
- Automatic batching is available out of the box in React, but if you want to opt-out you can use flushSync.

### Transitions
- Transitions can be used to mark UI updates that do not need urgent resources for updating. For example, when typing in a typeahead field, there are two things happening: a blinking cursor that shows visual feedback of your content being typed, and a search functionality in the background that searches for the data that is typed. Showing a visual feedback to the user is important and therefore urgent. Searching is not so urgent, and so can be marked as non-urgent. These non-urgent updates are called transitions. By marking non-urgent UI updates as "transitions", React will know which updates to prioritize. This makes it easier to optimize rendering and get rid of stale rendering.
- You can mark updates as non-urgent by using startTransition. Here is an example of what a typeahead component would like when marked with transitions:
```
import { startTransition } from 'react';

// Urgent: Show what was typed
setInputValue(input);

// Mark any non-urgent state updates inside as transitions
startTransition(() => {
  // Transition: Show the results
  setSearchQuery(input);
})
```
#### Transitions different from debouncing or setTimeout?
- StartTransition executes immediately, unlike setTimeout.
- setTimeout has a guaranteed delay, whereas startTransition's delay depends on the speed of the device, and other urgent renders.
- startTransition updates can be interrupted unlike setTimeout and won't freeze the page.
- React can track the pending state for you when marked with startTransition.

### Suspense on the server
- React 18 introduces:
  - Code splitting on the server with suspense
  - Streaming rendering on the server
 - In a client-rendered app, you load the HTML of your page from the server along with all the JavaScript that is needed to run the page, and make it interactive. If, however, your JavaScript bundle is huge, or you have a slow connection, this process can take a long time and the user will be waiting for the page to become interactive, or to see meaningful content. For optimizing the user experience and avoiding the user having to sit on a blank screen, we can use server rendering.
 - Server rendering is a technique where you render the HTML output of your React components on the server and send HTML from the server. This lets the user view some UI while JS bundles are loading and before the app becomes interactive. Server rendering further enhances the user experience of loading the page and reducing time to interactive. But if the most of the app is fast and one component is slow wo that will slow down the entire app. This is because server side rendering is all or nothing. We couldn’t tell React to defer loading of a slow component and couldn’t tell React to send HTML for other components. React 18 adds support for Suspense on server. With the help of suspense, you can wrap a slow part of your app within the Suspense component, telling React to delay the loading of the slow component. This can also be used to specify a loading state that can be shown while it's loading.
 - React 18 adds support for Suspense on server. With the help of suspense, you can wrap a slow part of your app within the Suspense component, telling React to delay the loading of the slow component. This can also be used to specify a loading state that can be shown while it's loading.
- In React 18, one slow component doesn’t have to slow the render of your entire app. With Suspense, you can tell React to send HTML for other components first along with the HTML for the placeholder, like a loading spinner. Then when the slow component is ready and has fetched its data, the server renderer will pop in its HTML in the same stream.
![Screenshot from 2022-09-30 03-36-47](https://user-images.githubusercontent.com/46484008/193154313-003b7816-8099-4a77-8edd-c86842b0b23a.png)
- This way the user can see the skeleton of the page as early as possible and see it gradually reveal more content as more pieces of HTML Arrive. All of this happens before any JS or React loads on the page, which significantly improves the user experience and user-perceived latency.

### Strict mode
- Strict mode in React 18 will simulate mounting, unmounting, and re-mounting the component with a previous state. This sets the ground for reusable state in the future where React can immediately mount a previous screen by remounting trees using the same component state before unmounting.
- Strict mode will ensure components are resilient to effects being mounted and unmounted multiple times.
