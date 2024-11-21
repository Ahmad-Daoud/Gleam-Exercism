import gleam/list as l
import gleam/result as r

pub fn square_of_sum(n: Int) -> Int {
  let result = l.range(1, n) |> l.reduce(fn(acc, x) { acc + x })
  let final = r.unwrap(result, 0)
  final * final
}

pub fn sum_of_squares(n: Int) -> Int {
  let result =
    l.range(1, n) |> l.map(fn(x) { x * x }) |> l.reduce(fn(acc, x) { acc + x })
  r.unwrap(result, 0)
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
