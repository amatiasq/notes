JS.NEXT AND COFFEESCRIPT
========================

JEREMY ASHKENAS

http://ashkenas.com/

http://twitter.com/jashkenas

http://github.com/jashkenas

[Video](https://www.youtube.com/watch?v=TiLJKpzlOeY)

---

The problem of updating Javascript is the backwards support. **We can't break the web**.

Javascript in his primary esence is beautiful

You can't just throw code at the problem. Browsers have a limit and we can't fix everything with code. **Polyfills Kill**

    if (typeof Object.create !== 'function') {
      Object.create = function(o) {
        function F() {}
        F.prototype = o;
        return new F();
      };
    }

**Defensive Programming**

ES6 and Coffeescript share objectives, reduce boilerplate.

> Science is a knowledge which we understand so well that we can teach it to a computer; and if we don't undestand something, it is an art to deal with it.

Code has two audiences:

- Computers who run it
- People who writes and maintain it
