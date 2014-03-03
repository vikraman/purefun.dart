abstract class Maybe<A> {}

class Just<A> implements Maybe<A> {

  final A a;

  Just(this.a);

  toString() => 'Just ${a}';

}

class Nothing implements Maybe<A> {

  Nothing();

  toString() => 'Nothing';

}

main() {

  var nothing = new Nothing();

  var something = new Just(4);

  print('This is nothing: ${nothing}');
  print('This is something: ${something}');
}
