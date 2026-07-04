# Decorator Module Imported Factory Candidates

## Coverage IDs

- DECORATOR-MODULE-0019: import class decorator factory
- DECORATOR-MODULE-0020: import property decorator factory
- DECORATOR-MODULE-0021: import method decorator factory

## Candidate Description

These candidates verify that imported decorator factory functions correctly evaluate their arguments, call the factory, and apply the returned decorator function.

### Compiler Behavior to Verify

1. **Factory evaluation**: The factory call (`@classFactory("tagA")`) should evaluate the argument first, then call the factory, then apply the returned decorator.

2. **Imported factory binding**: After lowering, the factory call should use the imported module binding, not a local binding.

3. **Returned decorator application**: The decorator function returned by the factory should be called with the correct target/key/descriptor.

4. **No duplication/omission**: If the same imported factory is used on multiple classes, each should get its own factory call and decorator application — no duplication, no omission.

### Source Snippets

**Class decorator factory (DECORATOR-MODULE-0019):**
```typescript
import { classFactory } from "./modules/decorator_factory_module"
@classFactory("tagA")
class A { value: number = 42 }
```

**Property decorator factory (DECORATOR-MODULE-0020):**
```typescript
import { propFactory } from "./modules/decorator_factory_property_module"
class A {
  @propFactory("tagP")
  x: number = 10
}
```

**Method decorator factory (DECORATOR-MODULE-0021):**
```typescript
import { methodFactory } from "./modules/decorator_factory_method_module"
class A {
  @methodFactory("tagM")
  greet(): string { return "hello" }
}
```

### Expected Behavior

- Factory argument is evaluated before factory call
- Factory is called with the evaluated argument
- Returned decorator function is called with target/key/descriptor
- Imported factory binding is stable after lowering
- Multiple uses of the same factory produce independent decorator applications

### Status

Candidate created — awaiting compiler expected verification
