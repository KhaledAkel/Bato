import '../models/index.dart' show Post;
import '../data/index.dart' show usersList;


final List<Post> trips = [
  Post(
    id: 0,
    postOwnerName: usersList[0].name,
    postLocation: 'New York, USA',
    postOwnerProfileUrl: usersList[0].avatar,
    imageUrls: [
      'https://res.cloudinary.com/doiav30hi/image/upload/v1740920835/kpm2ppf4jufpunmzdcqm.jpg',
      'https://res.cloudinary.com/doiav30hi/image/upload/v1740920835/xusb4pp56dsh2vnflfjb.jpg',
      'https://res.cloudinary.com/doiav30hi/image/upload/v1740920762/samples/balloons.jpg',
    ],
    postCaption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.',
    ownerId: 0,
  ),
  Post(
    id: 1,
    postOwnerName: usersList[1].name,
    postLocation: 'Paris, France',
    postOwnerProfileUrl: usersList[1].avatar,
    imageUrls: [
      'https://res.cloudinary.com/doiav30hi/image/upload/v1740920835/m2ztm2v27q9fs7ubbq22.jpg',
      'https://res.cloudinary.com/doiav30hi/image/upload/v1740920756/samples/landscapes/architecture-signs.jpg',
      'https://res.cloudinary.com/doiav30hi/image/upload/v1740920756/samples/people/jazz.jpg',
    ],
    postCaption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.',
  ownerId: 0,
  ),
];



final List<Post> trips_others = [
  Post(
    id: 0,
    postOwnerName: usersList[0].name,
    postLocation: 'New York, USA',
    postOwnerProfileUrl: usersList[0].avatar,
    imageUrls: [
      'https://res.cloudinary.com/doiav30hi/image/upload/v1740920835/xusb4pp56dsh2vnflfjb.jpg',
      'https://res.cloudinary.com/doiav30hi/image/upload/v1740920835/kpm2ppf4jufpunmzdcqm.jpg',
    
    ],
    postCaption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.',
    ownerId: 0,
  ),
  Post(
    id: 1,
    postOwnerName: usersList[1].name,
    postLocation: 'Paris, France',
    postOwnerProfileUrl: usersList[1].avatar,
    imageUrls: [
      'https://res.cloudinary.com/doiav30hi/image/upload/v1740920763/samples/cup-on-a-table.jpg',
      'https://res.cloudinary.com/doiav30hi/image/upload/v1740920763/samples/man-on-a-street.jpg',
  
    ],
    postCaption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.',
  ownerId: 0,
  ),
];