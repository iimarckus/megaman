This is a disassembly of the following Game Boy games:

* Mega Man: Dr. Wily’s Revenge
* Mega Man III
* Mega Man IV
* Mega Man V
* Bionic Commando

To build, first install [RGBDS](https://github.com/rednex/rgbds/).

Next, copy the original games (SHA256 hashes below) into the directory
under the following names:

* base1.gb  33d16365318411f063edd9100c79458aabb7ea71bb1873e30f38b93814f0ec6e
* base3.gb  7344a36fcfc8151098238529218762e44c5a1546fab7e7fd5d32927e06cbf5a8
* base4.gb  4d980ca46a83cd127312dbc445ed1a83e97ed7a8026dce6fdd22a01b1895781b
* base5.gb  7a108770a7c1ad592b52d0c46d7ead422d0a20961abaafca3d40086e3f2f588f
* basebc.gb 692e62d9e0048350256ee124d55c6ef225dc2bb54e0808fd882312d4dcaf0f28

Then run “make” from a POSIX shell.

## Why include Bionic Commando? Why not Mega Man II?

Rockman World 1, 3, 4, and 5 were all developed by Minakuchi Engineering
for Capcom. Rockman World 2 is noticeably absent from that list:

> We hired a different company to do ‘World 2’, and that was a total nightmare.
> They just didn’t understand Mega Man like the company that did ‘World 1.’

— Keiji Inafune, MM25 p. 102

1, 3, 4, and 5 have similar codebases. Bionic Commando was also developed by
Minakuchi Engineering and is likewise similar internally.

In contrast, Rockman World 2 uses an entirely different codebase altogether.
