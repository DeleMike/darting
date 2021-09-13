void main(List<String> arguments) {
  //ListOperations.play();
  //ListOperations.add([1, 2, 3, 4]);
  //ListOperations.firstChallenge('I code quite frequently');
  ListOperations.secondChallenge('abbccbb');
}

class ListOperations {
  static void play() {
    var deserts = ['Cake', 'Egg-roll', 'Biscuits', 'Ice cream', 'Doughnut'];
    print(deserts.reversed);

    // var bigDesert = [for (String desert in deserts) desert.toUpperCase()];
    // bigDesert.forEach(print);

    // final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    // final unmodifiableList = List.unmodifiable(list);
    // list.add(4);
    // unmodifiableList.add(3);
    // print('List: $list');
    // print('unmodifiableList: $unmodifiableList');
  }

  static void add(Iterable elements) {
    var total = 0;
    for (int i in elements) {
      total += i;
    }
    print('Sum: $total');
  }

  static void firstChallenge(String paragraph) {
    var length = paragraph.length;
    var unique = <String>{};
    for (var i = 0; i < length; i++) {
      if (paragraph[i] == ' ') {
        continue;
      }
      unique.add(paragraph[i]);
    }

    print(unique);
  }

  //break into parts
  static void secondChallenge(String paragraph) {
    var length = paragraph.length;
    var listOfStrings = <String>[];
    var listOfLetters = <Letter>[];
    var foundLetters = <String>[];
    //var map = <String, int>{};

    for (var i = 0; i < length; i++) {
      listOfStrings.add(paragraph[i]);
    }

    for (var i = 0; i < listOfStrings.length; i++) {
      for (var item in foundLetters) {
        if (listOfStrings[i] == item) continue;
      }

      listOfLetters.add(Letter(
          value: listOfStrings[i],
          frequency: getCount(listOfStrings[i], listOfStrings)));
      foundLetters.add(listOfStrings[i]);
    }

    print(listOfLetters);
  }

  static int getCount(String value, List<String> letters) {
    var count = 0;
    for (var letter in letters) {
      if (value == letter) {
        count++;
      }
    }
    return count;
  }
}

class Letter {
  final String _value;
  final int _frequency;
  Letter({required String value, required int frequency})
      : _value = value,
        _frequency = frequency;
}
