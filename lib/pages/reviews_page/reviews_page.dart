import 'package:flutter/material.dart';
import 'package:flutter_application_2/theme/index.dart';

class ReviewsPage extends StatelessWidget {
  final List<Map<String, String>> reviews = [
    {
      'name': 'Alice Johnson',
      'avatar': 'https://res.cloudinary.com/doiav30hi/image/upload/v1741366670/AlexMan_gkp20z.jpg',
      'review': 'The host was amazing! They made me feel so welcome and showed me around the city. Highly recommend!',
    },
    {
      'name': 'Michael Brown',
      'avatar': 'https://res.cloudinary.com/doiav30hi/image/upload/v1741955484/por1_hcvdvq.jpg',
      'review': 'I had a great time! The host was very friendly and helpful. Would definitely visit again.',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          'Reviews',
          style: TextStyle(
            color: AppColors.text,
            fontFamily: AppTextStyles.fontFamilyPrimary,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: AppColors.background,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: reviews.length,
          itemBuilder: (context, index) {
            final review = reviews[index];
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.background,
                border: Border.all(
                  color: AppColors.text, // Border color
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // User Avatar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(
                      review['avatar']!,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16.0),

                  // Review Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          review['name']!,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          review['review']!,
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                          maxLines: 2, // Limit to 2 lines
                          overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}