type Int is uint128;

using {add as +, sub as +} for Int;

function add(Int, Int) returns (Int) {}
function sub(Int, Int) returns (Int) {}

function test() {
    Int.wrap(0) + Int.wrap(1);
}
// ----
// TypeError 5583: (162-187): User-defined binary operator + has more than one definition matching the operand types visible in the current scope.