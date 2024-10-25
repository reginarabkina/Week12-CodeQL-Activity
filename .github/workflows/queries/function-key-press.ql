import javascript

/**
 * Predicate to determine if a function calls 'pressActionKey'.
 */
predicate callsPressActionKey(Function caller, Function callee) {
  callee.getName() = "pressActionKey" and
  caller.getACall().getTarget() = callee
}

/**
 * Predicate to determine if a function is likely a test function.
 * (Assumes test functions contain 'test' in their name.)
 */
predicate isTestFunction(Function func) {
  func.getName().matches(".*test.*")
}

from Function testFunc, Function pressFunc
where isTestFunction(testFunc) and callsPressActionKey(testFunc, pressFunc)
select testFunc, "This test function calls pressActionKey."
