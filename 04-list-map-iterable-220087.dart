void main() {
  final numbers = [1,1,1,2,3,4,4,5,5,6,6,7,7,7,8,9,10,10];
  
  print(numbers);
  print("Tipo de estructura de datos:  ${numbers.runtimeType}");
  
  //Accediendo a propiedades y funciones de los objetos
  print("Lista Original: $numbers");
  print("Tamaño de la Lista: ${numbers.length}");
  print("calor de la posicion 0: ${numbers[0]}");
  print("Primer valor: ${numbers.first}");
  print("Orden Reverso: ${numbers.reversed}");
  print("------------");
  
  final reversedNumbers = numbers.reversed;
  print("Iterable: $reversedNumbers");
  print("Lista: ${reversedNumbers.toList()}");
  print("Set: ${reversedNumbers.toSet()}");

  final numbersGreaterThan5 = numbers.where((number) => number > 5);
  print("Números mayores a 5: $numbersGreaterThan5");
  print(">5 Lista: ${numbersGreaterThan5.toList()}");
  print(">5 Set: ${numbersGreaterThan5.toSet()}");
  print("------------");
}