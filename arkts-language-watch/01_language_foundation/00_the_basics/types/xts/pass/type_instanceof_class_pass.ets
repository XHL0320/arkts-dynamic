// Type Stage 1. Expected: class instance is instanceof its class.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Demo {
  value: number = 1
}

let demo = new Demo()
assertTrue(demo instanceof Demo, 'class instance should be instanceof class')
