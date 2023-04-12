import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:manufacturing_updates/models/product_model.dart';

class StageDetailWidget extends StatelessWidget {
  final ProductModel product;
  const StageDetailWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8),
          child: Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.withOpacity(0.5))),
                child: const Center(
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    size: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.withOpacity(0.5))),
                child: const Center(
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: 18,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 1,
          width: double.maxFinite,
          color: Colors.grey.withOpacity(0.5),
        ),
        Container(
          padding: const EdgeInsets.only(left: 25, top: 15, right: 20, bottom: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    product.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.5))),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.check,
                          size: 18,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Mark as completed",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.5))),
                    child: Text(
                      "Edit",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Order",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                    "${product.order.id} - ${product.order.productName}",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Stage",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: product.stage.toLowerCase() == "testing"
                                ? Colors.red
                                : product.stage.toLowerCase() ==
                                        "quality control"
                                    ? Colors.deepPurple
                                    : product.stage.toLowerCase() ==
                                            "production"
                                        ? Colors.orange
                                        : Colors.orangeAccent,
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        product.stage,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Timeline",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Text(
                    product.timeLine,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Status",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 95,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.5))),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.blue, width: 1.5)),
                          child: ShaderMask(
                            blendMode: BlendMode.srcATop,
                            shaderCallback: (Rect rect) {
                              return LinearGradient(
                                stops: const [0, 0.5, 0.5],
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                  Colors.white.withOpacity(0)
                                ],
                              ).createShader(rect);
                            },
                            child: const SizedBox(
                              width: 8,
                              height: 8,
                              child: Icon(Icons.circle,
                                  size: 8, color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          product.status,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          width: double.maxFinite,
          color: Colors.grey.withOpacity(0.5),
        ),
        Container(
          height: 40,
          margin: const EdgeInsets.only(top: 20, left: 25, right: 20, bottom: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.withOpacity(0.5))),
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Material(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  focusedBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: "Add a comment. Use @ to mention",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.grey.withOpacity(0.7)),
                  suffixIcon: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                        size: 20,
                      ))),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 25),
          margin: const EdgeInsets.only(bottom: 30),
          child: Row(
            children: [
              const Icon(
                Icons.info_outline,
                color: Colors.grey,
                size: 16,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Comments will visible after approval from Rechain admins",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.grey),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 25, right: 20),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 1,
                  color: Colors.grey.withOpacity(0.7),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "june 27th".toUpperCase(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 1,
                  color: Colors.grey.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 25, right: 20),
              child: Column(
                children: List.generate(
                    product.comment.length,
                    (index) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                product.comment[index].isUpdateStatus == false
                                    ? Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle),
                                        padding: const EdgeInsets.all(6),
                                        margin: const EdgeInsets.all(4),
                                        child:
                                            product.comment[index].photoUrl ==
                                                    null
                                                ? CircleAvatar(
                                                    backgroundColor: Color((math
                                                                        .Random()
                                                                    .nextDouble() *
                                                                0xFFFFFF)
                                                            .toInt())
                                                        .withOpacity(1.0),
                                                    radius: 20,
                                                    child: Text(
                                                      product.comment[index]
                                                          .publisherName[0],
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )
                                                : CircleAvatar(
                                                    radius: 20,
                                                    backgroundImage:
                                                        NetworkImage(product
                                                            .comment[index]
                                                            .photoUrl!),
                                                  ))
                                    : Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.2),
                                            shape: BoxShape.circle),
                                        padding: const EdgeInsets.all(4),
                                        margin: const EdgeInsets.all(16),
                                        child: const Icon(
                                          Icons.check_circle,
                                          color: Colors.black54,
                                          size: 20,
                                        ),
                                      ),
                                Container(
                                  width: 2,
                                  height: product.comment[index].isReply == true
                                      ? 90
                                      : product.comment[index].isUpdateStatus ==
                                              true
                                          ? 40
                                          : 60,
                                  color: Colors.grey.withOpacity(0.5),
                                )
                              ],
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: product.comment[index].isUpdateStatus
                                        ? 20
                                        : 10,
                                  ),
                                  Text(
                                    product.comment[index].publisherName,
                                    style:
                                        product.comment[index].isUpdateStatus ||
                                                product.comment[index].isReply
                                            ? Theme.of(context)
                                                .textTheme
                                                .titleSmall
                                                ?.copyWith(
                                                    fontWeight: FontWeight.w600)
                                            : Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                    fontWeight: FontWeight.w600),
                                  ),
                                  product.comment[index].isReply == false &&
                                          product.comment[index].isUpdateStatus ==
                                              false
                                      ? Text(
                                          "Submitted changed. ${product.comment[index].createdAt}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(color: Colors.grey),
                                        )
                                      : product.comment[index].isReply == true
                                          ? Row(
                                              children: [
                                                const Icon(
                                                  Icons.lock,
                                                  size: 16,
                                                  color: Colors.black54,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "Replied ${product.comment[index].createdAt}. Visible to team only",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium
                                                      ?.copyWith(
                                                          color: Colors.grey),
                                                )
                                              ],
                                            )
                                          : Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8),
                                        margin: const EdgeInsets.only(top: 5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Colors.grey
                                                    .withOpacity(0.5))),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 5,
                                              width: 5,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.blue),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              product
                                                  .comment[index].content,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall
                                                  ?.copyWith(
                                                  fontWeight:
                                                  FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        " ${product.comment[index].createdAt}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                            color: Colors.grey),
                                      ),
                                      Expanded(child: Container())
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  if (product.comment[index].isUpdateStatus ==
                                          false &&
                                      product.comment[index].isReply == false)
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          product.comment[index].content,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(color: Colors.black87),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.check_circle,
                                              color: Colors.grey,
                                              size: 16,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Changed approved by ",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(color: Colors.grey),
                                            ),
                                            Text(
                                              product.comment[index].adminName??"",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: Colors.black87),
                                            ),
                                            Text(
                                              " ${product.comment[index].approvedTime}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(color: Colors.grey),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  if (product.comment[index].isReply == true)
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                  padding: const EdgeInsets.only(
                                                      left: 8,
                                                      top: 8,
                                                      bottom: 8,
                                                      right: 8),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(10)),
                                                  child: RichText(
                                                    text: TextSpan(
                                                        text: "@wyatt ",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                                color: Colors.blue),
                                                        children: [
                                                          TextSpan(
                                                            text: product
                                                                .comment[index].content,
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .bodyMedium
                                                                ?.copyWith(
                                                                    color:
                                                                        Colors.black87),
                                                          )
                                                        ]),
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              top: 5,
                                              bottom: 5,
                                              left: 8,
                                              right: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                  color: Colors.grey
                                                      .withOpacity(0.5))),
                                          child: Text("Reply",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w600)),
                                        )
                                      ],
                                    )
                                ],
                              ),
                            )
                          ],
                        )),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
