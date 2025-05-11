import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/core/utils/app_router.dart';
import 'package:weather/features/home/presentation/views/widget/navigatin_bar_item.dart';
import 'package:weather/features/home/presentation/views/widget/show_modal_bottom_sheet_details.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Container(
        height: 45,
        width: MediaQuery.sizeOf(context).width * .7,
        decoration: BoxDecoration(
          color: const Color(0x99D8CFE8),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            NavigationBarItem(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.ksearchView);
              },
              icon: Icons.search,
              tip: 'Search',
            ),
            NavigationBarItem(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return const ShowModalBottomSheetDetails();
                  },
                );
              },
              icon: Icons.location_on_outlined,
              tip: 'Hourly Forcast',
            ),
            NavigationBarItem(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kdetailsview);
                },
                tip: 'More Details',
                icon: Icons.list)
          ],
        ),
      ),
    );
  }
}
