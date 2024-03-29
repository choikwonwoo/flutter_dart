# 컬렉션 타입 - List, Set, Map

### 리스트 타입

- 리스트를 선언하면서 초기화 할 때는 []를 사용한다
- 데이터 타입을 지정하지 않으면 dynamic 타입 리스트가 된다.
- 타입을 지정하려면 제네릭을 이용하면 된다.
- add나 remove 함수를 사용한다.
- filled()로 리스트의 크기를 지정할 수 있다.

```dart
main(){
	var list3 = List<int>.filled(3,0)
	//크기가 3이고 0으로 초기화한 리스트 3개 이상의 데이터 삽입시 에러 발생
	var list4 = List<int>.filled(3,0,growable: true)
	// 위와 같지만 3개 이상의 데이터가 삽입된다.
}
```

- generate() 생성자를 이용하여 특정한 로직으로 구성된 데이터를 가질 수 있다.

```dart
main(){
	var list3 = List<int>.generate(3,(index)=> index*10,growable: true)
	// 각각의 인덱스 값에 10을 곱한 값을 넣은 크기가 3인 리스트
}
```

### 집합 타입

- Set은 List와 마찬가지로 여러 건의 데이터를 저장하는 컬렉션 타입이다.
- 중복 데이터를 허용하지 않는다
- 중괄호를 이용한다.

```dart
main(){
	Set<int> set1 = {10,20,30};
}
```

### 맵타입

- 여러 건의 데이터를 키와 값 형태로 저장하는 타입이다.
- 맵에 저장되는 데이터는 항상 키를 가지며 저장된 데이터에 접근할 때는 키를 이용한다.