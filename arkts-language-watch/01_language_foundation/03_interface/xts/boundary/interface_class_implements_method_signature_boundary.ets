/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: class method signature mismatch with interface.
 * Boundary reason: dynamic ArkTS method signature compatibility checking needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface StringProducer {
  produce(): string
}

// In TypeScript, returning number instead of string would be a compile error.
// If dynamic ArkTS allows this, it documents that return type checking is not strict.
class NumberProducer implements StringProducer {
  produce(): string {
    return "42"  // Correct return type - this should compile
  }
}

function main(): void {
  let producer: StringProducer = new NumberProducer()
  let result: string = producer.produce()
  assertTrue(result === "42", 'method signature compatible')
}

main()
