/*
 * ArkTS static and readonly positive examples.
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

class StaticReadonlyCounter {
  public static count: number = 0
  public static readonly VERSION: string = "1.0"
  public readonly id: number
  public name: string

  constructor(id: number, name: string) {
    this.id = id
    this.name = name
    StaticReadonlyCounter.count = StaticReadonlyCounter.count + 1
  }

  public static create(name: string): StaticReadonlyCounter {
    return new StaticReadonlyCounter(StaticReadonlyCounter.count + 1, name)
  }

  public static currentCount(): number {
    return StaticReadonlyCounter.count
  }
}

class StaticReadonlyBase {
  public static typeName: string = "base"
  public static readType(): string {
    return StaticReadonlyBase.typeName
  }
}

class StaticReadonlyDerived extends StaticReadonlyBase {
  public static derivedType(): string {
    return StaticReadonlyDerived.readType()
  }
}

class StaticReadonlyOwner {
  public readonly label: string = "owner"
}

function main(): void {
  let before: number = StaticReadonlyCounter.currentCount()
  let first: StaticReadonlyCounter = StaticReadonlyCounter.create("first")
  let second: StaticReadonlyCounter = StaticReadonlyCounter.create("second")

  assertTrue(first.id > 0, "readonly field initialized in constructor")
  assertEqualString(second.name, "second", "static factory method")
  assertEqualNumber(StaticReadonlyCounter.currentCount(), before + 2, "static counter")
  assertEqualString(StaticReadonlyCounter.VERSION, "1.0", "static readonly field")
  assertEqualString(StaticReadonlyBase.readType(), "base", "static method")
  assertEqualString(StaticReadonlyDerived.derivedType(), "base", "static inheritance")

  let owner: StaticReadonlyOwner = new StaticReadonlyOwner()
  assertEqualString(owner.label, "owner", "readonly field declaration initializer")
}

main()
