program penjumlahan_matriks;
var
  a, b, c: array[1..5, 1..5] of integer;
  baris1, kolom1, baris2, kolom2, i, j: integer;
begin
  repeat
    write('Jumlah baris matriks 1 (1-5): '); readln(baris1);
  until (baris1 >= 1) and (baris1 <= 5);
  repeat
    write('Jumlah kolom matriks 1 (1-5): '); readln(kolom1);
  until (kolom1 >= 1) and (kolom1 <= 5);
  repeat
    write('Jumlah baris matriks 2 (1-5): '); readln(baris2);
  until (baris2 >= 1) and (baris2 <= 5);
  repeat
    write('Jumlah kolom matriks 2 (1-5): '); readln(kolom2);
  until (kolom2 >= 1) and (kolom2 <= 5);

  if (baris1 = baris2) and (kolom1 = kolom2) then
  begin
    writeln('Matriks 1:');
    for i := 1 to baris1 do
      for j := 1 to kolom1 do
      begin
        write('Elemen [', i, ',', j, ']: ');
        readln(a[i, j]);
      end;

    writeln('Matriks 2:');
    for i := 1 to baris2 do
      for j := 1 to kolom2 do
      begin
        write('Elemen [', i, ',', j, ']: ');
        readln(b[i, j]);
      end;

    for i := 1 to baris1 do
      for j := 1 to kolom1 do
        c[i, j] := a[i, j] + b[i, j];

    writeln('Hasil penjumlahan:');
    for i := 1 to baris1 do
    begin
      for j := 1 to kolom1 do
        write(c[i, j]:5);
      writeln;
    end;
  end
  else
    writeln('Kedua matriks tidak dapat dijumlahkan.');
end.