

void main() {
 List<double>priceList=[12.99, 8.75, 21.50, 5.00];
 double sum=0,tax=0.08;
 for(double i in priceList){
  sum+=i;
 }

 double ans=((sum*tax)+sum);
 String withTaxPrice = ans.toStringAsFixed(2);

 print('Total Cost: \$${withTaxPrice}');
}