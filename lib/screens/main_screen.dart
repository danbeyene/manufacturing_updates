import 'package:flutter/material.dart';
import 'package:manufacturing_updates/models/comment_model.dart';
import 'package:manufacturing_updates/models/manufacturing_group_model.dart';
import 'package:manufacturing_updates/provider/index_provider.dart';
import 'package:manufacturing_updates/widgets/product_widget.dart';
import 'package:manufacturing_updates/widgets/stage_detail_widget.dart';
import 'package:provider/provider.dart';

import '../data/data.dart';
import '../models/order_model.dart';
import '../models/product_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> with TickerProviderStateMixin {
  Set<String> unreadManufacturingGroupModelsId = {};
  List<ManufacturingGroupModel> unreadManufacturingGroupModels = [];
  List<ProductModel> unreadProducts = [];
  late TabController _tabController;

  @override
  void initState() {
     _tabController = TabController(length: 2, vsync: this);


    unreadManufacturingGroupModels.clear();
    unreadProducts.clear();
    for (ManufacturingGroupModel manufacturingGroupModel
        in manufacturingGroupModels) {
      for (ProductModel product in manufacturingGroupModel.products) {
        for (CommentModel comment in product.comment) {
          if (comment.readStatus == false) {
            unreadManufacturingGroupModelsId.add(manufacturingGroupModel.id);
            unreadProducts.add(product);
          }
        }
      }
    }
    for (ManufacturingGroupModel manufacturingGroupModel
        in manufacturingGroupModels) {
      for (String id in unreadManufacturingGroupModelsId) {
        if (id == manufacturingGroupModel.id) {
          unreadManufacturingGroupModels.add(manufacturingGroupModel);
        }
      }
    }
    // print(
    //     "unread manufacturing group ================== ${unreadManufacturingGroupModels.length}");
    // print("unread products ================== ${unreadProducts.length}");
    // print("ALL ================== ${manufacturingGroupModels.length}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(left: 30, top: 20, right: 20, bottom: 20),
                  child: Row(
                    children: [
                      Text(
                        "Updates",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 8, right: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.5))),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.done_all,
                              size: 18,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Mark all as read",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.5))),
                        child: const Center(
                          child: Icon(
                            Icons.tune,
                            size: 18,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                        padding: EdgeInsets.zero,
                        indicatorColor: Colors.blue,
                        dividerColor: Colors.transparent,
                        indicatorSize: TabBarIndicatorSize.label,
                        isScrollable: true,
                        controller: _tabController,
                        tabs: [
                          SizedBox(
                            height: 30,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Unread",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 15,
                                  padding: const EdgeInsets.only(left: 4, right: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey)),
                                  child: Center(
                                    child: Text(
                                      unreadProducts.length.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "All",
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: List.generate(
                              unreadManufacturingGroupModels.length, (index) {
                            return ProductWidget(
                              id: unreadManufacturingGroupModels[index].id,
                              products: unreadManufacturingGroupModels[index]
                                  .products,
                              mainListIndex: index,
                            );
                          }),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: List.generate(
                              manufacturingGroupModels.length, (index) {
                            return ProductWidget(
                              id: manufacturingGroupModels[index].id,
                              products:
                              manufacturingGroupModels[index].products,
                              mainListIndex: index,
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 1,
            height: double.maxFinite,
            color: Colors.grey.withOpacity(0.5),
          ),
          Consumer<IndexProvider>(builder: (context, params, child) {
            // print("_selectedTabIndex ================ ${_selectedTabIndex}");
            // print("some value ===== ${manufacturingGroupModels[2]
            //     .products[0].title}");
            return Expanded(
                flex: 2,
                child: StageDetailWidget(

                  product: _tabController.index == 0
                      ? unreadManufacturingGroupModels[params.mainListIndex]
                          .products[params.subListIndex]
                      : manufacturingGroupModels[params.mainListIndex]
                          .products[params.subListIndex],
                ));
          }),
        ],
      ),
    );
  }
}
