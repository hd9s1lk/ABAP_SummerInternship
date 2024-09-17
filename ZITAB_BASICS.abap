class zitab_basics definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zitab_basics implementation.
    
    method if_oo_adt_classrun~main.
    TYPES group TYPE c length 1.
    TYPES str_type TYPE string.
    TYPES: BEGIN OF initial_type,
            group     TYPE group,
            number    TYPE i,
            desc      TYPE string,
           end of initial_type,
           itab_table TYPE TABLE OF initial_type WITH EMPTY KEY.

    DATA(it1) =  VALUE itab_table( ( group = 'A' number = 10  desc = 'Group A-4' )
                                   ( group = 'B' number = 5   desc = 'Group B'   )
                                   ( group = 'A' number = 6   desc = 'Group A-1' )
                                   ( group = 'C' number = 22  desc = 'Group C-1' )
                                   ( group = 'A' number = 13  desc = 'Group A-3' )
                                   ( group = 'C' number = 500 desc = 'Group C-2' ) ).

    out->write( it1 ).

    SORT it1 BY number ascending.

    out->write( it1 ).

    DATA result_index TYPE i.

    result_index = line_index( it1[ number = 6 ] ).

    out->write( result_index + 1 ). 


    endmethod.
endclass.