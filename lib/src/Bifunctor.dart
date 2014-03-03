import 'Fn.dart';

abstract class Bifunctor<F> {

  F<C,D> bimap(F<A,B> fab, Fn<A,C> f, Fn<B,D> g);

}