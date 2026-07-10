/*
 * This Keyword Stage 1
 * Regression test.
 * Test point: call/apply/bind this regression.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function getValue(): number { return this.value }

function main(): void {
  let obj = { value: 100 }

  // call
  assertTrue(getValue.call(obj) === 100, 'regression: call this')

  // apply
  assertTrue(getValue.apply(obj) === 100, 'regression: apply this')

  // bind
  let bound: () => number = getValue.bind(obj)
  assertTrue(bound() === 100, 'regression: bind this')

  // bind + call (bind wins)
  let obj2 = { value: 200 }
  assertTrue(bound.call(obj2) === 100, 'regression: bind ignores call')
}

main()
