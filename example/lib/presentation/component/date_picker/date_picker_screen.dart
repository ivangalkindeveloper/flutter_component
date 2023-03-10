import 'package:example/presentation/config_section.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class DatePickerScreen extends StatelessWidget {
  const DatePickerScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final FCConfig config = FCConfig.of(context);
    final IFCTheme theme = config.theme;
    final IFCSize size = config.size;

    return FCScaffold(
      backgroundColor: theme.backgroundScaffold,
      appBar: FCScreenAppBar(
        context: context,
        title: "Date Picker",
        onPressedBack: () => Navigator.pop(context),
      ),
      body: FCListView(
        children: [
          const ConfigSection(),
          SizedBox(height: size.s16 / 2),
          FCPrimaryButton(
            title: "Open",
            onPressed: () => FCGlobal.showDateTimePicker(
              context: context,
              dateRange: FCDateRange(context: context),
              cupertinoModal: FCPopUpModal(
                backgroundColor: theme.backgroundScaffold,
                child: FCDatePicker(
                  dateRange: FCDateRange(context: context),
                  cupertinoOnChanged: (DateTime value) {},
                ),
              ),
              materialDialogLocale: const Locale("en", "EN"),
            ),
          ),
        ],
      ),
    );
  }
}
