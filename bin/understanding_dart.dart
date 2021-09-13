void main(List<String> arguments) {
  // ListOperations.play();
  ListOperations.add([1, 2, 3, 4]);
}

class ListOperations {
  static void play() {
    // var deserts = ['Cake', 'Egg-roll', 'Biscuits', 'Ice cream', 'Doughnut'];
    // deserts.forEach(print);
    // var bigDesert = [for (String desert in deserts) desert.toUpperCase()];
    // bigDesert.forEach(print);

    final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    final unmodifiableList = List.unmodifiable(list);
    list.add(4);
    unmodifiableList.add(3);
    print('List: $list');
    print('unmodifiableList: $unmodifiableList');
  }

  static void add(Iterable elements) {
    var total = 0;
    for (int i in elements) {
      total += i;
    }
    print('Sum: $total');
  }
}
