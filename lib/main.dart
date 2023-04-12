import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:manufacturing_updates/models/comment_model.dart';
import 'package:manufacturing_updates/models/order_model.dart';
import 'package:manufacturing_updates/models/product_model.dart';
import 'package:manufacturing_updates/provider/index_provider.dart';
import 'package:manufacturing_updates/screens/main_screen.dart';
import 'package:manufacturing_updates/widgets/product_widget.dart';
import 'package:manufacturing_updates/widgets/stage_detail_widget.dart';
import 'package:manufacturing_updates/widgets/stage_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<IndexProvider>(
      create: (context) => IndexProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        scrollBehavior: AppScrollBehavior(),
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Colors.black,
              onPrimary: Colors.black,
              secondary: Colors.blueAccent,
              onSecondary: Colors.blueAccent,
              error: Colors.redAccent,
              onError: Colors.redAccent,
              background: Colors.white,
              onBackground: Colors.white,
              surface: Colors.black,
              onSurface: Colors.black),
        ),
        home: MainScreen(),
        // home: StageWidget(
        //   stageName: 'Quality Inspections',
        //   stageTitle: "Sample 2",
        //   timeValue: "4m ago",
        //   photoUrl: "https://danbeyene.github.io/images-repo/29.jpg",
        //   personName: 'Joseph Collman',
        //   content: 'changed the status to In Progress',
        //   isMoreUpdate: true,
        //   totalUpdates: 1,
        // ),
        //   home:  StageDetailWidget(
        // product:
        //     ProductModel(
        //         stage: 'Quality Inspections',
        //         comment: [
        //           CommentModel(
        //               isReply: false,
        //               readStatus: false,
        //               isUpdateStatus: false,
        //               photoUrl: 'https://danbeyene.github.io/images-repo/29.jpg',
        //               publisherName: 'Joseph Collman',
        //               createdAt: '6 hours ago',
        //               isApproved: true,
        //               adminName: 'Shiva Chauhan',
        //               approvedTime: '1 hour ago',
        //               content: 'Published a new inspection report',),
        //           CommentModel(
        //             isReply: false,
        //             readStatus: false,
        //             isUpdateStatus: true,
        //             publisherName: 'Wyatt Mcmickle',
        //             createdAt: '12 hours ago',
        //             content: 'Pre-production check',),
        //           CommentModel(
        //             isReply: true,
        //             readStatus: false,
        //             isUpdateStatus: false,
        //             photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
        //             publisherName: 'Todd Lager',
        //             createdAt: '16 hours ago',
        //             content: 'when will the report be available?',)
        //         ],
        //         title: 'Sample 2',
        //         order: OrderModel(id: '#80149', productName: 'Summer Linen Jacket SS22'),
        //         timeLine: '16/08/2022 - 31/08/2022',
        //         timeValue: '4m ago',
        //         status: 'In progress')
        //   ),
        // home: ProductWidget(
        //   id: '#12355',
        //   products: [
        //     ProductModel(
        //         stage: 'Quality Inspections',
        //         comment: [
        //           CommentModel(
        //               isReply: false,
        //               readStatus: false,
        //               isUpdateStatus: false,
        //               photoUrl: 'https://danbeyene.github.io/images-repo/29.jpg',
        //               publisherName: 'Joseph Collman',
        //               createdAt: '6 hours ago',
        //               isApproved: true,
        //               adminName: 'Shiva Chauhan',
        //               approvedTime: '1 hour ago',
        //               content: 'Published a new inspection report',),
        //           CommentModel(
        //             isReply: false,
        //             readStatus: false,
        //             isUpdateStatus: true,
        //             publisherName: 'Wyatt Mcmickle',
        //             createdAt: '12 hours ago',
        //             content: 'Pre-production check',),
        //           CommentModel(
        //             isReply: false,
        //             readStatus: false,
        //             isUpdateStatus: false,
        //             photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
        //             publisherName: 'Todd Lager',
        //             createdAt: '16 hours ago',
        //             content: '@wyatt when will the report be available?',)
        //         ],
        //         title: 'Sample 2',
        //         order: OrderModel(id: '#80149', productName: 'Summer Linen Jacket SS22'),
        //         timeLine: '16/08/2022 - 31/08/2022',
        //         timeValue: '4m ago',
        //         status: 'In progress'),
        //     ProductModel(
        //         stage: 'Quality Control',
        //         comment: [
        //           CommentModel(
        //             isReply: false,
        //             readStatus: false,
        //             isUpdateStatus: false,
        //             photoUrl: 'https://danbeyene.github.io/images-repo/29.jpg',
        //             publisherName: 'Joseph Collman',
        //             createdAt: '6 hours ago',
        //             isApproved: true,
        //             adminName: 'Shiva Chauhan',
        //             approvedTime: '1 hour ago',
        //             content: 'Published a new inspection report',),
        //           CommentModel(
        //             isReply: false,
        //             readStatus: false,
        //             isUpdateStatus: true,
        //             publisherName: 'Wyatt Mcmickle',
        //             createdAt: '12 hours ago',
        //             content: 'Pre-production check',),
        //           CommentModel(
        //             isReply: false,
        //             readStatus: false,
        //             isUpdateStatus: false,
        //             photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
        //             publisherName: 'Todd Lager',
        //             createdAt: '16 hours ago',
        //             content: '@wyatt when will the report be available?',)
        //         ],
        //         title: 'Pre-shipment',
        //         order: OrderModel(id: '#80150', productName: 'Summer Linen T Shirt DD11'),
        //         timeLine: '17/08/2022 - 10/08/2022',
        //         timeValue: '23m ago',
        //         status: 'Production'),
        //     ProductModel(
        //         stage: 'Production',
        //         comment: [
        //           CommentModel(
        //             isReply: true,
        //             readStatus: false,
        //             isUpdateStatus: false,
        //             publisherName: 'Wayne Smith',
        //             createdAt: '6 hours ago',
        //             content: 'can you share me the report?',),
        //           CommentModel(
        //             isReply: false,
        //             readStatus: false,
        //             isUpdateStatus: true,
        //             publisherName: 'Wyatt Mcmickle',
        //             createdAt: '12 hours ago',
        //             content: 'Pre-production check',),
        //           CommentModel(
        //             isReply: false,
        //             readStatus: false,
        //             isUpdateStatus: false,
        //             photoUrl: 'https://danbeyene.github.io/images-repo/53.jpg',
        //             publisherName: 'Todd Lager',
        //             createdAt: '16 hours ago',
        //             content: '@wyatt when will the report be available?',)
        //         ],
        //         title: 'Sample 2',
        //         order: OrderModel(id: '#80149', productName: 'Summer Linen Jacket SS22'),
        //         timeLine: '16/08/2022 - 31/08/2022',
        //         timeValue: '4h ago',
        //         status: 'In progress')
        //   ], onTap: () {  }, selectedIndex: 0,
        // ),
      ),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
