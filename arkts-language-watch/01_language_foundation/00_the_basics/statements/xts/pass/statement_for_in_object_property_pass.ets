/*
 * Statement Stage 1
 * Test point: for-in enumerates object own properties.
 * Expected: for-in iterates over enumerable property keys.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let obj: Record<string, number> = { a: 1, b: 2, c: 3 }
  let keys: string[] = []
  for (let key in obj) {
    keys.push(key)
  }
  assertTrue(keys.length === 3, 'should enumerate 3 properties')
  assertTrue(keys.indexOf("a") >= 0, 'should contain key a')
  assertTrue(keys.indexOf("b") >= 0, 'should contain key b')
  assertTrue(keys.indexOf("c") >= 0, 'should contain key c')
}

main()
