       IDENTIFICATION DIVISION.
       PROGRAM-ID. MTABLE.
      *    Utilização do PERFORM N TIMES
      *    Programa para fazer uma tabuada
           
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       
       01  NUMERO PIC 99.
       01  MULTIPLICADOR PIC 999.
       01  PRODUTO PIC 9(4).
       01  QUANTOS PIC 99.
       
       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           PERFORM INICIALIZACAO-PROGRAMA.
           PERFORM PEGA-TABUADA.
           PERFORM EXIBIR-TABUADA.
       PROGRAM-END.
           STOP RUN.
           
           
       INICIALIZACAO-PROGRAMA.
           MOVE 0 TO MULTIPLICADOR.
           
       PEGA-TABUADA.
           DISPLAY "Qual a tabuada do multiplicador? (01-99)".
           ACCEPT NUMERO.
           DISPLAY "Qual o tamanho da tabuada?".
           ACCEPT QUANTOS.
           
       EXIBIR-TABUADA.
           DISPLAY "A tabuada do multiplicador de " NUMERO " E ".
           PERFORM CALCULA-E-EXIBE QUANTOS TIMES.
           
       CALCULA-E-EXIBE.
           ADD 1 TO MULTIPLICADOR.
           COMPUTE PRODUTO = NUMERO * MULTIPLICADOR.
           DISPLAY NUMERO " * " MULTIPLICADOR " = " PRODUTO.
