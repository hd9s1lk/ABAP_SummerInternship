class ztwo_fer definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class ztwo_fer implementation.
    method if_oo_adt_classrun~main.
    
    DATA: nome type str.
    
    nome = ''.
    
    IF nome IS INITIAL.
        out->write( 'One for ' + nome + ', one for me').
    ELSE.
        out->write( 'One for you, one for me' ).
    endif. 
    
    endmethod.
endclass.