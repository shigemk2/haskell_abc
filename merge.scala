def merge(xs: List[Int], ys: List[Int]): List[Int] = (xs, ys) match {
  case (xs, Nil) => xs
  case (Nil, ys) => ys
  case (x::xs, y::ys) if x == y => x :: merge(xs, (y::ys))
  case (x::xs, y::ys) if x < y => x :: merge(xs, (y::ys))
  case (x::xs, y::ys) if x > y => y :: merge((x::xs), ys)
}

def msort(list: List[Int]): List[Int] = list match {
  case xs if xs.isEmpty => Nil
  case xs if xs.length == 1 => xs
  case xs => {
    val h = xs.length / 2
    merge(msort(xs.take(h)), msort(xs.drop(h)))
  }
}

println(msort(List(3,4,1,2,5)))
// println(msort(List(13,55,98,1,52,97,16,99,45,30,82,22,77,91,70,59,54,7,96,20,29,79,0,49,85,58,36,33,32,74,64,92,76,34,37,56,5,18,38,40,78,48,2,81,94,65,24,69,8,21,12,66,73,25,26,51,84,31,3,27,46,10,83,87,63,11,47,6,50,35,75,23,19,44,89,86,41,42,43,17,60,71,62,57,15,80,14,100,4,88,68,28,72,95,93,67,90,61,39,9,113,155,198,101,152,197,116,199,145,130,182,122,177,191,170,159,154,107,196,120,129,179,149,185,158,136,133,132,174,164,192,176,134,137,156,105,118,138,140,178,148,102,181,194,165,124,169,108,121,112,166,173,125,126,151,184,131,103,127,146,183,187,163,111,147,106,150,135,175,123,119,144,189,186,141,142,143,117,160,171,162,157,115,180,114,110,104,188,168,128,172,195,193,167,190,161,139,109)))
// println(msort(List(13,55,98,1,52,97,16,99,45,30,82,22,77,91,70,59,54,7,96,20,29,79,0,49,85,58,36,33,32,74,64,92,76,34,37,56,5,18,38,40,78,48,2,81,94,65,24,69,8,21,12,66,73,25,26,51,84,31,3,27,46,10,83,87,63,11,47,6,50,35,75,23,19,44,89,86,41,42,43,17,60,71,62,57,15,80,14,100,4,88,68,28,72,95,93,67,90,61,39,9)))

// def msort[A](less: (A, A) => Boolean)(xs: List[A]): List[A] = {
//   def merge(xs1: List[A], xs2: List[A]): List[A] =
//     if (xs1.isEmpty) xs2
//     else if (xs2.isEmpty) xs1
//     else if (less(xs1.head, xs2.head)) xs1.head :: merge(xs1.tail, xs2)
//     else xs2.head :: merge(xs1, xs2.tail)
//   val n = xs.length/2
//   if (n == 0) xs
//   else merge(msort(less)(xs take n), msort(less)(xs drop n))
// }

// println(msort((x: Int, y: Int) => x < y)(List(5, 7, 1, 3)))
