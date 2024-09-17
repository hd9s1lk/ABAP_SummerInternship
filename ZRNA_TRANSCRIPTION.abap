class zrna_transcription definition
  public
  final
  create public .

  public section.
  interfaces if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zrna_transcription implementation.
    method if_oo_adt_classrun~main.

    DATA: s1 type str.

    s1 = 'ACGTTCAGGACT'.

    REPLACE ALL occurrences of 'A' in s1 with 'U'.
    REPLACE ALL OCCURRENCES OF 'T' IN s1 with 'A'.
    REPLACE ALL OCCURRENCES OF 'C' IN s1 WITH 'G'.
    REPLACE ALL OCCURRENCES OF 'G' IN s1 WITH 'C'.



    out->write( s1 ).

    endmethod.
endclass.