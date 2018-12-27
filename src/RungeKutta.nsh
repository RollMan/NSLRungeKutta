#ifndef __RUNGEKUTTA_NSH__
#define __RUNGEKUTTA_NSH__

#define DT (0x00000019)//0.1

declare RungeKutta {
  input previous[32];
  output res[32];

  func_in exec(previous): res;
}

#endif
