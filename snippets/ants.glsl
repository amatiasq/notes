// #version 300 es

precision mediump float;

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

struct Agent {
  vec2 pos;
};

Agent agents[100];

vec2 getPosition(vec2 fragCoord) {
  return fragCoord.xy / u_resolution.xy;
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

void main() {
  vec2 pos = squareViewport(getPosition(gl_FragCoord));
  bool hasAgent = false;
  
  for(int i = 0; i < 100; i ++ ) {
    if (agents[i].pos == pos) {
      hasAgent = true;
    }
  }
  
  if (hasAgent) {
    gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);
  } else {
    gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
  }
}
