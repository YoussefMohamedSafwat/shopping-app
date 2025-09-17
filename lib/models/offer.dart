class Offer {
  final String title;
  final String subtitle;
  final String badgeText;

  Offer({required this.title, required this.subtitle, required this.badgeText});
}

final List<Offer> offers = [
  Offer(
    title: "50% Off Electronics",
    subtitle: "Limited time offer on all tech gadgets",
    badgeText: "50% OFF",
  ),
  Offer(
    title: "Free Shipping Weekend",
    subtitle: "No delivery charges on orders above \$50",
    badgeText: "FREE SHIP",
  ),
  Offer(
    title: "Buy 2 Get 1 Free",
    subtitle: "On selected accessories and peripherals",
    badgeText: "B2G1",
  ),
  Offer(
    title: "Student Discount",
    subtitle: "Extra 20% off with valid student ID",
    badgeText: "20% OFF",
  ),
  Offer(
    title: "Bundle Deals",
    subtitle: "Save more when you buy complete setups",
    badgeText: "BUNDLE",
  ),
];
