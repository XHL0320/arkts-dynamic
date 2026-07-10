/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: call signature in interface.
 * Boundary reason: dynamic ArkTS call signature support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Callable {
  (input: number): string
}

function main(): void {
  let fn: Callable = (input: number): string => {
    return "result:" + input.toString()
  }
  let result: string = fn(42)
  assertTrue(result === "result:42", 'call signature invocation')
}

main()
