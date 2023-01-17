// ignore_for_file: file_names

class PhraseGetModel {
  String? phraseId;
  String? english;
  String? audioUrl;
  String? targetLanguage;
  String? languageId;

  PhraseGetModel(
      {this.phraseId,
      this.english,
      this.audioUrl,
      this.targetLanguage,
      this.languageId});

  PhraseGetModel.fromJson(Map<String, dynamic> json) {
    phraseId = json['_id'];
    english = json['english'];
    audioUrl = json['audioUrl'];
    targetLanguage = json['targetLanguage'];
    languageId = json['language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = phraseId;
    data['english'] = english;
    data['audioUrl'] = audioUrl;
    data['targetLanguage'] = targetLanguage;
    data['language'] = languageId;
    return data;
  }
}
