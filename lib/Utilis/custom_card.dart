import 'package:project/Constants/exports.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String number;
  final VoidCallback onTap;

  const CustomCard(
      {super.key,
      required this.name,
      required this.number,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: AppColors.grey,
      margin: const EdgeInsets.all(8),
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: AppColors.transparent,
        child: InkWell(
          splashColor: Colors.red.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomText(
                fontSize: 27,
                title: name,
              ),
              CustomText(
                fontSize: 27,
                title: number,
              )
            ],
          ),
        ),
      ),
    );
  }
}
