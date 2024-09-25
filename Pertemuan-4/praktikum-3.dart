void main() {
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1,
  'nama': 'Faradilla Roudhotul S',
  'nim': '2241720205',
  };

  var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
  19: 'Faradilla Roudhotul S',
  20: '2241720205',
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  mhs1['nama'] = 'Faradilla Roudhotul S';
  mhs1['nim'] = '2241720205';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  mhs2[1] = 'Faradilla Roudhotul S';
  mhs2[2] = '2241720205';

  print(mhs1);
  print(mhs2);
}