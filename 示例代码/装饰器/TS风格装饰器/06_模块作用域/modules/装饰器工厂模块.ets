export function importedFactory(name: string) { return (target: Object, key: string): void => { print(name + ":" + key) } }
