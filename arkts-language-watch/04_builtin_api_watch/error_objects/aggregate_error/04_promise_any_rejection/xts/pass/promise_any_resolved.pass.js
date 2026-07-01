function assertCondition(condition, message) {
  if (!condition) {
    throw new Error(message);
  }
}

function assertThrowsError(ctor, action, message) {
  try {
    action();
  } catch (e) {
    assertCondition(e instanceof ctor, message);
    return;
  }
  throw new Error(message);
}

async function testPromiseAnyResolved() {
  const value = await Promise.any([Promise.reject(new Error("x")), Promise.resolve(5)]);
  assertCondition(value === 5, "Promise.any should resolve with first fulfilled value");
}

testPromiseAnyResolved();
