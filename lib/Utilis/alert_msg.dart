import 'package:easy_localization/easy_localization.dart';
import 'package:project/Constants/exports.dart';

class AlertMsg extends StatelessWidget {
  final VoidCallback onPressed;
  final String content;
  const AlertMsg({super.key, required this.onPressed, required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: CustomText(
        title: tr("deleteRequest"),
      ),
      content: CustomText(
        title: content,
        fontSize: 20,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: CustomText(
            title: tr("cancel"),
            fontSize: 20,
          ),
        ),
        CustomButton(
          backgroundColor: AppColors.redAccent,
          onPressed: onPressed,
          child: CustomText(
            color: AppColors.white,
            fontSize: 20,
            title: tr("confirm"),
          ),
        ),
      ],
    );
  }
}
