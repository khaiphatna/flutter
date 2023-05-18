void main() {
  final phones = <String>['Nokia', 'Xiaomi', 'iPhone'];

  print(phones);
  print('${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');

  final indexXiaomi = phones.indexOf('Xiaomi');
  final indexiPhone = phones.indexOf('iPhone');
  if (indexXiaomi != -1 && indexiPhone != -1) {
    final temp = phones[indexXiaomi];
    phones[indexXiaomi] = phones[indexiPhone];
    phones[indexiPhone] = temp;
  }

  print(phones);
  print('${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
}
