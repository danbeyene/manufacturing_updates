class CommentModel {
  String? photoUrl;
  String publisherName;
  bool isReply;
  String createdAt;
  bool? isApproved;
  String? adminName;
  String? approvedTime;
  String content;
  bool readStatus;
  bool isUpdateStatus;
  String? updatedStatusName;

  CommentModel(
      {this.photoUrl,
      required this.publisherName,
      required this.isReply,
      required this.createdAt,
      this.isApproved,
      this.adminName,
      this.approvedTime,
      required this.content,
      required this.readStatus,
      required this.isUpdateStatus,
      this.updatedStatusName});
}
