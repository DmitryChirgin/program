PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  BEGIN {инициализация W1,W2,W3,W4,Looking}
    W1 := ' ';
    W2 := ' ';
    W3 := ' ';
    W4 := ' ';
    Looking := 'Y';
  END; {инициализация W1,W2,W3,W4,Looking}
  WHILE Looking = 'Y'
  DO
    BEGIN 
      BEGIN { Двигатьокно,проверятьконецданных}
        W1 := W2;
        W2 := W3;
        W3 := W4;
        READ(W4);
        IF W4 = '#' 
        THEN {Конецданных}
          Looking := 'N'
      END; { Двигатьокно,проверятьконецданных}
      BEGIN {Проверка окна для  'land'}
        IF W1 = 'l'
        THEN
          IF W2 = 'a'
          THEN
            IF W3 = 'n'
            THEN
              IF W4 = 'd'
              THEN {'land' найдено}
                Looking := 'L'
      END; {Проверка окна для  'land'}
      BEGIN {Проверка окна для 'sea'}
        IF W2 = 's'
        THEN
          IF W3 = 'e'
          THEN
            IF W4 = 'a'
            THEN {'sea' найдено}
              Looking := 'S'
      END; { Проверка окна для 'sea'}
      BEGIN {Проверка окна для 'air'}
        IF W2 = 'a'
        THEN
          IF W3 = 'i'
          THEN
            IF W4 = 'r'
            THEN {'sea' найдено}
              Looking := 'A'
      END; { Проверка окна для 'air'}
    END;
  BEGIN {создатьсообщение Sarah}
    IF Looking <> 'N'
    THEN
      WRITE('The British are coming by ');
      IF Looking = 'L'
      THEN
        WRITELN('land.')
      ELSE
        IF Looking = 'S'
        THEN
          WRITELN('sea.')
        ELSE
          IF Looking = 'A'
          THEN
            WRITELN('air.') 
    ELSE
      WRITELN('Sarah didn''t say')
  END {создатьсообщение Sarah}
END. {Sarah revere}


