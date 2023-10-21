import 'package:easy_localization/easy_localization.dart';
import 'package:project/Constants/exports.dart';

class AddRequestForm extends StatelessWidget {
  const AddRequestForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            DropdownButtonFormField(
              borderRadius: BorderRadius.circular(20),
              key: viewModel.formkey,
              validator: (value) {
                if (value == tr("chooseAservice")) {
                  return "pleaseChooseAservice".tr();
                }
                return null;
              },
              iconEnabledColor: AppColors.redAccent,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: AppColors.redAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: AppColors.redAccent),
                ),
              ),
              isExpanded: true,
              style: const TextStyle(color: Colors.red, fontSize: 38.5),
              elevation: 4,
              value: tr("chooseAservice"),
              items: [
                ("chooseAservice"),
                ("ambulance"),
                ("police"),
                ("fire"),
                ("electricity"),
                ("naturalGas"),
              ]
                  .map(
                    (service) => DropdownMenuItem(
                      value: (service).tr(),
                      child: CustomText(
                        title: (service).tr(),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                viewModel.changeValue(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              labelText: tr("name"),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              labelText: tr("phone"),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              labelText: tr("address"),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              onPressed: () {
                if (viewModel.formkey.currentState!.validate()) {
                  RequestModel requestModel = RequestModel(
                    requestName: viewModel.dropdownValue,
                  );
                  viewModel.addRequest(requestModel);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RequestsPage(),
                    ),
                  );
                }

                viewModel.changeValue(tr("chooseAservice"));
              },
              backgroundColor: AppColors.white,
              child: CustomText(
                fontSize: 20,
                title: tr("buttonSave"),
              ),
            ),
          ],
        );
      },
    );
  }
}
