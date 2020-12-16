const context = new AudioContext();
const osc = context.createOscillator();

osc.frequency.value = 350; // defaults 440
osc.frequency.exponentialRampToValueAtTime(600, context.currentTime + 1);

const gain = context.createGain();
gain.gain.exponentialRampToValueAtTime(0.0001, context.currentTime + 1);

osc.start();
osc.stop(context.currentTime + 1);

osc.connect(gain).connect(context.destination);
