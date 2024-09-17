class zcrypto_square definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zcrypto_square implementation.
    method if_oo_adt_classrun~main.

    DATA: itab type table of str,
          s1 type str,
          s2 type str,
          s3 type str,
          s4 type str,
          s5 type str,
          s6 type str,
          s7 type str,
          s8 type str.

    append 'if' to itab.
    append 'man' to itab.
    append 'was' to itab.
    append 'meant' to itab.
    append 'to' to itab.
    append 'stay' to itab.
    append 'on' to itab.
    append 'the' to itab.
    append 'ground' to itab.
    append 'god' to itab.
    append 'would' to itab.
    append 'have' to itab.
    append 'given' to itab.
    append 'us' to itab.
    append 'roots' to itab.

    concatenate lines of itab into DATA(res).

    out->write( res ).

    s2 = substring( val = res len = 8 ).
    s3 = substring( val = res off = 8 len = 8 ).
    s4 = substring( val = res off = 16 len = 8 ).
    s5 = substring( val = res off = 24 len = 8 ).
    s6 = substring( val = res off = 32 len = 8 ).
    s7 = substring( val = res off = 40 len = 8 ).
    s8 = substring( val = res off = 48 len = 6 ).

    out->write( s2 ).
    out->write( s3 ).
    out->write( s4 ).
    out->write( s5 ).
    out->write( s6 ).
    out->write( s7 ).
    out->write( s8 ).


    endmethod.
endclass.