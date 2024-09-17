class zphone_number definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zphone_number implementation.
    method if_oo_adt_classrun~main.

        DATA(input) = `+1 (613)-995-0253`.

        DATA itab type table of string.

        DATA: s2 type string,
              s3 type string,
              s4 type string.

        s2 = substring_after( val = input sub = '(' ).
        s3 = translate( val = s2 from = ')' to = '' ).


        split s3 at '-' into table itab.

        s4 = concat_lines_of( table = itab ).

        out->write( s4 ).



    endmethod.
endclass.