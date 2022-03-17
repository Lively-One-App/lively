class AudioStream {
  AudioStream(
      {required this.name,
      required this.url,
      this.isDefault = false,
      this.bitRate,
      this.format = ''});
  final String name;
  final String url;
  final bool isDefault;
  int? bitRate;
  String format;
}
