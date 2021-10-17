REPORT zfoobar.

TYPES: ty_tab TYPE STANDARD TABLE OF i WITH KEY table_line.

CLASS lcl_test DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS test
      CHANGING
        cv_val TYPE i.
    CLASS-METHODS test_tab
      CHANGING
        ct_val TYPE ty_tab.
ENDCLASS.
CLASS lcl_test IMPLEMENTATION.
  METHOD test.
    cv_val = 0.
  ENDMETHOD.

  METHOD test_tab.
    CLEAR ct_val.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.

  PERFORM test.

FORM test.
  DATA lv_val TYPE i.
  DATA lt_val TYPE ty_tab.

  lcl_test=>test( CHANGING cv_val = lv_val ).

  lcl_test=>test_tab( CHANGING ct_val = lt_val ).
ENDFORM.
