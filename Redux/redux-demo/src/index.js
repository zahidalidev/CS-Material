import configureStore from "./store/configureStore";
import * as actionCreators from "./store/bugs";
import createStore from "./reduxScratch/store";

const store = configureStore();

const unsubscribe = store.subscribe(() => {
    console.log("Store changed!", store.getState());
})

store.dispatch(actionCreators.BUG_ADDED({ description: "Bug 1" }))

unsubscribe(); // unsubscribe to prevent memory eg. when user navigate from this page to another mean when UI component is not visible

// store.dispatch(actionCreators.BUG_REMOVED({id: 1}))
store.dispatch(actionCreators.BUG_RESOLVED({ id: 1 }));
console.log(store.getState())


// custom redux

console.log('Custom redux');

createStore.subscribe(() => {
    console.log("custom changed!");
});

createStore.dispatch(actionCreators.BUG_ADDED("BUG 1"));

console.log(createStore.getState());
