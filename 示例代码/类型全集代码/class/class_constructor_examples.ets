/*
 * ArkTS constructor positive examples.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertEqualString(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertEqualBoolean(actual: boolean, expected: boolean, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

class CtorEmpty {
  public value: number = 0
  constructor() {
  }
}

class CtorPoint {
  public x: number
  public y: number
  public readonly id: number

  constructor(x: number, y: number, id: number) {
    this.x = x
    this.y = y
    this.id = id
  }

  public sum(): number {
    return this.x + this.y
  }
}

class CtorBase {
  public baseValue: number
  constructor(value: number) {
    this.baseValue = value
  }
}

class CtorDerived extends CtorBase {
  public ownValue: number
  constructor(baseValue: number, ownValue: number) {
    super(baseValue)
    this.ownValue = ownValue
  }
}

class CtorLevelThree extends CtorDerived {
  public name: string
  constructor(name: string) {
    super(1, 2)
    this.name = name
  }
}

class CtorFactory {
  public value: number
  constructor(value: number) {
    this.value = value
  }
  public static create(value: number): CtorFactory {
    return new CtorFactory(value)
  }
}

class CtorCombined {
  public prefix: string = "item"
  public text: string
  constructor(id: number) {
    this.text = this.prefix + id.toString()
  }
}

function main(): void {
  let empty: CtorEmpty = new CtorEmpty()
  assertEqualNumber(empty.value, 0, "empty constructor")

  let point: CtorPoint = new CtorPoint(1, 2, 100)
  assertEqualNumber(point.sum(), 3, "constructor with multiple parameters")
  assertEqualNumber(point.id, 100, "constructor initializes readonly field")

  let derived: CtorDerived = new CtorDerived(3, 4)
  assertEqualNumber(derived.baseValue + derived.ownValue, 7, "derived constructor calls super")

  let levelThree: CtorLevelThree = new CtorLevelThree("third")
  assertEqualString(levelThree.name, "third", "multi-level constructor chain")

  let factory: CtorFactory = CtorFactory.create(8)
  assertEqualNumber(factory.value, 8, "static factory creates instance")

  let combined: CtorCombined = new CtorCombined(9)
  assertEqualString(combined.text, "item9", "field initializer and constructor combined")
  assertTrue(combined instanceof CtorCombined, "constructed object type")
}

main()
