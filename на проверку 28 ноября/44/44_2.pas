PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  BEGIN {������������� W1,W2,W3,W4,Looking}
    W1 := ' ';
    W2 := ' ';
    W3 := ' ';
    W4 := ' ';
    Looking := 'Y';
  END; {������������� W1,W2,W3,W4,Looking}
  WHILE Looking = 'Y'
  DO
    BEGIN 
      BEGIN { �����������,��������������������}
        W1 := W2;
        W2 := W3;
        W3 := W4;
        READ(W4);
        IF W4 = '#' 
        THEN {�����������}
          Looking := 'N'
      END; { �����������,��������������������}
      BEGIN {�������� ���� ���  'land'}
        IF W1 = 'l'
        THEN
          IF W2 = 'a'
          THEN
            IF W3 = 'n'
            THEN
              IF W4 = 'd'
              THEN {'land' �������}
                Looking := 'L'
      END; {�������� ���� ���  'land'}
      BEGIN {�������� ���� ��� 'sea'}
        IF W2 = 's'
        THEN
          IF W3 = 'e'
          THEN
            IF W4 = 'a'
            THEN {'sea' �������}
              Looking := 'S'
      END; { �������� ���� ��� 'sea'}
      BEGIN {�������� ���� ��� 'air'}
        IF W2 = 'a'
        THEN
          IF W3 = 'i'
          THEN
            IF W4 = 'r'
            THEN {'sea' �������}
              Looking := 'A'
      END; { �������� ���� ��� 'air'}
    END;
  BEGIN {���������������� Sarah}
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
  END {���������������� Sarah}
END. {Sarah revere}


