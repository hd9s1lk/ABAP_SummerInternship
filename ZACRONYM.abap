class zacronym definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zacronym implementation.
    method if_oo_adt_classrun~main.

    DATA: str1           type string,
          str2           type string,
          str_final1     type string,
          str_final2     type string,
          str_final3     type string.

    str1 = 'Standard Query Language'.

    Split str1 at ' ' into str_final1 str_final2 str_final3.

    str_final1 = str_final1(1).


    str_final2 = str_final2(1).
    str_final3 = str_final3(1).

    out->write( str_final1 ).
    out->write( str_final2 ).
    out->write( str_final3 ).




    endmethod.
endclass.