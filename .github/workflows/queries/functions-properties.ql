import javascript

predicate isLongFunction(Function f){
    f.getNumLines() > 10
}

from Function f
where isLongFunction(f)
select f, "Function is longer than 10 lines"