import 'package:easy_localization/easy_localization.dart';
import 'package:project/Constants/exports.dart';

class RequestSwip extends StatelessWidget {
  const RequestSwip({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Dismissible(
          key: ValueKey<RequestModel>(viewModel.requests[index]),
          confirmDismiss: (direction) async {
            if (direction == DismissDirection.startToEnd) {
              return await showDialog(
                context: context,
                builder: (context) {
                  return AlertMsg(
                    content: tr("doYouWantToDeleteThisRequest ?"),
                    onPressed: () {
                      viewModel.deleteRequest(index);
                      Navigator.pop(context);
                    },
                  );
                },
              );
            }

            return null;
          },
          background: Swip(
            icon: Icons.delete_outline,
            title: tr("delete"),
            color: AppColors.redAccent,
          ),
          secondaryBackground: Swip(
            icon: Icons.archive_outlined,
            title: tr("archive"),
            color: AppColors.grey,
          ),
          child: RequestList(
            index: index,
          ),
        );
      },
    );
  }
}
