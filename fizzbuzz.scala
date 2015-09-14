object FizzBuzz {
  def main(args: Array[String]): Unit = {
    for(i <- 1 to 100) println(fizzbuzz(i))
  }

  def fizzbuzz(n: Int): String = n match {
    case n if n % 15 == 0 => "fizzbuzz"
    case n if n % 3 == 0 => "fizz"
    case n if n % 5 == 0 => "buzz"
    case _ => n.toString
  }
}
