**Jest**
- Jest is a JavaScript unit testing framework, used by Facebook to test services and React applications.
- Jest acts as a test runner, assertion library, and mocking library.
- Jest also provides Snapshot testing, the ability to create a rendered ‘snapshot’ of a component and compare it to a previously saved ‘snapshot’. The test will fail if the two do not match. Snapshots will be saved for you beside the test file that created them in an auto-generate __snapshots__ folder. An example snapshot could be as simple as:

**Enzyme**
- Enzyme is a JavaScript Testing utility for React that makes it easier to assert, manipulate, and traverse your React Components’ output.
- Enzyme, created by Airbnb, adds some great additional utility methods for rendering a component (or multiple components), finding elements, and interacting with elements.
- It must be installed in addition to tools already bundled with CRA.

**Jest and Enzyme**
- Both Jest and Enzyme are specifically designed to test React applications, Jest can be used with any other Javascript app but Enzyme only works with React.
- Jest can be used without Enzyme to render components and test with snapshots, Enzyme simply adds additional functionality.
- Enzyme can be used without Jest, however Enzyme must be paired with another test runner if Jest is not used.
- As described, we will use:
- Jest as the test runner, assertion library, and mocking library
- Enzyme to provide additional testing utilities to interact with elements
