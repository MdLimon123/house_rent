
class House{

  String name;
  String address;
  String imageUrl;

  House({required this.name, required this.address, required this.imageUrl});

  static List<House> generateRecommended(){
    return [
      House(
          name: 'The Moon House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/house01.jpeg'
      ),
      House(
          name: 'The Moon House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/house02.jpeg'
      ),
      House(
          name: 'The Place House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/image.png'
      ),
      House(
          name: 'The Mannat House',
          address: 'P415, Mumbai, India',
          imageUrl: 'assets/images/image2.png'
      ),
      House(
          name: 'The Jannat House',
          address: 'P411, Bashundara, Dhaka',
          imageUrl: 'assets/images/image3.png'
      ),
      House(
          name: 'The Ashan Monjil House',
          address: 'P435, Chhatak, Bogura',
          imageUrl: 'assets/images/image4.png'
      ),
      House(
          name: 'The Limon Villa House',
          address: 'P475, Chhatak, Thakurgaon',
          imageUrl: 'assets/images/image5.png'
      ),
      House(
          name: 'The Sunset House',
          address: 'P458, Chhatak, Dhaka',
          imageUrl: 'assets/images/image6.png'
      ),
      House(
          name: 'The Galley House',
          address: 'P495, Chhatak, Delli',
          imageUrl: 'assets/images/image7.png'
      ),

    ];

  }

  static List<House> generateBestOffer(){
    return[
      House(
          name: 'The Moon House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/house01.jpeg'
      ),
      House(
          name: 'The Moon House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/house02.jpeg'
      ),
      House(
          name: 'The Moon House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/image.png'
      ),
      House(
          name: 'The Moon House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/image2.png'
      ),
      House(
          name: 'The Moon House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/image3.png'
      ),
      House(
          name: 'The Moon House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/image4.png'
      ),
      House(
          name: 'The Moon House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/image5.png'
      ),
      House(
          name: 'The Moon House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/image6.png'
      ),
      House(
          name: 'The Moon House',
          address: 'P455, Chhatak, Sylhet',
          imageUrl: 'assets/images/image7.png'
      ),
    ];
  }

}