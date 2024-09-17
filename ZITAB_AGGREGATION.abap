class zitab_aggregation definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zitab_aggregation implementation.

     method if_oo_adt_classrun~main.
     TYPES group TYPE c length 1.
     TYPES: BEGIN OF initial_type,
            group     TYPE group,
            number    TYPE i,
           end of initial_type.
           
     TYPES: itab_table TYPE TABLE OF initial_type WITH EMPTY KEY.

     
     DATA itab type itab_table.
     
     APPEND VALUE #( number = 10 group = 'A') to itab.
     
     
     
     
     

     "mexer com aggregate functions SUM,MAX,MIN,AVG"
     SELECT SUM( number )
     FROM table
     WHERE group = 'A'
     INTO @DATA(somatorio).



     endmethod.
endclass.