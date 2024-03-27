import 'package:close_ai/constants/app_constant.dart';
import 'package:close_ai/core/dio_provider/api_error.dart';
import 'package:close_ai/features/homescreen/data/model/content_response.dart';
import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';

const String apiKey = 'AIzaSyAzeTIqZvBLG1pYgw3cBm6f93zvpSV49kY';

@injectable
class GeminiClient {
  GeminiClient();

  static final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
  static final imagemodel =
      GenerativeModel(model: 'gemini-pro-vision', apiKey: apiKey);
  static ChatSession chatSession = model.startChat();

  Future<Either<AppError, String>> generateContentFromText({
    required String prompt,
  }) async {
    try {
      final response = await model.generateContent(
        [Content.text(prompt)],
      );
      if (response.text == null) {
        return left(
          const InternalAppError(message: 'Empty response from model'),
        );
      } else {
        return right(response.text!);
      }
    } catch (e) {
      return left(
        InternalAppError(
          message: e is GenerativeAIException
              ? e.message
              : AppConstants.errorMessage,
        ),
      );
    }
  }

  Future<Either<AppError, String>> generateContentFromImage({
    required String prompt,
    required Content content,
  }) async {
    try {
      final response = await imagemodel.generateContent(
        [content],
      );

      if (response.text == null) {
        return left(
          const InternalAppError(message: 'Empty response from model'),
        );
      } else {
        return right(response.text!);
      }
    } catch (e) {
      return left(
        InternalAppError(
          message: e is GenerativeAIException
              ? e.message
              : AppConstants.errorMessage,
        ),
      );
    }
  }

  Future<Either<AppError, Stream<GenerateContentResponse>>> chat({
    required String prompt,
  }) async {
    try {
      final b = chatSession.sendMessageStream(Content.text(prompt));
      return right(b);
    } catch (e) {
      return left(const InternalAppError());
    }
  }

  static Future<void> initChat({List<ContentResponse>? history}) async {
    var chathistory = history
        ?.map((e) => Content(e.role ?? '', [TextPart(e.text ?? '')]))
        .toList();
    chatSession = model.startChat(history: chathistory);
  }
}
