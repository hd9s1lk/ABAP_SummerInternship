class zdna_hamming definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zdna_hamming implementation.
    method if_oo_adt_classrun~main.

        DATA: s1 type str,
              s2 type str,
              dif type i,
              tam type i,
              tamFinal type i.
              
        DATA itab1 type table of str.
        DATA itab2 type table of str.
        
        

        tam = strlen( s1 ).

        s1 = 'GAGCCTACTAACGGGAT'.
        s2 = 'CATCGTAATGACGGCCT'.

        
        ""acabar este





    endmethod.
endclass.