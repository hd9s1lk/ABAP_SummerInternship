class zstring_reverse definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zstring_reverse implementation.
    method if_oo_adt_classrun~main.

    DATA string_1  TYPE string.

    string_1 = 'stressed'.

    DATA string_2  TYPE string.
    string_2 = reverse( string_1 ).

    out->write( string_1 ).
    out->write( string_2 ).


    endmethod.
endclass.