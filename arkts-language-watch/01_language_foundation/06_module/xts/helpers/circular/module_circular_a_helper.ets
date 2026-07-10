// Helper: circular dependency module A
import { funcB } from './module_circular_b_helper'
export function funcA(): string { return "A" + funcB() }
export const initA: string = "initialized-A"
