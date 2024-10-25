import javascript

/**
 * Predicate to find functions longer than 10 lines.
 */
predicate isLongFunction(Function func) {
  func.getNumLines() > 10
}

from Function func
where isLongFunction(func)
select func, "This function is longer than 10 lines."
