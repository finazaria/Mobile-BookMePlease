class User {
  final String imagePath;
  final String name;
  final String email;   // Email harusnya gausah
  final String memberSince;
  final List<String> interests;

  const User({
    this.imagePath,
    this.name,
    this.email,
    this.memberSince,
    this.interests
  });
}
