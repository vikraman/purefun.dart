abstract class Seq<A> {}

class Nil implements Seq<A> {

  toString() => 'Nil';

}

class Cons<A> implements Seq<A> {

  final A a;
  final Seq<A> s;

  Cons(this.a, this.s);

  toString() => '${a}, ${s}';

}

main() {

  Seq<num> s = new Cons<num>(
      1, new Cons<num>(
          2, new Cons<num>(
              3, new Nil())));

  print('${s}');
}