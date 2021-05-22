import { createSlice } from "@reduxjs/toolkit";

let lastIndex = 0;

const slice = createSlice({
    name: "users",
    initialState: [],
    reducers: {
        USER_ADDED: (users, action) => {
            users.push({
                id: ++lastIndex,
                name: action.payload.name
            })
        }
    }
})

export const { USER_ADDED } = slice.actions;
export default slice.reducer;