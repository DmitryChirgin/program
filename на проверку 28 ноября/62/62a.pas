PROGRAM SelectSort (INPUT, OUTPUT);
{Сортирует символы, предшествующие # из INPUT в OUTPUT.
Программа выдаст ошибку, если в INPUT отсутствует #}
VAR
  Ch, Min: CHAR;
  F1, F2: TEXT;
BEGIN {SelectSort}
  BEGIN {КопироватьINPUTвF1 иэховOUTPUT}
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
  END; {Копировать INPUT в F1 и эхо в OUTPUT}
  BEGIN {Копируем F1 в OUTPUT без сортировки}
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
  END {Копируем F1 в OUTPUT без сортировки}
END. {SelectSort}

