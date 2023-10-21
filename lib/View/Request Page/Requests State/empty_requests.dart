import 'package:easy_localization/easy_localization.dart';
import 'package:project/Constants/exports.dart';

class EmptyRequests extends StatelessWidget {
  const EmptyRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/no_requests.png",
            height: 200,
          ),
          const SizedBox(
            height: 70,
          ),
          CustomText(
            title: tr("thereAreNoRequestsYet"),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            backgroundColor: AppColors.redAccent,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddRequestPage(),
                ),
              );
            },
            child: CustomText(
              fontSize: 20,
              color: AppColors.white,
              title: tr("addRequest"),
            ),
          ),
        ],
      ),
    );
  }
}
