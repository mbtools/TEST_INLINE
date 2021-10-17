REPORT ztest_inline_local.

INTERFACE lif_test.
  METHODS test_1.
ENDINTERFACE.

CLASS lcl_test DEFINITION.
  PUBLIC SECTION.
    INTERFACES lif_test.
ENDCLASS.
CLASS lcl_test IMPLEMENTATION.
  METHOD lif_test~test_1.
    WRITE 'Test'.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.

  DATA li_test TYPE REF TO lif_test.
  li_test = NEW lcl_test( ).
  li_test->test_1( ).
