void main(List<String> arguments) {
  //ListOperations.play();
  //ListOperations.add([1, 2, 3, 4]);
  //ListOperations.firstChallenge('I code quite frequently');

  // var bigText = '''
  // Write a function that takes a paragraph
  // of text and returns a collection of unique
  // String characters that the text contains.
  // ''';
  // print(ListOperations.secondChallenge(bigText));

  ListOperations.challengeThree();
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

  static Map<String, int> secondChallenge(String paragraph) {
    var length = paragraph.length;
    var listOfStrings = <String>[];
    var foundLetters = <String>[];
    var nums = [];
    var map = <String, int>{};

    //break into parts and change all to lower case
    for (var i = 0; i < length; i++) {
      listOfStrings.add(paragraph[i].toLowerCase());
    }

    // check if the letter in [listOfStrings] has been found before
    // if it has skip it
    // else count how many type of the same letter is present in the list
    for (var item in listOfStrings) {
      if (foundLetters.contains(item)) continue;

      nums.add(getCount(item, listOfStrings));
      foundLetters.add(item);
    }

    // add the values to a map
    for (var index = 0; index < foundLetters.length; index++) {
      map[foundLetters[index]] = nums[index];
    }

    return map;
  }

  ///gets the frequency of a letter in the given list
  static int getCount(String value, List<String> letters) {
    var count = 0;
    for (var letter in letters) {
      if (value == letter) {
        count++;
      }
    }
    return count;
  }

  static void challengeThree() {
    var users = [
      User(1, 'Akin'),
      User(2, 'Peace'),
      User(3, 'David'),
    ];

    var newList = users
        .map((user) => {
              'id': user.mId,
              'name': user.mName,
            })
        .toList();

    print(newList);
  }
}

class User {
  int mId = 0;
  String mName = 'Anon';

  User(int id, String name) {
    mId = id;
    mName = name;
  }
}
