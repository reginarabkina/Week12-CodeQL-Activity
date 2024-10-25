import javascript

from Function testFunc, Function calledFunc
where 
  testFunc.getName() != "" and
  calledFunc.getName() = "pressActionKey" and
  exists(testFunc.getACall().getTarget() = calledFunc)
select testFunc, "Test function calling pressActionKey"