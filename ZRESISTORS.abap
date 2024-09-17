class zresistors definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zresistors implementation.
    method if_oo_adt_classrun~main.

    TYPES: begin of initial_type,
            resistor_color type str,
            resistor_number type i,
           end of initial_type.

    TYPES: res_table type table of initial_type with non-unique key resistor_color.

    DATA: itab1 TYPE res_table.

    APPEND VALUE #( resistor_color = 'Black'  resistor_number = 1 ) to itab1.
    APPEND VALUE #( resistor_color = 'Brown'  resistor_number = 2 ) to itab1.
    APPEND VALUE #( resistor_color = 'Red'  resistor_number = 3 ) to itab1.
    APPEND VALUE #( resistor_color = 'Orange'  resistor_number = 4 ) to itab1.
    APPEND VALUE #( resistor_color = 'Yellow'  resistor_number = 5 ) to itab1.
    APPEND VALUE #( resistor_color = 'Green'  resistor_number = 5 ) to itab1.
    APPEND VALUE #( resistor_color = 'Blue'  resistor_number = 6 ) to itab1.
    APPEND VALUE #( resistor_color = 'Violet'  resistor_number = 7 ) to itab1.
    APPEND VALUE #( resistor_color = 'Grey'  resistor_number = 8 ) to itab1.
    APPEND VALUE #( resistor_color = 'White'  resistor_number = 9 ) to itab1.


    out->write( itab1 ).


    endmethod.
endclass.