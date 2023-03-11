import 'package:qn/models/question.dart';
import 'package:qn/models/story_model.dart';
import 'package:qn/models/user_model.dart';

import '../models/post_model.dart';

final User currentUser = User(
  name: 'Marcus Ng',
  imageUrl:
      'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
);

final List<User> onlineUsers = [
  User(
    name: 'David Brooks',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Jane Doe',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Matthew Hinkle',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  User(
    name: 'Amy Smith',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  User(
    name: 'Ed Morris',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    name: 'Carolyn Duncan',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Paul Pinnock',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      name: 'Elizabeth Wong',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    name: 'James Lathrop',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    name: 'Jessie Samson',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'David Brooks',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Jane Doe',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Matthew Hinkle',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  User(
    name: 'Amy Smith',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  User(
    name: 'Ed Morris',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    name: 'Carolyn Duncan',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Paul Pinnock',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      name: 'Elizabeth Wong',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    name: 'James Lathrop',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    name: 'Jessie Samson',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

final List<Story> stories = [
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
        'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
        'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[7],
    imageUrl:
        'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
  ),
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
        'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
        'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[7],
    imageUrl:
        'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
  ),
];

final List<Post> posts = [
  Post( 
     time:'9h',
    user: currentUser,
    caption: 'question.........................................?  ',
    answer: 'answer.......................................',
    imageUrl:'',
    likes: '1202',
    comments: 184,
    shares: '96',
  ),
  Post(
     time:'10h',
    user: onlineUsers[5],
       caption: 'question.........................................?  ',
    answer: 'answer...........................................',
    
     imageUrl:
        'https://images.unsplash.com/photo-1573056026828-af10691f41bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTg5fHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '683',
    comments: 79,
    shares: '18',
  ),
  Post(
     time:'3h',
    user: onlineUsers[4],
    caption: 'question.........................................?  ',
    answer: 'answer.......................................',
    imageUrl:'',
    likes: '894',
    comments: 201,
    shares: '27',
  ),
  Post(
     time:'7h',
    user: onlineUsers[3],
    caption: 'question..............................................?  ',
    answer: 'answer....................................... ........',
    imageUrl:
        'https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTkwfHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '722',
    comments: 183,
    shares: '42',
  ),
  Post(
     time:'1h',
    user: onlineUsers[0],
      caption: 'question..............................................?  ',
    answer: 'answer....................................... ........',
    imageUrl:
        'https://images.unsplash.com/photo-1613688365965-8abc666fe1e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc0fHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '482',
    comments: 37,
    shares: '9',
  ),
  Post(
     time:'23m',
    user: onlineUsers[9],  
    caption: 'question..............................................?  ',
    answer: 'answer....................................... ........',
    imageUrl:
        'https://images.unsplash.com/photo-1567168544813-cc03465b4fa8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTY2fHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'18d',
    user: onlineUsers[9],
      caption: 'question..............................................?  ',
    answer: 'answer....................................... ........',
      imageUrl:
        '',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'14d',
    user: onlineUsers[9],
        caption: 'question..............................................?  ',
    answer: 'answer....................................... ........',
    imageUrl:
        'https://images.unsplash.com/photo-1622470190232-81df3782484b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE1fHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'9m',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer..................................................',
    imageUrl:
        'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'7m',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer....................................... ..........',
    imageUrl:
        'https://images.unsplash.com/photo-1613902059328-4a860a118dca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAzfHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'8d',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer....................................... ........',
    imageUrl:
        '',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'9d',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer....................................... ........',
    imageUrl:
        'https://images.unsplash.com/photo-1515125520141-3e3b67bc0a88?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzZ8fHVuaXZlcnNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'2d',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer....................................... ........',
    imageUrl:
        'https://images.unsplash.com/photo-1514832926019-2c0dd4b55227?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njd8fHVuaXZlcnNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'10/12',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer....................................... ........',
    imageUrl:
        'https://images.unsplash.com/photo-1532649538693-f3a2ec1bf8bd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fHVuaXZlcnNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'9/9',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        '',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'6/6',
      user: onlineUsers[9],
   caption: 'question..............................................?  ',
    answer: 'answer...................................................',
     imageUrl:
        'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'9/8',
    user: onlineUsers[9],
   caption: 'question..............................................?  ',
    answer: 'answer...................................................',
     imageUrl:'',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'7/8',
    user: onlineUsers[9],
   caption: 'question..............................................?  ',
    answer: 'answer...................................................',
     imageUrl:
        'https://images.unsplash.com/photo-1541829070764-84a7d30dd3f3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fHVuaXZlcnNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'10d',
    user: onlineUsers[9],
   caption: 'question..............................................?  ',
    answer: 'answer...................................................',
     imageUrl:
        'https://images.unsplash.com/photo-1496317899792-9d7dbcd928a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'1d',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1590012314607-cda9d9b699ae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHVuaXZlcnNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'9/10',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1531259736756-6caccf485f81?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHVuaXZlcnNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post( 
    time:'10/5',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
'https://images.unsplash.com/photo-1581362072978-14998d01fdaa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHVuaXZlcnNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'23/9',
    user: onlineUsers[9],
   caption: 'question..............................................?  ',
    answer: 'answer...................................................',
     imageUrl:
        'https://images.unsplash.com/photo-1600195077077-7c815f540a3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVuaXZlcnNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'16/5',
    user: onlineUsers[9],
   caption: 'question..............................................?  ',
    answer: 'answer...................................................',
     imageUrl:'',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'23/4',
    user: onlineUsers[9],
   caption: 'question..............................................?  ',
    answer: 'answer...................................................',
     imageUrl:
        'https://images.unsplash.com/photo-1521587760476-6c12a4b040da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'3m',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1492538368677-f6e0afe31dcc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),  Post( 
     time:'8d',
    user: currentUser,
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl: 'https://images.unsplash.com/photo-1612251018789-6dcc3b631f92?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjA1fHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '1202',
    comments: 184,
    shares: '96',
  ),
  Post(
     time:'7/10',
    user: onlineUsers[5],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1573056026828-af10691f41bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTg5fHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '683',
    comments: 79,
    shares: '18',
  ),
  Post(
    user: onlineUsers[4],
     time:'1/1',
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: '894',
    comments: 201,
    shares: '27',
  ),
  Post(
     time:'6/10',
    user: onlineUsers[3],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTkwfHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '722',
    comments: 183,
    shares: '42',
  ),
  Post(
     time:'4/8',
    user: onlineUsers[0],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1613688365965-8abc666fe1e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc0fHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '482',
    comments: 37,
    shares: '9',
  ),
  Post(
     time:'2/3',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1567168544813-cc03465b4fa8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTY2fHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'10d',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1579389083046-e3df9c2b3325?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE5fHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'14d',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1622470190232-81df3782484b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE1fHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'1y',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'16d',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1613902059328-4a860a118dca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAzfHx1bml2ZXJzaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
     time:'3d',
    user: onlineUsers[9],
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:'',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
    user: onlineUsers[9],
     time:'1s',
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1515125520141-3e3b67bc0a88?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzZ8fHVuaXZlcnNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
    user: onlineUsers[9],
     time:'3m',
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1514832926019-2c0dd4b55227?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njd8fHVuaXZlcnNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  ),
  Post(
    user: onlineUsers[9],
    time:'1d',
    caption: 'question..............................................?  ',
    answer: 'answer...................................................',
    imageUrl:
        'https://images.unsplash.com/photo-1532649538693-f3a2ec1bf8bd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fHVuaXZlcnNpdHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    likes: '1523',
    shares: '129',
    comments: 301,
  )
];
final List<Question> question = [
  Question(contain: '', answer: '', imageUrl: '', likes: '', shares: '')
];
