/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: generic function with default type parameter.
 * Boundary reason: dynamic ArkTS default type parameter support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function createArray<T = string>(value: T): T[] {
  return [value]
}

function main(): void {
  let strArr: string[] = createArray("default")
  assertTrue(strArr[0] === "default", 'default type parameter inferred as string')
  let numArr: number[] = createArray<number>(42)
  assertTrue(numArr[0] === 42, 'explicit type overrides default')
}

main()
