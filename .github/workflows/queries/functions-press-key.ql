import javascript

from Function testFunc, Function calledFunc
where testFunc.getName() != null
  and calledFunc.getName() = "pressActionKey"
  and testFunc.getACall().getTarget() = calledFunc
select testFunc, "Test function calling pressActionKey"

