
import reducer from "../reducer";

function createStore(reducer) {
    let state;
    let listeners = [];

    function getState() {
        return state;
    }

    function dispatch(action) {
        state = reducer(state, action);

        for (let i = 0; i < listeners.length; i++)
            listeners[i]();  // calling all listenres when state change mean action is ispatched
    }

    function subscribe(listener) {
        listeners.push(listener);  //push listenre into array of listeners to call later when state change
    }

    // Public
    return {
        dispatch,
        getState,
        subscribe
    };

}

export default createStore(reducer);  //passing reducer and export