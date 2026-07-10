/*
 * Interface Stage 1
 * Regression test.
 * Test point: interface basic declaration, property, method, and implements regression.
 * Regression reason: verify that basic interface syntax continues to work after changes.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface RegressionInterface {
  id: number
  name: string
  getValue(): number
  optional?: boolean
}

class RegressionImpl implements RegressionInterface {
  id: number
  name: string
  constructor(id: number, name: string) {
    this.id = id
    this.name = name
  }
  getValue(): number { return this.id * 2 }
}

function main(): void {
  let obj: RegressionInterface = new RegressionImpl(5, "test")
  assertTrue(obj.id === 5, 'regression: id property')
  assertTrue(obj.name === "test", 'regression: name property')
  assertTrue(obj.getValue() === 10, 'regression: method returns id*2')
  assertTrue(obj.optional === undefined, 'regression: optional property defaults to undefined')

  let literal: RegressionInterface = { id: 1, name: "literal", getValue: () => 42 }
  assertTrue(literal.id === 1, 'regression: literal id')
  assertTrue(literal.getValue() === 42, 'regression: literal method')
}

main()
