**Jest**
- Jest is a JavaScript unit testing framework, used by Facebook to test services and React applications.
- Jest acts as a test runner, assertion library, and mocking library.
- Jest also provides Snapshot testing, the ability to create a rendered ‘snapshot’ of a component and compare it to a previously saved ‘snapshot’. The test will fail if the two do not match. Snapshots will be saved for you beside the test file that created them in an auto-generate __snapshots__ folder. An example snapshot could be as simple as:
- Jest is a fully-featured testing framework. That means that it doesn't just help you test React components. Jest provides a test-running script that will run all your tests, as well as an entire assertion library

**Enzyme**
- Enzyme is a popular testing library from Airbnb. It provides us with mechanism to test the implementation details of a React component. It can provide us with access to the state, props and children components of a React component while writing test. We use such information about the React component to run our assertions.
- Enzyme is a JavaScript Testing utility for React that makes it easier to test your React Components’ output. You can also manipulate, traverse, and in some ways simulate runtime given the output.
- Enzyme is a JavaScript Testing utility for React that makes it easier to assert, manipulate, and traverse your React Components’ output.
- Enzyme, created by Airbnb, adds some great additional utility methods for rendering a component (or multiple components), finding elements, and interacting with elements.
- It must be installed in addition to tools already bundled with CRA.
- Enzyme allows you to access the internal workings of your components. You can read and set the state, and you can mock children to make tests run faster. On the other hand, react-testing-library doesn't give you any access to the implementation details.

**React Testing Library**
- React Testing Library is a light-weight testing library. It provides light utility functions on top of react-dom and react-dom/test-utils, in a way that encourages good testing practices.
- Unlike Enzyme, it is not focused on the implementation details of the component. React Testing Library uses the render logic to run our assertions. The testing is done from user’s perspective. That’s why this library doesn’t provide us the access to the component’s properties such as it’s state and props. The assertions are made from the DOM elements which can be accessed by the utility provided by React Testing Library.

**Jest and Enzyme**
- Both Jest and Enzyme are specifically designed to test React applications, Jest can be used with any other Javascript app but Enzyme only works with React.
- Jest can be used without Enzyme to render components and test with snapshots, Enzyme simply adds additional functionality.
- Enzyme can be used without Jest, however Enzyme must be paired with another test runner if Jest is not used.
- As described, we will use:
- Jest as the test runner, assertion library, and mocking library
- Enzyme to provide additional testing utilities to interact with elements
- ***Jest*** is a framework which includes a task runner, assertion library, and mocking support. This means it can execute different unit test cases, write its result in console or log files, create mocks, or verify all the assertions. In short, it will execute the test.
- ***Enzyme*** is not a test runner. It doesn't have its own assertion library. It just provides a collection of APIs for unit testing. That's why it could be integrated with Jest or any other task runner.
- Enzyme and Jest both have different responsibilities "Enzyme" is not a test runner meaning when u enter command npm test or npm run test it is jest responsibility that collects all the files ending with .test.js and run each test case and shows pass and fail results in your console
- https://medium.com/codeclan/testing-react-with-jest-and-enzyme-20505fec4675

**Enzyme and React Testing Library**
- In Enzyme, we are testing the component using the state and props of the component. This generally means that the tests are brittle. Lets take an example. Let’s say we have already written tests for a component and it is running fine. But what if someone changes the variable name of a state or a props in the component, then even if the functionality of the component hasn’t changed, our test fails. This kind of behavior demonstrate the brittleness of the test.
- Whereas in React Testing Library, we test the component from user’s perspective. Let’s say we want to test a drop down component, we won’t test the component according to it’s state and props. Instead we use the DOM elements to test it, just how the user interacts with it. One guiding principle we can find related to React Testing Library is: If it relates to rendering components, it deals with DOM nodes rather than component instances, nor should it encourage dealing with component instances.
- Enzyme allows you to access the internal workings of your components. You can read and set the state, and you can mock children to make tests run faster.
On the other hand, react-testing-library doesn't give you any access to the implementation details.
- react-testing-library is intended for blackbox integration/e2e tests. It uses React renderer and ReactTestUtils internally, requires real DOM because it's component's output that is asserted in tests, not internals. It doesn't provide facilities for isolated unit tests but it's possible to do this by mocking modules that contain component that need to be spied, mocked or stubbed by other means, notably jest.mock.

**Extra**
Here Enzyme and react-testing-library are two similar things and alternatives to each other means you can use
- enzyme with jest or
- react-testing-library with jest
- you can also use all three i.e react-testing-library+Enzyme with jest
- but you can not use Enzyme and react-testing-library without jest or any other test runner eg: Mocha
- where jest(testing-framework) will collect all .test.js files execute all the test cases and put the output in console with detail like how many pass and fail and react-testing-library or enzyme(both are testing library) will help you to perform event and accessing dom element
