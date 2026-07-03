/*
 * ArkTS this and runtime basics positive examples.
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

class ThisBase {
  public value: number
  constructor(value: number) {
    this.value = value
  }
  public add(value: number): ThisBase {
    this.value = this.value + value
    return this
  }
  public read(): number {
    return this.value
  }
  public describe(): string {
    return "base"
  }
}

class ThisDerived extends ThisBase {
  public name: string
  constructor(value: number, name: string) {
    super(value)
    this.name = name
  }
  public describe(): string {
    return super.describe() + ":" + this.name
  }
  public addDerived(value: number): ThisDerived {
    this.value = this.value + value
    return this
  }
  public static create(name: string): ThisDerived {
    return new ThisDerived(1, name)
  }
}

class ThisHolder {
  public count: number
  constructor(count: number) {
    this.count = count
  }
}

function acceptClassValue(name: string): ThisDerived {
  return ThisDerived.create(name)
}

function main(): void {
  let base: ThisBase = new ThisBase(1)
  base.add(2)
  assertEqualNumber(base.read(), 3, "method uses this to read and write field")
  assertTrue(base.add(1) === base, "method returns this for chaining")

  let derived: ThisDerived = new ThisDerived(4, "child")
  derived.addDerived(3).addDerived(2)
  assertEqualNumber(derived.read(), 9, "derived method uses this")
  assertEqualString(derived.describe(), "base:child", "super.method receiver uses current this")

  let baseRef: ThisBase = derived
  assertEqualString(baseRef.describe(), "base:child", "base method dispatch with derived instance")
  assertTrue(derived instanceof ThisDerived, "instanceof class")
  assertTrue(derived instanceof ThisBase, "derived instance instanceof base")

  let first: ThisHolder = new ThisHolder(1)
  let second: ThisHolder = new ThisHolder(2)
  first.count = 10
  assertEqualNumber(first.count, 10, "first instance field")
  assertEqualNumber(second.count, 2, "second instance field independence")

  let created: ThisDerived = ThisDerived.create("static")
  assertEqualString(created.name, "static", "static method creates instance")

  let fromValue: ThisDerived = acceptClassValue("value")
  assertEqualString(fromValue.name, "value", "class value passed to function through static factory")
}

main()
