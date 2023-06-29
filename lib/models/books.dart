class Book {
  final String title;
  final Category category;
  final String isbn;
  final double price;
  final bool isFree;
  final bool isPurchased;
  final String description;
  final num rating;
  final num yearRelease;
  final num pages;
  final String authorName;
  final String imageUrl;
  final int lastOpenPage;
  final int totalXP;

  Book(
      {required this.title,
      required this.category,
      required this.isbn,
      required this.price,
      required this.isFree,
      required this.isPurchased,
      required this.description,
      required this.rating,
      required this.yearRelease,
      required this.pages,
      required this.authorName,
      required this.imageUrl,
      required this.lastOpenPage,
      required this.totalXP});
}

enum Category {
  artAndLit,
  fiction,
  history,
  science,
  biography,
  business,
  children,
  comics,
  cooking,
  fantasy,
  health,
  mystery,
  philosophy,
  religion,
  romance,
  selfHelp,
  technology,
  travel,
}

String getCategoryString(Category category) {
  switch (category) {
    case Category.artAndLit:
      return 'Art & Lit';
    case Category.fiction:
      return 'Fiction';
    case Category.history:
      return 'History';
    case Category.science:
      return 'Science';
    case Category.biography:
      return 'Biography';
    case Category.business:
      return 'Business';
    case Category.children:
      return 'Children';
    case Category.comics:
      return 'Comics';
    case Category.cooking:
      return 'Cooking';
    case Category.fantasy:
      return 'Fantasy';
    case Category.health:
      return 'Health';
    case Category.mystery:
      return 'Mystery';
    case Category.philosophy:
      return 'Philosophy';
    case Category.religion:
      return 'Religion';
    case Category.romance:
      return 'Romance';
    case Category.selfHelp:
      return 'Self Help';
    case Category.technology:
      return 'Technology';
    case Category.travel:
      return 'Travel';
    default:
      return '';
  }
}
