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

function testAggregateErrorIteratorThrow() {
  assertThrowsError(Error, () => {
    const iterable = {
      [Symbol.iterator]() {
        throw new Error("iterator failed");
      },
    };
    new AggregateError(iterable, "bad iterator");
  }, "AggregateError constructor should propagate iterator error");
}

testAggregateErrorIteratorThrow();
