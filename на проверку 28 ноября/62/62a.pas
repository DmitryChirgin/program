PROGRAM SelectSort (INPUT, OUTPUT);
{��������� �������, �������������� # �� INPUT � OUTPUT.
��������� ������ ������, ���� � INPUT ����������� #}
VAR
  Ch, Min: CHAR;
  F1, F2: TEXT;
BEGIN {SelectSort}
  BEGIN {����������INPUT�F1 �����OUTPUT}
  REWRITE(F1); 
  WRITE(OUTPUT, 'INPUT DATA:');
  READ(INPUT, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(F1, Ch);
      READ(INPUT, Ch)
    END;
  WRITELN(F1, '#')
  END; {���������� INPUT � F1 � ��� � OUTPUT}
  BEGIN {�������� F1 � OUTPUT ��� ����������}
    WRITE(OUTPUT, 'SORTED DATA:');
    RESET(F1);
    READ(F1, Ch);
    WHILE Ch<> '#'
    DO
      BEGIN
        WRITE(OUTPUT, Ch);
        READ(F1, Ch)
      END;  
    WRITELN(OUTPUT)
  END {�������� F1 � OUTPUT ��� ����������}
END. {SelectSort}

