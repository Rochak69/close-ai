enum GeminiModelEnum { text, image }

extension GeminiModelString on GeminiModelEnum {
  String modelName() {
    switch (this) {
      case GeminiModelEnum.image:
        {
          return 'gemini-pro';
        }

      case GeminiModelEnum.text:
        {
          return 'gemini-pro-vision';
        }
    }
  }
}
