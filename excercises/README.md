# exercises


## count.js

Write a program that counts to 100. Your program should print each number on a separate line starting with 0 and up to including 100.

## divisibility.js

Write a program that prints out numbers from 0 to 100 and whether or not they are divisible by 3. E.g the first 6 lines of output should look similar to this: 0 yes 1 no 2 no 3 yes 4 no 5 no 6 yes

## luckysum.js

Use the code below and add a function called luckySum to make the assertions pass. The function should return the "lucky sum" of the 3 int values, a b c. To calculate the lucky sum, add all the numbers that are not equal to 13, i.e. if any of the 3 arguments is 13 then it does not count towards the sum. So for example, if a is 5, b is 13 an c is 4, the function should return 9.

```js
var assert = require('assert');

assert( luckySum(3, 6, 1) === 10 );
assert( luckySum(3, 13, 1) === 4 );
assert( luckySum(13, 13, 13) === 0 );
assert( luckySum(13, 2, 13) === 2 );
console.log("looks like it works :)");
```

## greet.js

Write a program that greats the User by name (the user's name will be the first argument to the program). So e.g. if you program should print "Hello Thomas", if I run node greet.js Thomas. Hint: any node process has the command line arguments used to start the program in the globally definedprocess.argv Array.
