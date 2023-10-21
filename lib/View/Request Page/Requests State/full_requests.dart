import 'package:easy_localization/easy_localization.dart';
import 'package:project/Constants/exports.dart';

class FullRequests extends StatelessWidget {
  const FullRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomContainer(
                child: CustomText(
                  fontSize: 30,
                  title: tr("requests"),
                ),
              ),
              CustomText(
                title: tr("youCanSwipToDeleteYourRequest"),
                fontSize: 15,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 2,
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return RequestSwip(index: index);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 5);
                    },
                    itemCount: viewModel.requests.length),
              ),
            ],
          ),
        ),
      );
    });
  }
}
