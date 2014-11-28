PROGRAM BubbleSort(INPUT,OUTPUT);  { СортируемпервуюстрокуINPUTвOUTPUT }
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

