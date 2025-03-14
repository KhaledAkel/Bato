import '../models/index.dart' show Post;
import '../data/index.dart' show usersList;


final List<Post> hosts_posts = [
  Post(
    id: 0,
    postOwnerName: usersList[0].name,
    postLocation: 'New York, USA',
    postOwnerProfileUrl: 'https://res.cloudinary.com/doiav30hi/image/upload/v1741643391/person2_r1e8co.jpg',
    imageUrls: [
      'https://res.cloudinary.com/doiav30hi/image/upload/v1741956126/sheep1_tfdp1u.jpg',
      'https://res.cloudinary.com/doiav30hi/image/upload/v1741956127/sheep2_ov8klr.jpg'

    ],
    postCaption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.',
    ownerId: 0,
  ),
  Post(
    id: 1,
    postOwnerName: usersList[1].name,
    postLocation: 'Paris, France',
    postOwnerProfileUrl: 'https://res.cloudinary.com/doiav30hi/image/upload/v1741955484/por21_fnmore.jpg',
    imageUrls: [
      'https://res.cloudinary.com/doiav30hi/image/upload/v1741956126/carpentry_prgbrx.jpg',
      'https://res.cloudinary.com/doiav30hi/image/upload/v1741956126/carpentry2_mozdkc.jpg',
    ],
    postCaption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.',
  ownerId: 0,
  ),
];