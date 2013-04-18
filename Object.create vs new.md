Hey there! I have a question for you

As I know, `new` operator works this way

    function fakeNew(Ctor) {
      var instance = Object.create(Ctor.prototype);
      instance.constructor();
      // I skip the conditional for simplicity
      return instance;
    }
    
It all begin when I did a `Object.create` polifill so I could create objects without using `new`.

    Object.create = function(proto) {
      function F() { }
      F.prototype = proto;
      return new F();
    }

I started creating a lot of objcts and prototiping them, but as many times then need to initializa its properties I did a `.init()` method to them

    var base = {
      init: function() {
        EmitterMixin.call(this);
        return this;
      }
    };
    
    var obj = Object.create(base).init();

But of course, I had to rembember to return `this` always from `.init()` and many times I forget it or worst, I forgot to call `.init()`. So trying to simplify object initialization I wanted to create a global helper to do it: invoke `Object.create`, invoke the initializer function and return this.

    function create(proto) {
      var child = Object.create(proto);
      child.init();
      return child;
    }

Then was when I wanted to hit my head against the wall when I realized what I was doing was virtually **what `new` operator does** but a lot slower. And in case the polifill applies I would even use `new` under the hood.

So I ask myself, what benefits throwing `new`? It's [notably quicker][1] on main browsers and because of javascript nature we usually need to call a initualizer function, something than `new` does from it's begining.

And worst, I've noticed than **I used two different types of objects**, "abstract" and "instances", the bigger difference is than for instances I had to invoke `.init()` while with abstracts it was not necesasary because they will only be used to be prototypes of other objects. And I've already seen this pattern while using `new`:

    function Foo() { }
    Foo.prototype.method = function() { ... };
    
    function Bar() { }
    // "abstract" doesnt invoke initializer
    Bar.prototype = Object.create(Foo.prototype);
    Bar.prototype.other = function() { ... };
    
    // "instance", the constructor is called as initializer
    var obj = new Bar();

Is there really a benefit if we stop seeing `new`? are we sure it's not a higher-level tool than simplifies something we'll have to do anyway?
What pros/cons do you see about `new` and `Object.create`?

 [1]: http://jsperf.com/object-create-vs-constructor-vs-object-literal/49
