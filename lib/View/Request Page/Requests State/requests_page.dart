import 'package:project/Constants/exports.dart';

class RequestsPage extends StatelessWidget {
  const RequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          floatingActionButton: viewModel.requests.isNotEmpty
              ? const FloatingButtonForRequestsPage()
              : null,
          floatingActionButtonLocation:
              Localizations.localeOf(context).languageCode == "en"
                  ? FloatingActionButtonLocation.endFloat
                  : FloatingActionButtonLocation.startFloat,
          body: viewModel.requests.isNotEmpty
              ? const FullRequests()
              : const EmptyRequests(),
        );
      },
    );
  }
}
