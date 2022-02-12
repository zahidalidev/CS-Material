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
- The virtual DOM (VDOM) is a programming concept where an ideal, or “virtual”, representation of a UI is kept in memory and synced with the “real” DOM by a library such as ReactDOM. This process is called reconciliation. ... They may also be considered a part of “virtual DOM” implementation in React.

### Pure Function
- Pure Function is a function (a block of code ) that always returns the same result if the same arguments are passed. It does not depend on any state, or data change during a program's execution rather it only depends on its input arguments.

### !!!!! All React components must act like pure functions with respect to their props.

### Super(props) in class constructor
- So to ensure that the React. Component 's constructor() function gets called, we call super(props) . super(props) is a reference to the parents constructor() function, that's all it is. We have to add super(props) every single time we define a constructor() function inside a class-based component

### Callback
- A callback function is a function passed into another function as an argument, which is then invoked inside the outer function to complete some kind of routine or action.
- A JavaScript callback is a function which is to be executed after another function has finished execution. A more formal definition would be - Any function that is passed as an argument to another function so that it can be executed in that other function is called as a callback function.

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
- styled-components is the result of wondering how we could enhance CSS for styling React component systems. By focusing on a single use case we managed to optimize the experience for developers as well as the output for end users.
- Automatic critical CSS: styled-components keeps track of which components are rendered on a page and injects their styles and nothing else, fully automatically. Combined with code splitting, this means your users load the least amount of code necessary.
- No class name bugs
- Easier deletion of CSS: it can be hard to know whether a class name is used somewhere in your codebase. styled-components makes it obvious, as every bit of styling is tied to a specific component
- Simple dynamic styling
- Painless maintenance
