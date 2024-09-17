*&---------------------------------------------------------------------*
*& Report ZPROJETO_ESTAGIO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPROJETO_ESTAGIO.

class zprojeto_estagio definition.

  public section.

  class-methods: main,
                 handle_click FOR EVENT double_click OF cl_salv_events_table
                 IMPORTING row column.
  class-data: r_table type ref to cl_salv_table,
              t_outtab type standard table of mara,
              gr_columns TYPE REF TO cl_salv_columns_table,
              gr_column TYPE REF TO cl_salv_column_table,
              gr_display TYPE REF TO cl_salv_display_settings,
              color type lvc_s_colo,
              r_event TYPE REF TO cl_salv_events_table.

  protected section.
  private section.
endclass.



class zprojeto_estagio implementation.
    METHOD main.

    TYPES: begin of initial_type,
            material type matnr,
            desc type  maktx,
            group type matkl,
            desc_group type wgbez,
            lang type spras,
           end of initial_type.

    TYPES: res_table type table of initial_type.

    DATA: itab1 TYPE res_table.

    select MARA~matnr, MARA~matkl, MAKT~maktx, T~WGBEZ, T~SPRAS
    into table @itab1
    FROM mara as MARA
    INNER JOIN makt as MAKT
    ON MARA~matnr = MAKT~matnr
    INNER JOIN T023T as T
    ON T~matkl = MARA~matkl
    WHERE MARA~matkl = T~matkl AND MARA~matnr = MAKT~matnr.


    TRY.
    CALL METHOD cl_salv_table=>factory(
        importing
            r_salv_table = r_table
        changing
            t_table = itab1 ).
        CATCH cx_salv_msg.
    endtry.

    r_event = r_table->get_event( ).    "evento
    SET HANDLER zprojeto_estagio=>handle_click FOR r_event.  "event handler

    r_table->get_functions( )->set_all( abap_true ).



    gr_columns = r_table->get_columns( ).
    gr_columns->set_optimize( 'X' ).
    gr_display = r_table->get_display_settings( ).
    gr_display->set_striped_pattern( cl_salv_display_settings=>true ).

  TRY.
  gr_columns = r_table->get_columns( ).
 gr_column ?= gr_columns->get_column( 'material' ).
  color-col = '3'.
  color-int = '1'.
  color-inv = '0'.
  gr_column->set_color( color ).
  catch cx_salv_not_found.
  ENDTRY.

    r_table->display(  ).


    endmethod.

    METHOD handle_click.

    CALL TRANSACTION 'nm04' AND SKIP FIRST SCREEN.
    ENDMETHOD.

endclass.

START-OF-SELECTION.
  zprojeto_estagio=>main( ).