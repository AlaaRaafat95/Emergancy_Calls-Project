import 'package:project/Constants/exports.dart';

class AddRequestPage extends StatelessWidget {
  const AddRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: AddRequestForm(),
        ),
      ),
    );
  }
}
