def merge(xs: List[Int], ys:List[Int], acc: List[Int]): List[Int] = (xs, ys) match {
  case (xs, Nil) => acc ++ xs
  case (Nil, ys) => acc ++ ys
  case (x::xs, y::ys) if x == y => merge(xs, (y::ys), acc :+ x)
  case (x::xs, y::ys) if x < y => merge(xs, (y::ys), acc :+ x)
  case (x::xs, y::ys) if x > y => merge((x::xs), ys, acc :+ y)
}

def msort(list: List[Int]): List[Int] = list match {
  case xs if xs.isEmpty => Nil
  case xs if xs.length == 1 => xs
  case xs => {
    val h = xs.length / 2
    merge(msort(xs.take(h)), msort(xs.drop(h)), Nil)
  }
}

println(msort(List(3,4,1,2,5)))
