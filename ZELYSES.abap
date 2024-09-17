class zelyses definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zelyses implementation.
    method if_oo_adt_classrun~main.

**********************************************************************
""Primeiro exercício
**********************************************************************

    TYPES: begin of initial_type,
           nr_carta type str,
           end of initial_type.

    TYPES: res_table type table of initial_type with empty key.

    DATA: itab type res_table.

    APPEND VALUE #( nr_carta = '1' ) to itab.
    APPEND VALUE #( nr_carta = '2' ) to itab.
    APPEND VALUE #( nr_carta = '4' ) to itab.
    APPEND VALUE #( nr_carta = '1' ) to itab.

    out->write( itab ).

    DATA(carta) = itab[ 3 ].

    out->write( carta ).

**********************************************************************
""Segundo exercício
**********************************************************************

    itab[ 3 ] = '6'.

    out->write( itab ).


**********************************************************************
""Terceiro exercício
**********************************************************************

    APPEND VALUE #( nr_carta = '8' ) to itab.

    out->write( itab ).

**********************************************************************
""Quarto exercício
**********************************************************************

    DELETE itab  INDEX 3.

    out->write( itab ).

**********************************************************************
""Quinto exercício
**********************************************************************

    DATA: tam type i.

    tam = lines( itab ).

    DELETE ITAB index tam.

    out->write( itab ).

**********************************************************************
""Sexto exercício
**********************************************************************

    INSERT '8' into itab index 1.

    out->write( itab ).

**********************************************************************
""Sétimo exercício
**********************************************************************

    DELETE itab index 1.

    out->write( itab ).

**********************************************************************
""Oitavo exercício
**********************************************************************

    DATA tamanhoFinal type i.

    tamanhoFinal = lines( itab ).
    out->write( tamanhoFinal ).



    endmethod.
endclass.