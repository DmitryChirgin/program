PROGRAM BubbleSort(INPUT,OUTPUT);  { ���������������������INPUT�OUTPUT }
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN { BubbleSort }
  BEGIN { �������� INPUT � F1 }
    REWRITE(F1);
    WHILE NOT EOLN(INPUT)
    DO
      BEGIN
        READ(INPUT, Ch);
        WRITE(F1, Ch);
      END;
    WRITELN(F1)
  END; { �������� INPUT � F1 }
  BEGIN { �������� F1 � OUTPUT }
    RESET(F1);
    WHILE NOT EOLN(F1)
    DO
      BEGIN
        READ(F1, Ch);
        WRITE(OUTPUT, Ch);
      END;
    WRITELN(OUTPUT)
  END   { �������� F1 � OUTPUT }
END.{BubbleSort }

