import 'package:flutter/material.dart';
import 'dart:math' as math;

class StageWidget extends StatelessWidget {
  final String stageName;
  final String stageTitle;
  final String timeValue;
  final String? photoUrl;
  final String personName;
  final bool isReply;
  final String content;
  final bool? isMoreUpdate;
  final int? totalUpdates;
  final Color backgroundColor;
  const StageWidget(
      {Key? key,
      required this.stageName,
      required this.stageTitle,
      required this.timeValue,
      this.photoUrl,
      required this.personName,
        required this.isReply,
      required this.content,
      this.isMoreUpdate,
      this.totalUpdates,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    // print('Height =========== $height');
    // print('width =========== $width');
    return isMoreUpdate == false || isMoreUpdate==null
        ? Column(
      children: [
        Container(
          height: 85,
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          padding:
          const EdgeInsets.only(top: 15, bottom: 2, left: 5, right: 15),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueAccent),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: stageName.toLowerCase() == "testing"
                              ? Colors.red
                              : stageName.toLowerCase() ==
                              "quality control"
                              ? Colors.deepPurple
                              : stageName.toLowerCase() ==
                              "production"
                              ? Colors.orange
                              : Colors.orangeAccent,
                        )),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      stageName,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      stageTitle,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(child: Container()),
                    Text(
                      timeValue,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      padding: const EdgeInsets.all(6),
                      child: photoUrl == null
                          ? CircleAvatar(
                        backgroundColor: Color(
                            (math.Random().nextDouble() *
                                0xFFFFFF)
                                .toInt())
                            .withOpacity(1.0),
                        radius: 12,
                        child: Text(
                          personName[0],
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                          : CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage(photoUrl!),
                      ),
                    ),
                    Expanded(
                        child: Text(
                          isReply?"$personName replied":"$personName $content",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 1,
          color: Colors.grey.withOpacity(0.4),
        )
      ],
    )
        : SizedBox(
      height: 120,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: 100,
            margin: const EdgeInsets.only(left: 20,right: 20,top: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.5))
            ),
          ),
          Container(
            height: 100,
            padding:
            const EdgeInsets.only(top: 15, bottom: 2, left: 5, right: 15),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.5))
            ),
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: stageName.toLowerCase() == "testing"
                                ? Colors.red
                                : stageName.toLowerCase() ==
                                "quality control"
                                ? Colors.deepPurple
                                : stageName.toLowerCase() ==
                                "production"
                                ? Colors.orange
                                : Colors.orangeAccent,
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        stageName,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        stageTitle,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(child: Container()),
                      Text(
                        timeValue,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        padding: const EdgeInsets.all(6),
                        child: photoUrl == null
                            ? CircleAvatar(
                          backgroundColor: Color(
                              (math.Random().nextDouble() *
                                  0xFFFFFF)
                                  .toInt())
                              .withOpacity(1.0),
                          radius: 12,
                          child: Text(
                            personName[0],
                            style: const TextStyle(color: Colors.white),
                          ),
                        )
                            : CircleAvatar(
                          radius: 12,
                          backgroundImage: NetworkImage(photoUrl!),
                        ),
                      ),
                      Expanded(
                          child: Text(
                            isReply?"$personName replied":"$personName $content",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 20),
                      width: double.maxFinite,
                      child: Text(
                        "$totalUpdates more updates",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.blueAccent),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
