STREAMING AND EVENT-BASED PROGRAMMING USING FRP AND RXJS
========================================================

MATTHEW PODWYSOCKI
http://codebetter.com/blogs/matthew.podwysocki
http://twitter.com/mattpodwysocki
http://github.com/mattpodwysocki

---

https://github.com/reactive-extensions/futurejs
http://www.reactivemanifesto.org/

### Reactive

- react to events
- react to load
- react to failures
- react to users

Dart streams are cool :) But not that much

### Async

- callbacks
- promises
- events
- streams

Unify?

### 3 concepts

1. Observer/Observable
2. Query operations
3. How/when/where


### Observer/Observable

    var collection = Observable.fromEvent(el, 'click');

    var obs = Observer.create({
      onNext: ...
      onError: ...
      onCompleted: ...
    })

    var subscription = collection.observe(obs);

This converts events into first-class objects

### Query operations

- filter
- map
- delay
- throttle
- distinctUntilChanged

    mousedown.flatMap(function())

### How/Where/When

- Timers
- Produce events
- Sync with the us

**Schedulers**

### Future

- backpressure
-
