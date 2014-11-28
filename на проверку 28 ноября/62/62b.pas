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
  BEGIN {����������� F1 � OUTPUT ��������� ��������� SelectSort}
    WRITE(OUTPUT, 'SORTED DATA:');
    RESET(F1);
    READ(F1, Ch);
    WHILE Ch<> '#'
    DO { Ch<> '#' � Ch1 - ������ ������ F1}
      BEGIN
        BEGIN {�������� ����������� �� F1}
          REWRITE(F2);
          Min := Ch;
          READ(F1, Ch);
          WHILE Ch<> '#'
          DO{ Ch<> '#' � Ch1 - ������ ������ F1}
            BEGIN
              BEGIN {�������� ����������� �� (Ch, Min) �������� ������ ������ � F2}
                IF Ch < Min
                THEN  {Ch - ����������� �� (Ch, Min)}
                  BEGIN
                    WRITE(F2, Min);
                    Min := Ch;
                  END
                ELSE {Min - ����������� �� (Ch, Min)}
                  WRITE(F2, Ch);
              END; {�������� ����������� �� (Ch, Min) �������� ������ ������ � F2}
              READ(F1, Ch)
            END;
          WRITELN(F2, '#');
        END; {�������� ����������� �� F1}
        WRITE(OUTPUT, Min);
        {�������� F2 � F1}
      END;  
    WRITELN(OUTPUT);
  END

  {����������� F1 � OUTPUT, ��������� ��������� SelectSort}
END. {SelectSort}

