/*
 * ArkTS generic class positive examples.
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

interface GenStore<T> {
  getValue(): T
}

interface GenNamed {
  name: string
}

class GenBox<T> implements GenStore<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
  public getValue(): T {
    return this.value
  }
  public setValue(value: T): void {
    this.value = value
  }
}

class GenPair<K, V> {
  public key: K
  public value: V
  constructor(key: K, value: V) {
    this.key = key
    this.value = value
  }
}

class GenArrayBox<T> {
  public values: T[]
  constructor(values: T[]) {
    this.values = values
  }
  public first(): T {
    return this.values[0]
  }
}

class GenNamedUser implements GenNamed {
  public name: string
  constructor(name: string) {
    this.name = name
  }
}

class GenNamedBox<T extends GenNamed> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
  public getName(): string {
    return this.value.name
  }
}

class GenNumberBox extends GenBox<number> {
  constructor(value: number) {
    super(value)
  }
}

class GenForwardBox<T> extends GenBox<T> {
  constructor(value: T) {
    super(value)
  }
}

class GenMethodBox<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
  public wrap<U>(extra: U): GenPair<T, U> {
    return new GenPair<T, U>(this.value, extra)
  }
}

function main(): void {
  let numberBox: GenBox<number> = new GenBox<number>(1)
  assertEqualNumber(numberBox.getValue(), 1, "generic class Box<T>")
  numberBox.setValue(2)
  assertEqualNumber(numberBox.value, 2, "generic field write")

  let pair: GenPair<string, number> = new GenPair<string, number>("age", 18)
  assertEqualString(pair.key, "age", "generic Pair key")
  assertEqualNumber(pair.value, 18, "generic Pair value")

  let arrayBox: GenArrayBox<number> = new GenArrayBox<number>([3, 4])
  assertEqualNumber(arrayBox.first(), 3, "generic array field")

  let store: GenStore<string> = new GenBox<string>("stored")
  assertEqualString(store.getValue(), "stored", "generic class implements generic interface")

  let named: GenNamedBox<GenNamedUser> = new GenNamedBox<GenNamedUser>(new GenNamedUser("alice"))
  assertEqualString(named.getName(), "alice", "generic constraint")

  let fixed: GenNumberBox = new GenNumberBox(7)
  assertEqualNumber(fixed.getValue(), 7, "derived class fixes generic parameter")

  let forwarded: GenForwardBox<string> = new GenForwardBox<string>("forward")
  assertEqualString(forwarded.getValue(), "forward", "derived class keeps generic parameter")

  let methodBox: GenMethodBox<number> = new GenMethodBox<number>(5)
  let wrapped: GenPair<number, string> = methodBox.wrap<string>("five")
  assertEqualNumber(wrapped.key, 5, "generic method class parameter")
  assertEqualString(wrapped.value, "five", "generic method independent parameter")
}

main()
