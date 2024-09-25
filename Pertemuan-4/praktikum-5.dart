void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
  }

  // Record type annotation in a variable declaration:
  var mahasiswa = ('Faradilla Roudhotul S', nim: 2241720205);
  print(mahasiswa);

  var mahasiswa2 = ('first', nim: 2241720205, b: true, 'last');
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.nim); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}