import 'package:project/Constants/exports.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 14 / 9),
      itemBuilder: (context, index) {
        return CustomCard(
            onTap: () {
              AppViewModel().emergancyDetails[index].number.isNotEmpty
                  ? AppViewModel().makeCall(index)
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddRequestPage(),
                      ),
                    );
            },
            name: AppViewModel().emergancyDetails[index].name,
            number: AppViewModel().emergancyDetails[index].number);
      },
      itemCount: AppViewModel().emergancyDetails.length,
    );
  }
}
