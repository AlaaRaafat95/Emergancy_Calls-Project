import 'package:project/Constants/exports.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
    required this.children,
    required this.mainIcon,
  });

  final Widget mainIcon;
  final List<SpeedDialChild> children;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return SpeedDial(
          activeIcon: Icons.close,
          backgroundColor: AppColors.redAccent,
          overlayColor: AppColors.grey,
          elevation: 0,
          spaceBetweenChildren: 15,
          spacing: 10,
          children: children,
          child: mainIcon,
        );
      },
    );
  }
}
