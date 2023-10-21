import 'package:easy_localization/easy_localization.dart';
import 'package:project/Constants/exports.dart';

class AppViewModel extends ChangeNotifier {
  String dropdownValue = tr("chooseAservice");
  final formkey = GlobalKey<FormFieldState>();

  final List<CallModel> emergancyDetails = [
    CallModel(
      name: tr("ambulance"),
      number: tr("123"),
    ),
    CallModel(
      name: tr("police"),
      number: tr("122"),
    ),
    CallModel(
      name: tr("fire"),
      number: tr("180"),
    ),
    CallModel(
      name: tr("electricity"),
      number: tr("121"),
    ),
    CallModel(
      name: tr("naturalGas"),
      number: tr("129"),
    ),
    CallModel(name: tr("requestCall"), number: "")
  ];
  final List<RequestModel> requests = [];

  void addRequest(RequestModel requestModel) {
    requests.add(requestModel);
    notifyListeners();
  }

  void deleteRequest(int requestIndex) {
    requests.removeAt(requestIndex);
    notifyListeners();
  }

  void deleteAllRequests() {
    requests.clear();
    notifyListeners();
  }

  void makeCall(int index) async {
    final call = Uri.parse('tel: ${emergancyDetails[index].number} ');

    await launchUrl(call);
  }

  void changeValue(newValue) {
    dropdownValue = newValue;
    notifyListeners();
  }

  void changeLanguage(BuildContext context, String language) {
    context.setLocale(
      Locale(language),
    );
    notifyListeners();
  }
}
