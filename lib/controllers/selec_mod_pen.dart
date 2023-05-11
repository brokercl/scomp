import 'package:get/get.dart';

class SelecModPen extends GetxController {
  int numConsultasScomp = 0;
  int plazoSelecModPension = 35; // dias corridos

// TODO get fEmit from certif_saldo entity
  DateTime fEmitCertifSaldo = DateTime(2023, 4, 11); // example date
  DateTime now = DateTime.now();

  void selecModPens(int numConsScomp) {
    Duration diff = now.difference(fEmitCertifSaldo);
    int daysDiff = diff.inDays;
    print('Number of days between $fEmitCertifSaldo and $now: $daysDiff');
    if (numConsScomp > 0 && daysDiff <= plazoSelecModPension) {
      update(); // to update the UI if necessary
    }
  }

  // the rest of your code
}
