import 'package:flutter/material.dart';

class DetailSuccess extends StatelessWidget {
  final String title;
  final String detail;
  final bool isEnd;

  const DetailSuccess({
    super.key,
    required this.title,
    required this.detail,
    required this.isEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).devicePixelRatio * 7,
          bottom: isEnd?MediaQuery.of(context).devicePixelRatio * 7:0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "$title  ",
            style: const TextStyle(
                fontSize: 19, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  detail,
                  style: const TextStyle(
                    fontSize: 17,color: Colors.grey
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
