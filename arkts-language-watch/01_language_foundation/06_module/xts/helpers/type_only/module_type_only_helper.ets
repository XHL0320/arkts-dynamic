// Helper: type-only and interface/generic export module
export interface ExportedInterface { value: number }
export type ExportedType = string | number
export function genericIdentity<T>(value: T): T { return value }
export const concreteValue: number = 42
