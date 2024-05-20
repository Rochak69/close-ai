import 'package:close_ai/constants/app_colors.dart';
import 'package:close_ai/enum/gemini_model_enum.dart';
import 'package:close_ai/features/homescreen/data/model/conversation_response.dart';
import 'package:close_ai/features/homescreen/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ConversationTile extends StatelessWidget {
  const ConversationTile({required this.conversation, super.key});
  final ConversationResponse conversation;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      // Specify a key if the Slidable is dismissible.
      key: const ValueKey(0),

      // The start action pane is the one at the left or the top side.

      // The end action pane is the one at the right or the bottom side.
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.3,
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: AppColors.colorRed,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),

      // The child of the Slidable is what the user sees when the
      // component is not dragged.
      child: ListTile(
        style: ListTileStyle.drawer,
        onTap: () {
          Navigator.pop(context);
          BlocProvider.of<HomeBloc>(context).add(
            HomeEvent.selectChat(
              id: conversation.id ?? '',
              title: conversation.title ?? '',
              geminiModelEnum:
                  conversation.geminiModelEnum ?? GeminiModelEnum.text,
            ),
          );
        },
        title: Text(
          conversation.title ?? '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
