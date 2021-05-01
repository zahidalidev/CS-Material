import store from "./store";
import * as actionCreators from "./actionsCreators";
import createStore from "./reduxScratch/store";

const unsubscribe = store.subscribe(() => {
    console.log("Store changed!", store.getState());
})

store.dispatch(actionCreators.BUG_ADDED("Bug 1"))

unsubscribe(); // unsubscribe to prevent memory eg. when user navigate from this page to another mean when UI component is not visible

// store.dispatch(actionCreators.BUG_REMOVED(1))
store.dispatch(actionCreators.BUG_RESOLVED(1));
console.log(store.getState())


// custom redux

console.log('Custom redux');

createStore.subscribe(() => {
    console.log("custom changed!");
});

createStore.dispatch(actionCreators.BUG_ADDED("BUG 1"));

console.log(createStore.getState());
