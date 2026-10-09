// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

    x is int;
//       ^^^ source.vala variable.other.vala

    x as string;
//       ^^^^^^ source.vala variable.other.vala

    sizeof (int);
//  ^^^^^^ source.vala keyword.operator.vala

    typeof (Foo);
//  ^^^^^^ source.vala keyword.operator.vala

// `??` after an `as` cast is the null-coalescing operator, not a nullable
// type marker (issue #15).
class A {
    void f () {
        var a = o as string ?? "x";
//                   ^^^^^^ storage.type.vala
//                          ^^ keyword.operator.vala - storage.type.nullable
        var b = (o as string) ?? "x";
//                            ^^ keyword.operator.vala - storage.type.nullable
        var c = o as string? ?? "x";
//                         ^ storage.type.nullable.vala
//                           ^^ keyword.operator.vala - storage.type.nullable
        var d = o as Foo ?? def;
//                   ^^^ support.type.vala
//                       ^^ keyword.operator.vala - storage.type.nullable
//                          ^^^ variable.other.vala
        var e = n ?? "x";
//                ^^ keyword.operator.vala - storage.type.nullable
        var g = o as string??"x";
//                         ^^ keyword.operator.vala - storage.type.nullable
//                           ^^^ string.quoted.double.vala
        var a2 = o as GenericArray<string> ?? def;
//                                         ^^ keyword.operator.vala - storage.type.nullable
        var b2 = o as GenericArray<string>??def;
//                                        ^^ keyword.operator.vala - storage.type.nullable
//                                          ^^^ variable.other.vala
        var c2 = o as GenericArray<string>? ?? def;
//                                        ^ storage.type.nullable.vala
//                                          ^^ keyword.operator.vala - storage.type.nullable
        var d2 = o as HashTable<string, Foo?> ?? def;
//                                         ^ storage.type.nullable.vala
//                                            ^^ keyword.operator.vala - storage.type.nullable
        var e2 = o as string[] ?? def;
//                             ^^ keyword.operator.vala - storage.type.nullable
        var f2 = o as string[]??def;
//                            ^^ keyword.operator.vala - storage.type.nullable
//                              ^^^ variable.other.vala
        var g2 = o as string[]? ?? def;
//                            ^ storage.type.nullable.vala
//                              ^^ keyword.operator.vala - storage.type.nullable
        var h2 = o as Gtk.Widget ?? def;
//                               ^^ keyword.operator.vala - storage.type.nullable
        var i2 = o as unowned Foo ?? def;
//                                ^^ keyword.operator.vala - storage.type.nullable
        var j2 = o as Foo?? def;
//                       ^^ keyword.operator.vala - storage.type.nullable
//                          ^^^ variable.other.vala
        var k2 = o is Foo ?? def;
//                        ^^ keyword.operator.vala - storage.type.nullable
        var l2 = o as Foo? ?? (o as Bar ?? def);
//                       ^ storage.type.nullable.vala
//                         ^^ keyword.operator.vala - storage.type.nullable
//                                      ^^ keyword.operator.vala - storage.type.nullable
        return o as Foo ?? def;
//                      ^^ keyword.operator.vala - storage.type.nullable
        call (o as Foo ?? def, 1);
//                     ^^ keyword.operator.vala - storage.type.nullable
        x = o as Foo ?? def;
//                   ^^ keyword.operator.vala - storage.type.nullable
        var m2 = @"$(o as string ?? "x")";
//                               ^^ keyword.operator.vala - storage.type.nullable
        var n2 = () => o as Foo ?? def;
//                              ^^ keyword.operator.vala - storage.type.nullable
        var p2 = o is Foo ? 1 : 2;
//                        ^ storage.type.nullable.vala
        var q2 = (o is Foo) ? 1 : 2;
//                          ^ keyword.operator.ternary.vala - storage.type.nullable
    }
}

class B {
    Foo fld = o as Foo ?? def;
//                     ^^ keyword.operator.vala - storage.type.nullable
}
