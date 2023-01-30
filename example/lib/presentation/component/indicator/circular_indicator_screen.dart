import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class CircularIndicatorScreen extends StatelessWidget {
  const CircularIndicatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FCConfig config = FCConfig.of(context);
    final IFCTheme theme = config.theme;
    final IFCSize size = config.size;

    return FCScaffold(
      backgroundColor: theme.backgroundScaffold,
      appBar: FCScreenAppBar(
        context: context,
        title: "Circular Indicator",
        onPressedBack: () => Navigator.pop(context),
      ),
      body: FCListView(
        children: [
          Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FCText.regular16Black(
                    context: context,
                    text: "Small",
                  ),
                  SizedBox(height: size.s16),
                  FCCircularIndicator.smallPrimary(context: context),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FCText.regular16Black(
                    context: context,
                    text: "Default",
                  ),
                  SizedBox(height: size.s16),
                  FCCircularIndicator.primary(context: context),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FCText.regular16Black(
                    context: context,
                    text: "Large",
                  ),
                  SizedBox(height: size.s16),
                  FCCircularIndicator.largePrimary(context: context),
                ],
              ),
            ],
          ),
          SizedBox(height: size.s16 * 4),
          FCText.regular16Black(
            context: context,
            text: "Small",
          ),
          SizedBox(height: size.s16),
          Wrap(
            spacing: size.s16,
            runSpacing: size.s16 / 2,
            children: [
              FCCircularIndicator.smallWhite(
                context: context,
              ),
              FCCircularIndicator.smallWhiteAlways(
                context: context,
              ),
              FCCircularIndicator.smallBlack(
                context: context,
              ),
              FCCircularIndicator.smallBlackAlways(
                context: context,
              ),
              FCCircularIndicator.smallPrimary(
                context: context,
              ),
              FCCircularIndicator.smallPrimaryButton(
                context: context,
              ),
              FCCircularIndicator.smallPrimaryGradient(
                context: context,
              ),
              FCCircularIndicator.smallPrimaryLight(
                context: context,
              ),
              FCCircularIndicator.smallPrimaryLightGradient(
                context: context,
              ),
              FCCircularIndicator.smallPrimaryDark(
                context: context,
              ),
              FCCircularIndicator.smallPrimaryDarkGradient(
                context: context,
              ),
              FCCircularIndicator.smallSecondary(
                context: context,
              ),
              FCCircularIndicator.smallSecondaryButton(
                context: context,
              ),
              FCCircularIndicator.smallSecondaryGradient(
                context: context,
              ),
              FCCircularIndicator.smallSecondaryLight(
                context: context,
              ),
              FCCircularIndicator.smallSecondaryLightGradient(
                context: context,
              ),
              FCCircularIndicator.smallSecondaryDark(
                context: context,
              ),
              FCCircularIndicator.smallSecondaryDarkGradient(
                context: context,
              ),
              FCCircularIndicator.smallGrey(
                context: context,
              ),
              FCCircularIndicator.smallGreyGradient(
                context: context,
              ),
              FCCircularIndicator.smallGreyLight(
                context: context,
              ),
              FCCircularIndicator.smallGreyLightGradient(
                context: context,
              ),
              FCCircularIndicator.smallGreyDark(
                context: context,
              ),
              FCCircularIndicator.smallGreyDarkGradient(
                context: context,
              ),
              FCCircularIndicator.smallBlue(
                context: context,
              ),
              FCCircularIndicator.smallBlueGradient(
                context: context,
              ),
              FCCircularIndicator.smallBlueLight(
                context: context,
              ),
              FCCircularIndicator.smallBlueLightGradient(
                context: context,
              ),
              FCCircularIndicator.smallBlueDark(
                context: context,
              ),
              FCCircularIndicator.smallBlueDarkGradient(
                context: context,
              ),
              FCCircularIndicator.smallGreen(
                context: context,
              ),
              FCCircularIndicator.smallGreenGradient(
                context: context,
              ),
              FCCircularIndicator.smallGreenLight(
                context: context,
              ),
              FCCircularIndicator.smallGreenLightGradient(
                context: context,
              ),
              FCCircularIndicator.smallGreenDark(
                context: context,
              ),
              FCCircularIndicator.smallGreenDarkGradient(
                context: context,
              ),
              FCCircularIndicator.smallYellow(
                context: context,
              ),
              FCCircularIndicator.smallYellowGradient(
                context: context,
              ),
              FCCircularIndicator.smallYellowLight(
                context: context,
              ),
              FCCircularIndicator.smallYellowLightGradient(
                context: context,
              ),
              FCCircularIndicator.smallYellowDark(
                context: context,
              ),
              FCCircularIndicator.smallYellowDarkGradient(
                context: context,
              ),
              FCCircularIndicator.smallRed(
                context: context,
              ),
              FCCircularIndicator.smallRedGradient(
                context: context,
              ),
              FCCircularIndicator.smallRedLight(
                context: context,
              ),
              FCCircularIndicator.smallRedLightGradient(
                context: context,
              ),
              FCCircularIndicator.smallRedDark(
                context: context,
              ),
              FCCircularIndicator.smallRedDarkGradient(
                context: context,
              ),
            ],
          ),
          SizedBox(height: size.s16),
          FCText.regular16Black(
            context: context,
            text: "Default",
          ),
          SizedBox(height: size.s16),
          Wrap(
            spacing: size.s16,
            runSpacing: size.s16 / 2,
            children: [
              FCCircularIndicator.white(
                context: context,
              ),
              FCCircularIndicator.whiteAlways(
                context: context,
              ),
              FCCircularIndicator.black(
                context: context,
              ),
              FCCircularIndicator.blackAlways(
                context: context,
              ),
              FCCircularIndicator.primary(
                context: context,
              ),
              FCCircularIndicator.primaryButton(
                context: context,
              ),
              FCCircularIndicator.primaryGradient(
                context: context,
              ),
              FCCircularIndicator.primaryLight(
                context: context,
              ),
              FCCircularIndicator.primaryLightGradient(
                context: context,
              ),
              FCCircularIndicator.primaryDark(
                context: context,
              ),
              FCCircularIndicator.primaryDarkGradient(
                context: context,
              ),
              FCCircularIndicator.secondary(
                context: context,
              ),
              FCCircularIndicator.secondaryButton(
                context: context,
              ),
              FCCircularIndicator.secondaryGradient(
                context: context,
              ),
              FCCircularIndicator.secondaryLight(
                context: context,
              ),
              FCCircularIndicator.secondaryLightGradient(
                context: context,
              ),
              FCCircularIndicator.secondaryDark(
                context: context,
              ),
              FCCircularIndicator.secondaryDarkGradient(
                context: context,
              ),
              FCCircularIndicator.grey(
                context: context,
              ),
              FCCircularIndicator.greyGradient(
                context: context,
              ),
              FCCircularIndicator.greyLight(
                context: context,
              ),
              FCCircularIndicator.greyLightGradient(
                context: context,
              ),
              FCCircularIndicator.greyDark(
                context: context,
              ),
              FCCircularIndicator.greyDarkGradient(
                context: context,
              ),
              FCCircularIndicator.blue(
                context: context,
              ),
              FCCircularIndicator.blueGradient(
                context: context,
              ),
              FCCircularIndicator.blueLight(
                context: context,
              ),
              FCCircularIndicator.blueLightGradient(
                context: context,
              ),
              FCCircularIndicator.blueDark(
                context: context,
              ),
              FCCircularIndicator.blueDarkGradient(
                context: context,
              ),
              FCCircularIndicator.green(
                context: context,
              ),
              FCCircularIndicator.greenGradient(
                context: context,
              ),
              FCCircularIndicator.greenLight(
                context: context,
              ),
              FCCircularIndicator.greenLightGradient(
                context: context,
              ),
              FCCircularIndicator.greenDark(
                context: context,
              ),
              FCCircularIndicator.greenDarkGradient(
                context: context,
              ),
              FCCircularIndicator.yellow(
                context: context,
              ),
              FCCircularIndicator.yellowGradient(
                context: context,
              ),
              FCCircularIndicator.yellowLight(
                context: context,
              ),
              FCCircularIndicator.yellowLightGradient(
                context: context,
              ),
              FCCircularIndicator.yellowDark(
                context: context,
              ),
              FCCircularIndicator.yellowDarkGradient(
                context: context,
              ),
              FCCircularIndicator.red(
                context: context,
              ),
              FCCircularIndicator.redGradient(
                context: context,
              ),
              FCCircularIndicator.redLight(
                context: context,
              ),
              FCCircularIndicator.redLightGradient(
                context: context,
              ),
              FCCircularIndicator.redDark(
                context: context,
              ),
              FCCircularIndicator.redDarkGradient(
                context: context,
              ),
            ],
          ),
          SizedBox(height: size.s16),
          FCText.regular16Black(
            context: context,
            text: "Large",
          ),
          SizedBox(height: size.s16),
          Wrap(
            spacing: size.s16,
            runSpacing: size.s16 / 2,
            children: [
              FCCircularIndicator.largeWhite(
                context: context,
              ),
              FCCircularIndicator.largeWhiteAlways(
                context: context,
              ),
              FCCircularIndicator.largeBlack(
                context: context,
              ),
              FCCircularIndicator.largeBlackAlways(
                context: context,
              ),
              FCCircularIndicator.largePrimary(
                context: context,
              ),
              FCCircularIndicator.largePrimaryButton(
                context: context,
              ),
              FCCircularIndicator.largePrimaryGradient(
                context: context,
              ),
              FCCircularIndicator.largePrimaryLight(
                context: context,
              ),
              FCCircularIndicator.largePrimaryLightGradient(
                context: context,
              ),
              FCCircularIndicator.largePrimaryDark(
                context: context,
              ),
              FCCircularIndicator.largePrimaryDarkGradient(
                context: context,
              ),
              FCCircularIndicator.largeSecondary(
                context: context,
              ),
              FCCircularIndicator.largeSecondaryButton(
                context: context,
              ),
              FCCircularIndicator.largeSecondaryGradient(
                context: context,
              ),
              FCCircularIndicator.largeSecondaryLight(
                context: context,
              ),
              FCCircularIndicator.largeSecondaryLightGradient(
                context: context,
              ),
              FCCircularIndicator.largeSecondaryDark(
                context: context,
              ),
              FCCircularIndicator.largeSecondaryDarkGradient(
                context: context,
              ),
              FCCircularIndicator.largeGrey(
                context: context,
              ),
              FCCircularIndicator.largeGreyGradient(
                context: context,
              ),
              FCCircularIndicator.largeGreyLight(
                context: context,
              ),
              FCCircularIndicator.largeGreyLightGradient(
                context: context,
              ),
              FCCircularIndicator.largeGreyDark(
                context: context,
              ),
              FCCircularIndicator.largeGreyDarkGradient(
                context: context,
              ),
              FCCircularIndicator.largeBlue(
                context: context,
              ),
              FCCircularIndicator.largeBlueGradient(
                context: context,
              ),
              FCCircularIndicator.largeBlueLight(
                context: context,
              ),
              FCCircularIndicator.largeBlueLightGradient(
                context: context,
              ),
              FCCircularIndicator.largeBlueDark(
                context: context,
              ),
              FCCircularIndicator.largeBlueDarkGradient(
                context: context,
              ),
              FCCircularIndicator.largeGreen(
                context: context,
              ),
              FCCircularIndicator.largeGreenGradient(
                context: context,
              ),
              FCCircularIndicator.largeGreenLight(
                context: context,
              ),
              FCCircularIndicator.largeGreenLightGradient(
                context: context,
              ),
              FCCircularIndicator.largeGreenDark(
                context: context,
              ),
              FCCircularIndicator.largeGreenDarkGradient(
                context: context,
              ),
              FCCircularIndicator.largeYellow(
                context: context,
              ),
              FCCircularIndicator.largeYellowGradient(
                context: context,
              ),
              FCCircularIndicator.largeYellowLight(
                context: context,
              ),
              FCCircularIndicator.largeYellowLightGradient(
                context: context,
              ),
              FCCircularIndicator.largeYellowDark(
                context: context,
              ),
              FCCircularIndicator.largeYellowDarkGradient(
                context: context,
              ),
              FCCircularIndicator.largeRed(
                context: context,
              ),
              FCCircularIndicator.largeRedGradient(
                context: context,
              ),
              FCCircularIndicator.largeRedLight(
                context: context,
              ),
              FCCircularIndicator.largeRedLightGradient(
                context: context,
              ),
              FCCircularIndicator.largeRedDark(
                context: context,
              ),
              FCCircularIndicator.largeRedDarkGradient(
                context: context,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
