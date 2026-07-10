// Helper: circular dependency module B
import { funcA } from './module_circular_a_helper'
export function funcB(): string { return "B" }
export const initB: string = "initialized-B"
