import 'package:project/Constants/exports.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/emergancy.PNG",
                  height: 300,
                ),
                CustomButton(
                  backgroundColor: AppColors.white,
                  onPressed: () {
                    viewModel.changeLanguage(context, "ar");
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const CustomText(
                    title: "العربية",
                    fontSize: 30,
                  ),
                ),
                CustomButton(
                  backgroundColor: AppColors.white,
                  onPressed: () {
                    viewModel.changeLanguage(context, "en");
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const CustomText(title: "English"),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
