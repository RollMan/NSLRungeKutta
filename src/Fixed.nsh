#ifndef __FIXED_NSH__
#define __FIXED_NSH__

#define UPPER (24)
#define LOWER (8)

struct FField {
  upper[UPPER];
  lower[LOWER];
};

declare Fixed {
  input a[UPPER+LOWER];
  input b[UPPER+LOWER];
  output c[UPPER+LOWER];
  func_in add(a, b): c;
  func_in mul(a, b): c;
  func_in div(a, b): c;
}
#endif
