import 'package:flutter/material.dart';
import './components/index.dart' show TrendingCard;
import '../../../../data/index.dart' show trendingCatrds1, trendingCatrds2;


class TrendingPage extends StatelessWidget {
  const TrendingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: trendingCatrds1.length,
                  itemBuilder: (context, index) {
                    return TrendingCard(id: index, imageUrl: trendingCatrds1[index]);
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: trendingCatrds2.length,
                  itemBuilder: (context, index) {
                    return TrendingCard(id: index, imageUrl: trendingCatrds2[index]);
                  },
                ),
              ),
            ],
          ),
    );
  }
}