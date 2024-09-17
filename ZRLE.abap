class zrle definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zrle implementation.
    method if_oo_adt_classrun~main.

    DATA(str) = ' WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB '.
    DATA num_W TYPE i.
    DATA num_B TYPE i.

    num_W = count( val = str sub = 'W' ).
    num_B = count( val = str sub = 'B' ).

    out->write( num_W ).     
    out->write( num_B ).

    endmethod.
endclass.