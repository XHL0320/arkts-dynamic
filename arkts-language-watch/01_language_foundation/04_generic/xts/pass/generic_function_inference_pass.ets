/*
 * Generic Stage 1
 * Test point: generic function type argument inference.
 * Expected: type argument inferred from parameter.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function wrap<T>(value: T): T[] {
  return [value]
}

function main(): void {
  let arr: number[] = wrap(99)
  assertTrue(arr.length === 1, 'inferred array length')
  assertTrue(arr[0] === 99, 'inferred array content')
  let strArr: string[] = wrap("test")
  assertTrue(strArr[0] === "test", 'inferred string array')
}

main()
