import 'package:flutter/material.dart';
import 'package:weather/core/widget/custom_appbar.dart';
import 'package:weather/features/search/presentation/views/widget/custom_search_weather_list_view.dart';
import 'package:weather/features/search/presentation/views/widget/custom_text_fild.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 9,
          ),
          CustomAppBar(title: 'Weather'),
          SizedBox(
            height: 17,
          ),
          CustomSearchTextFild(),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child:
                  SingleChildScrollView(child: CustomSearchWeatherListView()))
        ],
      ),
    );
  }
}
