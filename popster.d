import std.stdio;
import pop : pop, push, append, insert;

void test() {
    char[] abc = [ 'a', 'b', 'c' ];
    writeln(abc);
    writeln();

    char sch = abc.pop(0); // Pop 'a' of 'a', 'b', 'c'.
    writeln(sch); // 'a'
    writeln(abc); // 'b', 'c'
    writeln();

    char[] xyz = [ 'x', 'y', 'z' ];
    writeln(xyz);
    writeln();

    char ech = xyz.pop(); // Pop 'z' of 'x', 'y', 'z'.
    writeln(ech); // 'z'
    writeln(xyz); // 'x', 'y'
    writeln();

    xyz.push('z'); // Add 'z' at end.
    writeln(xyz);

    // append() [like Python] is an alias for push()
    xyz.append('w', 0); // Add 'w' at start.
    writeln(xyz);

    // insert() [like Python] is an alias for push() but requires an explicit index first.
    xyz.insert(0, 'v'); // Add 'v' at start.
    writeln(xyz);
    writeln();
}

void main() {
    test();
}
