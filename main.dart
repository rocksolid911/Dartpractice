import 'datajson.dart';
import 'dataprovider.dart';

Future<void> main() async {
  List<Assignment> lab = await DataProvider().lab();
  lab.forEach()
  print(lab[0].s40Document[0].documentName);
  List<Assignment> hwork = await DataProvider().homework();
  print(hwork[0].s40Document[0].documentName);
}
