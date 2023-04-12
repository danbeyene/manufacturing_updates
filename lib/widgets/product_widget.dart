import 'package:flutter/material.dart';
import 'package:manufacturing_updates/provider/index_provider.dart';
import 'package:manufacturing_updates/widgets/stage_widget.dart';
import 'package:provider/provider.dart';

import '../models/product_model.dart';

class ProductWidget extends StatefulWidget {
  final String id;
  final List<ProductModel> products;
  final int mainListIndex;

  const ProductWidget(
      {Key? key,
      required this.id,
      required this.products,
      required this.mainListIndex})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => _ProductWidget();
}

class _ProductWidget extends State<ProductWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25, top: 8, bottom: 8),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              border: Border.symmetric(
                  horizontal: BorderSide(color: Colors.grey.withOpacity(0.4)))),
          child: Row(
            children: [
              const Icon(
                Icons.event_note_outlined,
                size: 20,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(widget.id,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w500)),
              const SizedBox(
                width: 8,
              ),
              Text(
                "${widget.products.length}",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.grey),
              )
            ],
          ),
        ),
        Column(
          children: List.generate(
              widget.products.length,
              (index) {
                return Consumer<IndexProvider>(
                  builder: (context, params,child) {
                    return InkWell(
                        onTap: (){
                          params.setMainListIndex(widget.mainListIndex);
                          params.setSubListIndex(index);
                          // print('main list index ============= ${params.mainListIndex}');
                          // print('sub list index ============= ${params.subListIndex}');
                        },
                        child:Row(
                          children: [
                            Container(
                              height: widget.mainListIndex==params.mainListIndex && index==params.subListIndex ? 70 : 0,
                              width: 3,
                              color: Colors.blue,
                              margin: const EdgeInsets.only(left: 2),
                            ),
                            Expanded(
                              child: StageWidget(
                                stageName: widget.products[index].stage,
                                stageTitle: widget.products[index].title,
                                timeValue: widget.products[index].timeValue,
                                photoUrl: widget.products[index].comment[0].photoUrl,
                                personName:
                                widget.products[index].comment[0].publisherName,
                                content: widget.products[index].comment[0].content,
                                isReply: widget.products[index].comment[0].isReply,
                                backgroundColor: widget.mainListIndex==params.mainListIndex && index==params.subListIndex
                                    ? Colors.blueGrey.withOpacity(0.2)
                                    : Colors.white,
                                isMoreUpdate: widget.products[index].isMoreUpdate,
                                totalUpdates: widget.products[index].totalUpdate,
                              ),
                            ),
                          ],
                        ));
                  }
                );
              }),
        )
      ],
    );
  }
}
