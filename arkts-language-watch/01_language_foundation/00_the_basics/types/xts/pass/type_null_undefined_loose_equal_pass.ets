// Type Stage 1. Expected: null == undefined is true.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let nullValue = null
let undefinedValue = undefined
assertTrue(nullValue == undefinedValue, 'null should loosely equal undefined')
