import 'dart:io';

import 'package:close_ai/constants/app_constant.dart';
import 'package:close_ai/core/dio_provider/api_error.dart';
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
    List<File>? files,
  }) async {
    try {
      final partedText = TextPart(prompt);
      if (files == null || files.isEmpty) {
        // Handle the case where no files are provided
        return left(const InternalAppError());
      }

      final bytesImages = await Future.wait(
        files.map((file) => file.readAsBytes()),
      );
      final imageParts = bytesImages.map((e) => DataPart('image/jpeg', e));
      final response = await imagemodel.generateContent(
        [
          Content.multi([partedText, ...imageParts]),
        ],
      );
      print(response.text);
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
}
