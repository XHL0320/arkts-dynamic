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

async function testPromiseAnyAllRejected() {
  try {
    await Promise.any([Promise.reject("a"), Promise.reject("b")]);
  } catch (e) {
    assertCondition(e instanceof AggregateError, "Promise.any all rejected should throw AggregateError");
    assertCondition(e.errors.length === 2, "AggregateError.errors should contain rejection reasons");
    return;
  }
  throw new Error("Promise.any all rejected should throw");
}

testPromiseAnyAllRejected();
