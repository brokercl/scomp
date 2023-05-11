import 'package:isar/isar.dart';
import 'package:scomp/entities/certif_saldo.dart';
import 'package:scomp/globals.dart';

part 'user.g.dart';

@collection
class User {
  Id? id; // you can also use id = null to auto increment

// index se escribe sobre el campo que se desea indexar..
// en este caso  @Index va a ser efecto sobre email
  @Index(
    type: IndexType.value,
    unique: true,
  )
  String? email;

  String? password;

// role has to be same name in user, student and teacher classes
  @enumerated
  Role role;

  final linkToCertifSaldo = IsarLink<CertifSaldo>();

// status has to be same name in user, student and teacher classes
  @enumerated
  ObjectStatus status;

  User({
    required this.id,
    required this.email,
    required this.password,
    required this.role,
    required this.status,
  });
}
