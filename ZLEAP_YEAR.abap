class zleap_year definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zleap_year implementation.
    method if_oo_adt_classrun~main.

    DATA: year type i value 1997,
          div_by_4 type i,
          div_by_100 type i,
          div_by_400 type i.

    div_by_4 = year mod 4.
    div_by_100 = year mod 100.
    div_by_400 = year mod 400.

    IF div_by_4 = 0.
        out->write( 'Its a leap year' ).
    elseif div_by_100 = 0 AND div_by_400 = 0.
        out->write( 'Its a leap year' ).
    else.
        out->write( 'Its not a leap year' ).
    endif.


    endmethod.
endclass.