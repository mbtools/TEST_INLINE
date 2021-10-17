REPORT ztest_inline_global.

PERFORM test.

FORM test.

  DATA li_test TYPE REF TO zif_test_inline.
  li_test = NEW zcl_test_inline( ).
  li_test->test_1( ).

ENDFORM.
