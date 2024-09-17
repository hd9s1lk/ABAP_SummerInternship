class zarmstrong definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zarmstrong implementation.
    method if_oo_adt_classrun~main.
    DATA: num_string type string,
          num        type i,
          tam        type i,
          total      type i,
          i          type i.

    num = CONV i( num_string ).
    num_string = '153'.
    tam = STRLEN( num_string ).

    DO tam TIMES.
        total += total + ( CONV i( num_string+i(1) ) ** tam ).
        i += i + 1.
    enddo.

    IF total = num.
        out->write( num + ' e armstrong ' ).
    ELSE.
        out->write( num + 'nao e armstrong' ).
    endif.



    endmethod.
endclass.