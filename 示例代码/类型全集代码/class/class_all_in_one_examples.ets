/*
 * ArkTS Class all-in-one positive examples.
 * This file demonstrates common static ArkTS class forms only.
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

class AllEmpty {
}

class AllAddress {
  public city: string
  constructor(city: string) {
    this.city = city
  }
}

interface AllNamed {
  name: string
  getName(): string
}

interface AllStore<T> {
  getValue(): T
}

abstract class AllEntity {
  public readonly id: number
  constructor(id: number) {
    this.id = id
  }
  public abstract label(): string
  public idText(): string {
    return "id"
  }
}

class AllPerson extends AllEntity implements AllNamed {
  public static count: number = 0
  public static readonly KIND: string = "person"
  public name: string
  protected level: number = 1
  private secret: string = "hidden"
  public address: AllAddress
  public score: number = 1

  constructor(id: number, name: string, address: AllAddress) {
    super(id)
    this.name = name
    this.address = address
    AllPerson.count = AllPerson.count + 1
  }

  public label(): string {
    return this.name
  }

  public getName(): string {
    return this.name
  }

  public reveal(): string {
    return this.secret
  }

  public addScore(delta: number): AllPerson {
    this.score = this.score + delta
    return this
  }

  public levelValue(): number {
    return this.level
  }

  public static create(name: string): AllPerson {
    return new AllPerson(1, name, new AllAddress("shenzhen"))
  }
}

class AllEmployee extends AllPerson {
  public title: string
  constructor(name: string, title: string) {
    super(2, name, new AllAddress("beijing"))
    this.title = title
  }
  public label(): string {
    return this.name + ":" + this.title
  }
}

class AllManager extends AllEmployee {
  public teamSize: number
  constructor(name: string, size: number) {
    super(name, "manager")
    this.teamSize = size
  }
}

class AllBox<T> implements AllStore<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
  public getValue(): T {
    return this.value
  }
}

class AllNumberBox extends AllBox<number> {
  constructor(value: number) {
    super(value)
  }
}

class AllOrder {
  public owner: AllPerson
  public amount: number
  constructor(owner: AllPerson, amount: number) {
    this.owner = owner
    this.amount = amount
  }
}

function usePerson(person: AllPerson): string {
  return person.getName()
}

function createByClassValue(name: string): AllPerson {
  return AllPerson.create(name)
}

function main(): void {
  let empty: AllEmpty = new AllEmpty()
  assertTrue(empty instanceof AllEmpty, "empty class instance")

  let person: AllPerson = new AllPerson(1, "alice", new AllAddress("hangzhou"))
  assertEqualString(person.getName(), "alice", "class implements interface")
  assertEqualString(person.reveal(), "hidden", "private member via public method")
  assertEqualNumber(person.addScore(4).score, 5, "this chain returns object")
  assertEqualString(person.address.city, "hangzhou", "class field composition")
  assertEqualString(AllPerson.KIND, "person", "static readonly field")
  assertTrue(AllPerson.count >= 1, "static field updated")

  let employee: AllPerson = new AllEmployee("bob", "engineer")
  assertEqualString(employee.label(), "bob:engineer", "method overriding-like behavior")
  assertTrue(employee instanceof AllPerson, "derived instance is base instance")

  let manager: AllManager = new AllManager("carol", 6)
  assertTrue(manager instanceof AllEmployee, "multi-level inheritance")
  assertEqualNumber(manager.teamSize, 6, "derived field")

  let store: AllStore<number> = new AllNumberBox(10)
  assertEqualNumber(store.getValue(), 10, "generic class implements generic interface")

  let order: AllOrder = new AllOrder(person, 20)
  assertEqualNumber(order.amount, 20, "class field with another class")

  assertEqualString(usePerson(person), "alice", "class as type")
  assertEqualString(createByClassValue("dave").name, "dave", "class as runtime value")
  assertEqualBoolean(person instanceof AllEntity, true, "instanceof abstract base runtime")
}

main()
