#ifndef __FUNCTION_NSH__
#define __FUNCTION_NSH__

declare Function {
  input x[32];
  output y[32];
  func_in exec(x): y;
}

#endif
