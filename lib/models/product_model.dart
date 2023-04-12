import 'package:manufacturing_updates/models/order_model.dart';
import 'package:manufacturing_updates/models/comment_model.dart';

class ProductModel {
  String title;
  OrderModel order;
  String stage;
  String timeLine;
  String timeValue;
  String status;
  bool? isMoreUpdate;
  int? totalUpdate;
  List<CommentModel> comment;
  ProductModel(
      {required this.title,
      required this.order,
      required this.stage,
      required this.timeLine,
      required this.timeValue,
      required this.status,
      this.isMoreUpdate,
      this.totalUpdate,
      required this.comment});
}
