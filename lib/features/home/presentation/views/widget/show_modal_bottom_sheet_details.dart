import 'package:flutter/material.dart';
import 'package:weather/core/styles/app_styles.dart';
import 'package:weather/features/home/presentation/views/widget/cutom_botton_sheet_list_view_bloc_bulider.dart';

class ShowModalBottomSheetDetails extends StatefulWidget {
  const ShowModalBottomSheetDetails({
    super.key,
  });

  @override
  State<ShowModalBottomSheetDetails> createState() =>
      _ShowModalBottomSheetDetailsState();
}

class _ShowModalBottomSheetDetailsState
    extends State<ShowModalBottomSheetDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF3E2D8F),
            Color(0xFF553696),
            Color(0xFF6A3E9B),
            Color(0xFF9D52AC),
          ],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Today',
                style: AppStyles.styleSemibold20(context)
                    .copyWith(color: Colors.white),
              ),
              Text(
                '${DateTime.timestamp().year.toString()} : ${DateTime.timestamp().month.toString()} : ${DateTime.timestamp().day.toString()}',
                style: AppStyles.styleSemibold20(context)
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color(0xFF8E78C8),
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomBottonSheetListViewBlocBulider()
        ],
      ),
    );
  }
}
