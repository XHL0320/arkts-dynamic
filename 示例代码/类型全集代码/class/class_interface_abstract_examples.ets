/*
 * ArkTS interface and abstract class positive examples.
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

interface IaNamed {
  name: string
  getName(): string
}

interface IaIdentified {
  id: number
}

interface IaWorker {
  work(): string
}

class IaBaseWorker {
  public work(): string {
    return "base-work"
  }
}

class IaUser implements IaNamed, IaIdentified {
  public id: number
  public name: string
  constructor(id: number, name: string) {
    this.id = id
    this.name = name
  }
  public getName(): string {
    return this.name
  }
}

class IaInheritedWorker extends IaBaseWorker implements IaWorker {
}

abstract class IaAbstractAnimal {
  public name: string
  constructor(name: string) {
    this.name = name
  }
  public abstract sound(): string
  public describe(): string {
    return this.name + ":" + this.sound()
  }
}

class IaDog extends IaAbstractAnimal {
  public sound(): string {
    return "bark"
  }
}

abstract class IaAbstractService implements IaWorker {
  public abstract work(): string
  public serviceName(): string {
    return "service"
  }
}

class IaConcreteService extends IaAbstractService {
  public work(): string {
    return "done"
  }
}

function main(): void {
  let user: IaNamed = new IaUser(1, "alice")
  assertEqualString(user.getName(), "alice", "class implements interface method")

  let identified: IaIdentified = new IaUser(2, "bob")
  assertEqualNumber(identified.id, 2, "class field satisfies interface property")

  let worker: IaWorker = new IaInheritedWorker()
  assertEqualString(worker.work(), "base-work", "inherited method satisfies interface")

  let animal: IaAbstractAnimal = new IaDog("dog")
  assertEqualString(animal.describe(), "dog:bark", "concrete subclass implements abstract method")
  assertTrue(animal instanceof IaAbstractAnimal, "abstract base runtime relation")

  let service: IaAbstractService = new IaConcreteService()
  assertEqualString(service.work(), "done", "abstract class implements interface")
  assertEqualString(service.serviceName(), "service", "abstract class concrete method")
}

main()
