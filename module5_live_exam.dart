void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0},
  ];

  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);

  print("\nFruit Details After Applying 10% Discount:");
  applyPriceDiscount(fruits, 10);
}

// Before discount
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

// After applying 10% discount
void applyPriceDiscount(
    List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double currentPrice = fruit['price'];
    double discountedPrice =
        currentPrice - (currentPrice * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }

  displayFruitDetails(fruits);
}
