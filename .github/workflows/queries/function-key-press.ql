import javascript

/**
 * Predicate to determine if a function calls 'pressActionKey'.
 */
predicate callsPressActionKey(Function testFunc, Function calledFunc) {
  testFunc.getName() != "" and
  calledFunc.getName() = "pressActionKey" and
  exists(testFunc.getACall().getTarget() = calledFunc)
}

from Function testFunc, Function calledFunc
where callsPressActionKey(testFunc, calledFunc)
select testFunc, "Test function calling pressActionKey"
