import 'datajson.dart';
import 'datareader.dart';
import 'jclas.dart';

class DataProvider {
  List<Assignment> type_lab = [];
  List<Assignment> type_homework = [];
  List<Assignment> type_portfolio = [];

  Future<List<Assignment>> lab() async {
    //final String response = jclas().jsa();
    JsonDemo jsonDemo = await readjson();

    type_lab = jsonDemo.assignments
        .where((e) => e.s40AssignmentType == "Lab Record")
        .toList();
    print("no of LabRecords : ${type_lab.length}");
    return type_lab;
  }
  Future<List<Assignment>> homework() async {
    //final String response = jclas().jsa();
    JsonDemo jsonDemo = await readjson();

    type_homework = jsonDemo.assignments
        .where((e) => e.s40AssignmentType == "Home work")
        .toList();
    print("no of homework : ${type_homework.length}");
    return type_homework;
  }

   Future<List<Assignment>> portfolio() async {
    //final String response = jclas().jsa();
    JsonDemo jsonDemo = await readjson();

    type_portfolio = jsonDemo.assignments
        .where((e) => e.s40AssignmentType == "Port Folio")
        .toList();
    print("no of portfolio : ${type_portfolio.length}");
    return type_portfolio;
  }

}
