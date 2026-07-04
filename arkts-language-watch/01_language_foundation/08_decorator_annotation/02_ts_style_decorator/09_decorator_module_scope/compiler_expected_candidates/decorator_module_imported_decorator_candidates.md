# Decorator Module Imported Decorator Candidates

## Coverage IDs

- DECORATOR-MODULE-0001: import class decorator function
- DECORATOR-MODULE-0002: import property decorator function
- DECORATOR-MODULE-0003: import method decorator function

## Candidate Description

These candidates verify that imported decorator functions (class, property, method) from a sibling module correctly resolve at compile time and are callable at runtime.

### Compiler Behavior to Verify

1. **Import resolution**: The compiler should resolve `import { classDec } from "./modules/decorator_module_basic"` and identify `classDec` as a valid decorator function.

2. **Decorator lowering**: After lowering, the generated code should call the imported decorator function using the correct module binding, not a local binding.

3. **Binding stability**: The imported decorator binding should NOT be:
   - Mistakenly resolved as a local variable (PR 10632 risk)
   - Lost during transform/lowering
   - Bound to a wrong module's export

4. **Target/key/descriptor**: Imported decorator should receive the same target/key/descriptor arguments as a locally-defined decorator.

### Source Snippets

**Class decorator (DECORATOR-MODULE-0001):**
```typescript
import { classDec } from "./modules/decorator_module_basic"
@classDec
class A { value: number = 42 }
```

**Property decorator (DECORATOR-MODULE-0002):**
```typescript
import { propDec } from "./modules/decorator_module_property"
class A {
  @propDec
  x: number = 10
}
```

**Method decorator (DECORATOR-MODULE-0003):**
```typescript
import { methodDec } from "./modules/decorator_module_method"
class A {
  @methodDec
  greet(): string { return "hello" }
}
```

### Expected Behavior

- Imported decorator function is called at class definition time
- Decorator receives correct target (class constructor / prototype) and key (property/method name)
- Class is still instantiable after decorator application
- Imported binding is stable after transform/lowering

### Status

Candidate created — awaiting compiler expected verification
