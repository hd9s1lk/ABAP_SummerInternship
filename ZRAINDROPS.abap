class zraindrops definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zraindrops implementation.
    method if_oo_adt_classrun~main.

    DATA num TYPE i.
    num = 30.
    DATA div_by_3 TYPE i.
    DATA div_by_5 TYPE i.
    DATA div_by_7 TYPE i.

    div_by_3 = num MOD 3.
    div_by_5 = num MOD 5.
    div_by_7 = num MOD 7.

    IF div_by_3 = 0 .
       out->write( 'Pling' ).
    ELSEIF div_by_5 = 0.
       out->write( 'Plang' ).
    ELSEIF div_by_7 = 0.
       out->write( 'Plong' ).
    ELSE.
       out->write( num ).
    endif.


    endmethod.
endclass.