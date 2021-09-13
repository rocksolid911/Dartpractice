import 'datajson.dart';
import 'dataprovider.dart';

Future<void> main() async {
  List<Assignment> lab = await DataProvider().lab();
  lab.forEach((e) => print(e.s40AssignedDate));
  print(lab[0].s40Document[0].documentName);


  List<Assignment> hwork = await DataProvider().homework();
  hwork.forEach((e) => print(e.s40AssignedDate));
  print(hwork[0].s40Document[0].documentName);
  
  List<Assignment> portfol = await DataProvider().portfolio();
  portfol.forEach((e) => print(e.s40AssignedDate));
  print(portfol[0].s40Document[0].documentName);
  
}
