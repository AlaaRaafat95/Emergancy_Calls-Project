import 'package:easy_localization/easy_localization.dart';
import 'package:project/Constants/exports.dart';

class FloatingButtonForRequestsPage extends StatelessWidget {
  const FloatingButtonForRequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return FloatingButton(
          mainIcon: const Icon(Icons.add),
          children: [
            SpeedDialChild(
                foregroundColor: Colors.red,
                label: tr("deleteAll"),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertMsg(
                            content: tr("doYouWantToDeleteAllRequests ?"),
                            onPressed: () {
                              viewModel.deleteAllRequests();
                              Navigator.pop(context);
                            });
                      });
                },
                labelStyle: const TextStyle(
                    color: AppColors.redAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                child: const Icon(Icons.delete_forever)),
            SpeedDialChild(
              foregroundColor: Colors.red,
              label: tr("addRequest"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddRequestPage(),
                  ),
                );
              },
              labelStyle: const TextStyle(
                  color: AppColors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              child: const Icon(Icons.add),
            ),
          ],
        );
      },
    );
  }
}
