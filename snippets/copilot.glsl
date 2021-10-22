#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main() {
  // render a small red circle where the mouse is
  float x = u_mouse.x;
  float y = u_mouse.y;
  float r = 0.5;
  float a = 2.0 * PI * u_time;
  float s = sin(a);
  float c = cos(a);
  float x0 = x + r * c;
  float y0 = y + r * s;
  float x1 = x - r * c;
  float y1 = y - r * s;

}