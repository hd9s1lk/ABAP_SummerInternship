class zcustom_sign definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zcustom_sign implementation.
    method if_oo_adt_classrun~main.

    DATA: itab type table of str.

**********************************************************************
""Primeiro exercício
**********************************************************************

    APPEND 'Happy' to itab.
    APPEND 'Birthday' to itab.
    APPEND 'Roger' to itab.

    concatenate lines of itab into DATA(res) separated by space.

    out->write( res ).

    DATA age type i value 23.

    IF age > 50.
        out->write( 'What a mature fellow you are ' ).
    ELSE.
        out->write( 'What a young fellow you are' ).
    endif.

**********************************************************************
""Segundo exercício
**********************************************************************

    TYPES: begin of new_struct,
            name TYPE string,
            year TYPE i,
           end of new_struct.

    DATA res2 TYPE new_struct.

    res2-name = 'Hannah'.
    res2-year = 2002.

    DATA(res2Final) = |Congratulations { res2-name }\nClass of { res2-year }|.

    out->write( res2Final ).


**********************************************************************
""Terceiro exercício
**********************************************************************

    DATA: message TYPE str value `Happy Birthday Rob!`,
          currency type str value 'euros',
          multi type i,
          final_price type i.

    multi = strlen( message ).
    final_price = 20 + ( 2 * multi ).

    DATA(end) = |Your sign costs { final_price } { currency }|.

    out->write( end ).



    endmethod.
endclass.