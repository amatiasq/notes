IMMUTABILITY, INTERACTIVITY & JAVASCRIPT
========================================

DAVID NOLEN

http://swannodette.github.io/

http://twitter.com/swannodette

http://github.com/swannodette

[Video](https://www.youtube.com/watch?v=mS264h8KGwk)

---

MVC cames from xerox computer times

Implementations leave too much to be desired
- Stateful object everywhere

The web current usage is way different from what it was mented to be

Functional programming?
- not renering focused

Functional programming and data

- immutable values, not mutable objects
- change returns a new value, leaving the old one unmodified
- they're persisten
- fast

Example: Linked list

(don't get it) Sharing structure

Array Mapped Trie
- data lives in the leaves
- prefix tree is used for string loockup

Persistent Vector
    [][][][]
      ||
      [][][][]
          ||
          [][][][]
          ||
          [][][][]

    0b011000

**React!**

Uses Persistent Vector for virtual dom comparison

GOYA pixel editor (small code, fast undo/redo)
