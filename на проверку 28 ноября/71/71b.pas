PROGRAM BubbleSort(INPUT, OUTPUT);  { СортируемпервуюстрокуINPUTвOUTPUT }
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN { BubbleSort }
  BEGIN { Копируем INPUT в F1 }
    REWRITE(F1);
    WHILE NOT EOLN(INPUT)
    DO
      BEGIN
        READ(INPUT, Ch);
        WRITE(F1, Ch);
      END;
    WRITELN(F1)
  END; { Копируем INPUT в F1 }
  {Sorted := 'N';
  WHILE Sorted = 'N'
  DO}
  BEGIN{ Копируем F1 в F2, первый символ F1 записывается в конец F2}
    //Sorted := 'Y';
    RESET(F1);
    REWRITE(F2);
    IF NOT EOF(F1)
    THEN
      BEGIN
        READ(F1, Ch1);
        WHILE NOT EOLN(F1)
        DO{ По крайней мере два символа остается для Ch1,Ch2 }
          BEGIN
            READ(F1, Ch2);
            WRITE(F2, Ch2)
          END;
          WRITELN(F2, Ch1) { Выводим последний символ в F2 }
      END
  END; {КопируемF1 вF2,первый символ F1 записывается в конец F2}
  BEGIN { Копируем F2 в F1 }
    RESET(F2);
    REWRITE(F1);
    WHILE NOT EOLN(F2)
      DO
        BEGIN
          READ(F2, Ch);
          WRITE(F1,Ch)
        END;
    WRITELN(F1)
  END; {Копируем F2 в F1 }
  BEGIN { Копируем F1 в OUTPUT }
    RESET(F1);
    WHILE NOT EOLN(F1)
    DO
      BEGIN
        READ(F1, Ch);
        WRITE(OUTPUT, Ch);
      END;
    WRITELN(OUTPUT)
  END   { Копируем F1 в OUTPUT }
END.{BubbleSort }

