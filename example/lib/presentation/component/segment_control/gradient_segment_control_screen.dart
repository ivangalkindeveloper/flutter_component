import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class GradientSegmentControlScreen extends StatefulWidget {
  const GradientSegmentControlScreen({Key? key});

  @override
  State<GradientSegmentControlScreen> createState() =>
      _GradientSegmentControlScreenState();
}

class _GradientSegmentControlScreenState extends State<GradientSegmentControlScreen> {
  String _action = "";

  @override
  Widget build(BuildContext context) {
    final FCConfig config = FCConfig.of(context);
    final IFCTheme theme = config.theme;
    final IFCSize size = config.size;

    return FCScaffold(
      backgroundColor: theme.backgroundScaffold,
      appBar: FCScreenAppBar(
        context: context,
        title: "Gradient Segment Control",
        onPressedBack: () => Navigator.pop(context),
      ),
      body: FCListView(
        children: [
          FCText.regular16Black(
            context: context,
            text: "Dark",
          ),
          SizedBox(height: size.s16),
          FCInfoDarkGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCSuccessDarkGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCGreyDarkGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCPrimaryDarkGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCDangerDarkGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCSecondaryDarkGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCWarningDarkGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 * 2),
          FCText.regular16Black(
            context: context,
            text: "Default",
          ),
          SizedBox(height: size.s16),
          FCInfoGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCSuccessGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCGreyGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCPrimaryGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCDangerGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCSecondaryGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCWarningGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 * 2),
          FCText.regular16Black(
            context: context,
            text: "Light",
          ),
          SizedBox(height: size.s16),
          FCInfoLightGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCSuccessLightGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCGreyLightGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCPrimaryLightGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCDangerLightGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCSecondaryLightGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
          SizedBox(height: size.s16 / 2),
          FCWarningLightGradientSegmentControl<String>(
            value: this._action,
            items: [
              FCSegmentControlItem(
                value: "First",
                title: "First",
              ),
              FCSegmentControlItem(
                value: "Second",
                title: "Second",
              ),
              FCSegmentControlItem(
                value: "Third",
                title: "Third",
              ),
            ],
            onChanged: (String value) => setState(() => this._action = value),
          ),
        ],
      ),
    );
  }
}
