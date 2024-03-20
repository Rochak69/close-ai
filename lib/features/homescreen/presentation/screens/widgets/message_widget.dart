import 'package:auto_route/auto_route.dart';
import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/constants/app_images.dart';
import 'package:close_ai/core/route/app_router.dart';
import 'package:close_ai/features/common/app_spacing.dart';
import 'package:close_ai/features/homescreen/presentation/bloc/home_bloc.dart';
import 'package:close_ai/features/homescreen/presentation/screens/widgets/rotating_gemini.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({required this.isLoading, super.key, this.contents});
  final Content? contents;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: AppColors.primaryLight,
        onLongPress: () {
          HapticFeedback.lightImpact();
          showModalBottomSheet(
            context: context,
            useSafeArea: true,
            builder: (context) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.copy_outlined),
                    title: const Text('Copy Text'),
                    onTap: () async {
                      Navigator.pop(context);
                      await Clipboard.setData(ClipboardData(text: _getText()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.edit_outlined),
                    title: const Text('Select Text'),
                    onTap: () {
                      Navigator.pop(context);
                      AutoRouter.of(context)
                          .push(SelectTextRoute(text: _getText()));
                    },
                  ),
                  if (contents?.role == 'model')
                    ListTile(
                      leading: const Icon(Icons.share_outlined),
                      title: const Text('Share Text'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  if (contents?.role == 'model')
                    ListTile(
                      leading: const Icon(Icons.record_voice_over_outlined),
                      title: const Text('Read Aloud'),
                      onTap: () {
                        BlocProvider.of<HomeBloc>(context)
                            .add(HomeEvent.speak(text: _getText()));
                        Navigator.pop(context);
                      },
                    ),
                  if (contents?.role == 'model')
                    ListTile(
                      leading: const Icon(Icons.refresh_outlined),
                      title: const Text('Regenerate response'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                ],
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: contents?.role == 'model' ? null : TextDirection.rtl,
            children: [
              if (contents?.role == 'model')
                isLoading
                    ? const RotatinGemini()
                    : SvgPicture.asset(
                        AppImages.geimini,
                        width: 24,
                      )
              else
                const Icon(
                  Icons.person,
                  color: AppColors.primaryDark,
                ),
              const HorizontalSpacing(4),
              Flexible(
                child: Column(
                  crossAxisAlignment: contents?.role == 'user'
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    ...getWidgets(),
                    if (isLoading && contents?.role == 'model')
                      const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: RotatinGemini(),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getWidgets() {
    final widgets = <Widget>[];
    var imageWidgets = <Widget>[];
    final contentParts = contents?.parts ?? [];
    for (final i in contentParts) {
      if (i is TextPart) {
        widgets.add(Text(i.text));
      } else if (i is DataPart) {
        imageWidgets.add(
          Image.memory(i.bytes),
        );
      }
    }
    if (imageWidgets.isNotEmpty) {
      imageWidgets = imageWidgets.reversed.toList();
      widgets.add(
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            reverse: true,
            padding: const EdgeInsets.symmetric(vertical: 4),
            separatorBuilder: (context, index) => const HorizontalSpacing(20),
            itemBuilder: (context, index) => imageWidgets[index],
            itemCount: imageWidgets.length,
          ),
        ),
      );
    }
    return widgets;
  }

  String _getText() {
    final firstPart = contents?.parts.first;
    if (firstPart is TextPart) {
      return firstPart.text;
    }
    return 'No Text';
  }
}
