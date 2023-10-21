import 'package:easy_localization/easy_localization.dart';
import 'package:project/Constants/exports.dart';

class RequestList extends StatelessWidget {
  const RequestList({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return CustomContainer(
          margin: const EdgeInsets.all(10),
          boxShadow: const [
            BoxShadow(
                blurStyle: BlurStyle.outer,
                blurRadius: 5,
                color: AppColors.grey),
          ],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomText(
                title: viewModel.requests[index].requestName.tr(),
                fontStyle: FontStyle.italic,
              ),
              CustomText(
                title: viewModel.requests[index].requestState.tr(),
                fontStyle: FontStyle.italic,
              ),
            ],
          ),
        );
      },
    );
  }
}
