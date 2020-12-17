// #version 300 es

// Following tutorial: https://www.youtube.com/watch?v=YkkECMvsogI

precision mediump float;

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

vec2 getPosition() {
  return gl_FragCoord.xy / u_resolution.xy;
}

vec2 squareViewport(vec2 viewport) {
  float radiusXY = u_resolution.x / u_resolution.y;
  float radiusYX = u_resolution.y / u_resolution.x;
  vec2 copy = viewport - 0.5;
  
  if (radiusXY > radiusYX) {
    copy.x *= radiusXY;
  } else {
    copy.y *= radiusYX;
  }
  
  return copy + 0.5;
}

float wave(vec2 pos, float freqA, float freqB, float speed, float offset, float bluriness) {
  float wave1 = sin(pos.x * freqA + u_time * speed);
  float wave2 = sin(pos.x * freqB + u_time * speed);
  float result = (wave1 + wave2) * 0.02;
  return smoothstep(pos.y - offset, pos.y - offset + bluriness, result);
}

float blurredCircle(vec2 pos, float fromRadius, float toRadius) {
  float start = min(fromRadius, toRadius);
  float end = max(fromRadius, toRadius);
  float distance = length(pos - vec2(0.5)) * 2.0;
  return smoothstep(start, end, distance);
}

vec4 draw(vec2 pos) {
  float circle = 1.0 - blurredCircle(pos, 0.72, 0.8);
  
  float w1 = wave(pos, 2.0, 5.0, 4.0, 0.2, 0.01);
  float w2 = wave(pos, 2.0, 4.0, 3.0, 0.4, 0.02) * 0.75;
  float w3 = wave(pos, 1.0, 2.0, 2.0, 0.6, 0.04) * 0.5;
  float w4 = wave(pos, 0.5, 1.0, 1.0, 0.8, 0.08) * 0.25;
  
  float waves = max(max(w1, w2), max(w3, w4));
  
  vec3 colorA = vec3(0.298, 0.0157, 0.5255);
  vec3 colorB = vec3(0.6941, 0.1255, 0.1255);
  
  vec3 color = mix(colorA, colorB, waves);
  vec3 inverse = mix(color, 1.0 - color, circle);
  
  return vec4(inverse, 1.0);
}

void main() {
  vec2 pos = squareViewport(getPosition());
  gl_FragColor = draw(pos);
}
