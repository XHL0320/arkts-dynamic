/*
 * ArkTS inheritance and super positive examples.
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

class InheritBase {
  public value: number
  protected code: string = "base-code"

  constructor(value: number) {
    this.value = value
  }

  public describe(): string {
    return "base"
  }

  public double(): number {
    return this.value * 2
  }

  protected readCode(): string {
    return this.code
  }

  public static kind(): string {
    return "inherit-base"
  }
}

class InheritDerived extends InheritBase {
  public name: string
  constructor(value: number, name: string) {
    super(value)
    this.name = name
  }

  public describe(): string {
    return super.describe() + "-derived"
  }

  public readProtected(): string {
    return this.readCode()
  }

  public ownMethod(): string {
    return this.name
  }
}

class InheritLevelThree extends InheritDerived {
  constructor() {
    super(5, "level-three")
  }
}

class InheritStaticDerived extends InheritBase {
}

function main(): void {
  let derived: InheritDerived = new InheritDerived(3, "child")
  assertEqualNumber(derived.value, 3, "inherited field")
  assertEqualNumber(derived.double(), 6, "inherited method")
  assertEqualString(derived.describe(), "base-derived", "super.method and method replacement")
  assertEqualString(derived.ownMethod(), "child", "derived class adds method")
  assertEqualString(derived.readProtected(), "base-code", "protected inheritance")

  let baseRef: InheritBase = derived
  assertEqualString(baseRef.describe(), "base-derived", "base reference points to derived instance")
  assertTrue(derived instanceof InheritBase, "derived instanceof base")

  let levelThree: InheritLevelThree = new InheritLevelThree()
  assertEqualString(levelThree.describe(), "base-derived", "multi-level inheritance")
  assertEqualString(InheritStaticDerived.kind(), "inherit-base", "static inheritance")
}

main()
