# Decorator Module Export Decorated Class Candidates

## Coverage IDs

- DECORATOR-MODULE-0075: export class + class decorator
- DECORATOR-MODULE-0076: export class + property decorator
- DECORATOR-MODULE-0077: export class + method decorator

## Candidate Description

These candidates verify that decorating an exported class does not break the export binding, and the decorated class remains usable after import by another module.

### Compiler Behavior to Verify

1. **Export binding integrity**: After decorator application, the `export class` binding should still reference the (possibly modified) class constructor. Decorator should NOT break the export.

2. **Class decorator + export**: `@classDec export class A` — the exported value should be the result of class decorator application (original class or replaced constructor if decorator returns one).

3. **Property/method decorator + export**: Property/method decorators should modify the class prototype, and the export binding should remain intact.

4. **Imported decorated class usability**: Another module importing the decorated class should get the correct class, can instantiate it, and access all members.

### Source Snippets

**Class decorator + export (DECORATOR-MODULE-0075):**
```typescript
// In module file:
@classDec
export class DecoratedA { value: number = 42 }
```

**Property decorator + export (DECORATOR-MODULE-0076):**
```typescript
// In module file:
export class DecoratedPropA {
  @propDec
  prop: string = "hello"
  value: number = 42
}
```

**Method decorator + export (DECORATOR-MODULE-0077):**
```typescript
// In module file:
export class DecoratedMethodA {
  value: number = 42
  @methodDec
  greet(): string { return "hello" }
}
```

### Expected Behavior

- Decorated exported class is importable by other modules
- All members (instance, static, constructor) are accessible
- Decorator side effects occur at module initialization time
- Export binding is not broken by decorator application

### Status

Candidate created — awaiting compiler expected verification
