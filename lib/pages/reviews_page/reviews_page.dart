import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text('Reviews'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: reviews.length,
          itemBuilder: (context, index) {
            final review = reviews[index];
            return Card(
              elevation: 4.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}