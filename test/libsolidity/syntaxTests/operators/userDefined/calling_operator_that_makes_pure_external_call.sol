type Int is int16;

using {add as +} for Int global;

function add(Int, Int) pure returns (Int) {
    return b.f();
}

contract B {
    function f() external pure returns (Int) {}
}

contract C {
    function test() public returns (Int) {
        return Int.wrap(0) + Int.wrap(0);
    }
}
// ----
// DeclarationError 7576: (109-110): Undeclared identifier.