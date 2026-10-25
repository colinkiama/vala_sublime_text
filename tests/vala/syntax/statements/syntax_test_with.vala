// SYNTAX TEST "Packages/sublime_vala/Vala.sublime-syntax"

void main () {
    with (Color c = Color () { red = 1, green = 2, blue = 3 }) {
//                                                           ^ source.vala meta.group.vala punctuation.section.group.end.vala - invalid
//                                                         ^ source.vala meta.group.vala punctuation.section.group.end.vala - invalid
        print ("red: %d\n", red);
    }

    with (obj) {
//  ^^^^ source.vala keyword.control.other.with.vala
        print ("%d\n", x);
    }
}
