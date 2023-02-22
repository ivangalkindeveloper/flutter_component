import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final FCConfig config = FCConfig.of(context);
    final IFCTheme theme = config.theme;

    return FCScaffold(
      backgroundColor: theme.backgroundScaffold,
      appBar: FCScreenAppBar(
        context: context,
        title: "Dialog",
        onPressedBack: () => Navigator.pop(context),
      ),
      body: SafeArea(
        child: FCPadding(
          child: FCPrimaryButton(
            title: "Action",
            onPressed: () => FCGlobal.showDialog(
              context: context,
              child: FCDialog(
                title: "Title",
                description: "Description",
                items: [
                  FCDialogItem(
                    color: theme.primary,
                    title: "Cancel",
                    onPressed: () => Navigator.pop(context),
                  ),
                  FCDialogItem(
                    color: theme.primary,
                    title: "Confirm",
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
