/*
 * Keyword Stage 1
 * Test point: instanceof/in/new keywords as expression operators.
 * Expected: instanceof/in/new keywords work in expression position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Foo { val: number = 0 }

function main(): void {
  let obj: Foo = new Foo()
  assertTrue(obj instanceof Foo, 'instanceof keyword works')
  assertTrue(obj instanceof Object, 'instanceof Object works')
  let arr: number[] = [1, 2]
  assertTrue("0" in arr, 'in keyword works for array index')
  let newObj: Foo = new Foo()
  assertTrue(newObj.val === 0, 'new keyword works')
}

main()
