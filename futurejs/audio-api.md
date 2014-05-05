EVERYBODY DANCE NOW WITH WEB AUDIO API
======================================

JAUME SÁNCHEZ

http://clicktorelease.com/

http://twitter.com/thespite

http://github.com/spite

---

Web audip API is to &lt;audio&gt; what canvas is to &lt;img&gt;

    var context = new AudioContext()
    var source = context.createBufferSource(); // single use
    // var source = context.createMediaElementSource();
    // var source = context.createMediaStreamSource();
    // var source = context.createBufferSource(); ...
    source.buffer = buffer;
    source.connect(context.destination); // pipe
    source.start();

a

    var xhr = ...
    xhr.responseType = 'arraybuffer';

    xhr.onload =
      context.decodeAudioData(xhr.response, function(buffer) {
        });

a

    // get equalizator
    context.createAnalyser();

a

    navigator.getUserMedia({ audio: true }, function(stream) {
      mediaStreamSource = context.createMediaStreamSource(mstream);
      mediaStreamSource.connect(...)
    })

a

    // volume
    var volume = context.createGain();
    volume.gain.value = .1;
    cosa.connect(volume);
    volume.connect(context.destination);

a

    var delay = context.createDelay(maxDelayTime);
    delay.delayTime.value = .1;
    cosa.connect(delay);
    delay.connect(context.destination);

delay + gain = reverb // echo

    var osci = context.createOscillator();
    osci.type = // SINE, SQUARE, SAWTOOTH, TRIANGLE, CUSTOM

a

    var filter = context.createBiquadFilter();
    filter.type = // LOWPASS, HIGHPASS, BANDPASS, LOWSHELF, HIGHSHELF, PEAKING, NOTCH, ALLPASS

a

    var convolver = context.createConvolver();
    // does things :)

a

    var panner = context.createPanner();
    // moves the audio in a 3D environment
    // position, velocity, direction

a

    context.createDynamicCompressor()
    // at the end of the cain keeps things safe

### What's next

- WebRTC getUserMedia
- Web MIDI API
- Procedural sound generation
- Real-time effects

