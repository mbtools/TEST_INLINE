REPORT ztest_inline_1.

PERFORM test.

FORM test.
  DATA(lv_i_foo) = 1.

  DATA lv_i_bar TYPE i.
  lv_i_bar = 1.

  DATA lv_p_foo TYPE p LENGTH 5 DECIMALS 2 VALUE '1.68'.
  DATA lv_p_bar TYPE p LENGTH 5 DECIMALS 2.
  lv_p_bar = lv_p_foo.

  DATA(lv_string_foo) = 'test'.

  DATA lv_string_bar TYPE string.
  lv_string_bar = 'test'.

  WRITE: lv_i_foo, lv_i_bar, lv_p_foo, lv_p_bar, lv_string_foo, lv_string_bar.
ENDFORM.
