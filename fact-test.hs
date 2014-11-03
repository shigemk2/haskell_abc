import Test.HUnit
import System.IO

fact 1 = 1
fact n = n * fact (n - 1)

-- テスト
tests = TestList
    -- ~ はあまり考えずにUnitTestの記号と考える
    [ "fact 1" ~: fact 1 ~?= 1
    , "fact 2" ~: fact 2 ~?= 2
    , "fact 3" ~: fact 3 ~?= 6
    , "fact 4" ~: fact 4 ~?= 24
    , "fact 5" ~: fact 5 ~?= 120
    , "fact 5" ~: fact 5 ~?= 100
    ]

main = do
  -- テストの関数 ごちゃっとしてるけどいろいろパラメータが書いてある
  -- 意味はあんまり考える必要はないかもしれない
    runTestText (putTextToHandle stderr False) tests

-- 成功時
-- Cases: 5  Tried: 5  Errors: 0  Failures: 0
-- (Counts {cases = 5, tried = 5, errors = 0, failures = 0},-1)

-- 失敗時
-- FailureとErrorは違う
-- ### Failure in: 4:fact 5
-- expected: 100
--  but got: 120
-- Cases: 5  Tried: 5  Errors: 0  Failures: 1
-- (Counts {cases = 5, tried = 5, errors = 0, failures = 1},-1)
