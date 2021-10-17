REPORT ztest_inline_1.

PERFORM test.

FORM test.
  DATA(i_foo) = 1.

  DATA i_bar TYPE i.
  i_bar = 1.

  DATA p_foo TYPE p LENGTH 5 DECIMALS 2 VALUE '1.68'.
  DATA p_bar TYPE p LENGTH 5 DECIMALS 2.
  p_bar = p_foo.

  DATA(s_foo) = 'test'.

  DATA s_bar TYPE string.
  s_bar = 'test'.

  WRITE: i_foo, i_bar, p_foo, p_bar, s_foo, s_bar.
ENDFORM.
