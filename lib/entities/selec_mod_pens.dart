import 'package:isar/isar.dart';
import 'package:scomp/globals.dart';

part 'selec_mod_pens.g.dart';

@collection
class SelecModPens {
  Id? id; // you can also use id = null to auto increment

  int? numConsScomp;
  // final notes = IsarLinks<Note>();

// status has to be same name in user, student and teacher classes
  @enumerated
  ObjectStatus status;

  SelecModPens({
    required this.id,
    required this.status,
    required this.numConsScomp,
  });
}
