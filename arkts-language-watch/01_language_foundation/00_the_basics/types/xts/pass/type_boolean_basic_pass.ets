// Type Stage 1. Expected: boolean values preserve true and false identity.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let truthy: boolean = true
let falsy: boolean = false
assertTrue(truthy === true, 'true should stay true')
assertTrue(falsy === false, 'false should stay false')
