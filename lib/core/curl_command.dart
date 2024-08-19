class CurlCommand {
  final String type;
  final String uuid;
  final Map<String, dynamic> args;
  const CurlCommand(
      {required this.type, required this.uuid, required this.args});

  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "uuid": uuid,
      "args": args,
    };
  }
}
