import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class PageIndicatorScreen extends StatefulWidget {
  const PageIndicatorScreen({Key? key}) : super(key: key);

  @override
  State<PageIndicatorScreen> createState() => _PageIndicatorScreenState();
}

class _PageIndicatorScreenState extends State<PageIndicatorScreen> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = FCConfig.of(context);
    final IFCTheme theme = config.theme;
    final IFCSize size = config.size;

    return FCScaffold(
      backgroundColor: theme.backgroundScaffold,
      appBar: FCScreenAppBar(
        context: context,
        title: "Page Indicator",
        onPressedBack: () => Navigator.pop(context),
      ),
      body: FCListView(
        children: [
          FCPrimaryButton(
            title: "Action",
            onPressed: () => setState(() {
              if (this._page == 3) {
                this._page = 0;
                return;
              }
              this._page++;
            }),
          ),
          Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FCText.regular16Black(
                    context: context,
                    text: "Slow",
                  ),
                  SizedBox(height: size.s16),
                  FCPrimarySlowPageIndicator(
                    length: 4,
                    currentIndex: this._page,
                  ),
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
                  FCPrimaryPageIndicator(
                    length: 4,
                    currentIndex: this._page,
                  ),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FCText.regular16Black(
                    context: context,
                    text: "Fast",
                  ),
                  SizedBox(height: size.s16),
                  FCPrimaryFastPageIndicator(
                    length: 4,
                    currentIndex: this._page,
                  ),
                ],
              ),
            ],
          ),
          // Slow
          SizedBox(height: size.s16 * 2),
          FCText.medium16Black(
            context: context,
            text: "Slow",
          ),
          SizedBox(height: size.s16),
          FCText.medium16Black(
            context: context,
            text: "Dark",
          ),
          SizedBox(height: size.s16),
          Wrap(
            spacing: size.s16,
            runSpacing: size.s16 / 2,
            children: [
              //TODO Slow Dark
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
              // TODO Slow Default
            ],
          ),
          SizedBox(height: size.s16),
          FCText.regular16Black(
            context: context,
            text: "Light",
          ),
          SizedBox(height: size.s16),
          Wrap(
            spacing: size.s16,
            runSpacing: size.s16 / 2,
            children: [
              // TODO Slow Light
            ],
          ),
          // Default
          SizedBox(height: size.s16 * 2),
          FCText.medium16Black(
            context: context,
            text: "Default",
          ),
          SizedBox(height: size.s16),
          FCText.medium16Black(
            context: context,
            text: "Dark",
          ),
          SizedBox(height: size.s16),
          Wrap(
            spacing: size.s16,
            runSpacing: size.s16 / 2,
            children: [
              // TODO Default Dark
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
              // TODO Default Default
            ],
          ),
          SizedBox(height: size.s16),
          FCText.regular16Black(
            context: context,
            text: "Light",
          ),
          SizedBox(height: size.s16),
          Wrap(
            spacing: size.s16,
            runSpacing: size.s16 / 2,
            children: [
              // TODO Default Light
            ],
          ),
          // Light
          SizedBox(height: size.s16 * 2),
          FCText.medium16Black(
            context: context,
            text: "Fast",
          ),
          SizedBox(height: size.s16),
          FCText.medium16Black(
            context: context,
            text: "Dark",
          ),
          SizedBox(height: size.s16),
          Wrap(
            spacing: size.s16,
            runSpacing: size.s16 / 2,
            children: [
              // TODO Fast Dark
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
              // TODO Fast Default
            ],
          ),
          SizedBox(height: size.s16),
          FCText.regular16Black(
            context: context,
            text: "Light",
          ),
          SizedBox(height: size.s16),
          Wrap(
            spacing: size.s16,
            runSpacing: size.s16 / 2,
            children: [
              // TODO Fast Light
            ],
          ),
        ],
      ),
    );
  }
}
