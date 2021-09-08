void main() {
  List<int> list1 = [1,2,3,4,5];
    
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
}
