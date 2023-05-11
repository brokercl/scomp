import 'package:isar/isar.dart';
import 'package:scomp/entities/user.dart';
import 'package:scomp/globals.dart';

part 'certif_saldo.g.dart';

@collection
class CertifSaldo {
  Id? id; // belong to causante

  DateTime? fEmitCertifSaldo;

  @Backlink(to: 'linkToCertifSaldo')
  final backLinkToCertifSaldo = IsarLink<User>();

// status has to be same name in user, student and teacher classes
  @enumerated
  ObjectStatus status;

  CertifSaldo({
    required this.id,
    required this.status,
    required this.fEmitCertifSaldo,
  });
}
