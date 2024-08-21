import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/presentations/ui/spacer.dart';

class TaskScreenShimmer extends StatelessWidget {
  const TaskScreenShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.transparent,
        AppColors.grayAccent.withOpacity(0.1)
      ])),
      child: Gapper.screenPadding(
        child: Shimmer.fromColors(
            baseColor: AppColors.whiteXShade.withOpacity(0.5),
            highlightColor: AppColors.whiteXShade,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    3,
                    (index) {
                      return Gapper.cardPadding(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          // width: 75,
                          height: 100,
                        ),
                      );
                    },
                  )),
            )),
      ),
    );
  }
}
