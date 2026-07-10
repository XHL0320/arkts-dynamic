/*
 * Generic Stage 1
 * Test point: generic method in class.
 * Expected: class with generic method compiles and works.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Utils {
  identity<T>(value: T): T { return value }
  toArray<T>(value: T): T[] { return [value] }
}

function main(): void {
  let u: Utils = new Utils()
  assertTrue(u.identity<number>(42) === 42, 'generic method identity')
  let arr: number[] = u.toArray<number>(99)
  assertTrue(arr[0] === 99, 'generic method toArray')
}

main()
