import 'package:easy_localization/easy_localization.dart';
import 'package:project/Constants/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return Scaffold(
        floatingActionButtonLocation:
            Localizations.localeOf(context).languageCode == "en"
                ? FloatingActionButtonLocation.endFloat
                : FloatingActionButtonLocation.startFloat,
        floatingActionButton: const FloatingButtonForHomePage(),
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomContainer(
                  child: CustomText(
                    fontSize: 30,
                    title: tr("emergencyCalls"),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: const CustomGridView(),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
