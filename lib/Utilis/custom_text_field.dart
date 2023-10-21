import 'package:project/Constants/exports.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String? Function(String?)? validator;

  const CustomTextField({super.key, required this.labelText, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 30),
        labelText: labelText,
        labelStyle: const TextStyle(color: AppColors.redAccent, fontSize: 20),
        floatingLabelStyle:
            const TextStyle(color: AppColors.redAccent, fontSize: 25),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.redAccent),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.redAccent),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
