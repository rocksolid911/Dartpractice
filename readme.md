 List<int> list1 = [1, 2, 3, 4, 5];

  List<String> list2 = ["a", "b", "c", "d", "e"];
  var mixlist = [1, "a", 2, "b", 3, "c", 4, "d", 5, "e"];
  //print("hello world");
  print(list1);
  //shuffle the list
  list1.shuffle();
  print(list1);
  print(list2);
  list2.shuffle();
  print(list2);
  //convert list to map with key as index
  Map<int, int> map1 = list1.asMap();
  print(map1);
  //filter the type from a mixed list
  var num = mixlist.whereType<int>();
  var letter = mixlist.whereType<String>();
  print(num);
  print(letter);
  // method returns elements from specified range [start] to [end]
  var range = mixlist.getRange(1, 4);
  print(range);
  //method helps to replace / update some elements of the given list with the new ones
  list1.replaceRange(2, 3, [10]);
  print(list1);
  //method returns the first element from the list when the given
  print(list1.firstWhere((i) => i < 8));
  print(list1.where((i) => i == 4));
  //method returns a single value by iterating all elements
  var fld = list1.fold(0, (i, j) => i + j);
  print(fld);
  //method is very similar to fold and returns a single value without initial value
  var red = list1.reduce((i, j) => i + j);
  print(red);
   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  var response = await http.get(url);
  print(response.body);
  //////////////////////////////////////////////////////////////////
Future<void> readJson() async {
    List<Assignment> type_lab = [];
    List<Assignment> type_homework = [];
    List<Assignment> type_portfolio = [];

    final String response = jclas().jsa();

    final jsonDemo = jsonDemoFromJson(response);

    //print(jsonDemo.assignments[0].s40Subject);
    // for (var i = 0; i <= jsonDemo.assignments.length; i++) {
    //   // print(jsonDemo.assignments
    //   //     .where((e) => e.s40AssignmentType=="Draft"));
    //   print(jsonDemo.assignments
    //       .contains(jsonDemo.assignments[0].s40Subject == "subject"));
    // }

    // subject =
    //     jsonDemo.assignments.where((e) => e.s40Subject == "physics").toList();
    // print("no of physics assignments : ${subject.length}");
    //print(subject[0].action);
    type_lab = jsonDemo.assignments
        .where((e) => e.s40AssignmentType == "Lab Record")
        .toList();
    print("no of LabRecords : ${type_lab.length}");
    type_homework = jsonDemo.assignments
        .where((e) =>
            e.s40AssignmentType == "Home work" && e.s40Subject == "Chemistry")
        .toList();
    print("no of Homeworks with chemistry sub : ${type_homework.length}");
    type_portfolio = jsonDemo.assignments
        .where((e) => e.s40AssignmentType == "Port Folio")
        .toList();
    print("no of portfolio : ${type_portfolio.length}");
  }


  /////////////////////////////////////////////////////////////////