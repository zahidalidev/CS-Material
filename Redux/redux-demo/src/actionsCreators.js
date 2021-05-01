import * as actions from "./actionTypes";


export function BUG_ADDED(description) {
    return {
        type: actions.BUG_ADDED,
        payload: {
            description
        }
    }
}
export function BUG_REMOVED(id) {
    return {
        type: actions.BUG_REMOVED,
        payload: {
            id
        }
    }
}

export function BUG_RESOLVED(id) {
    return {
        type: actions.BUG_RESOLVED,
        payload: {
            id
        }
    }
}