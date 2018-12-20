-- defines data type with two constructors
data Expr = Val Int | Div Expr Expr

-- defines a function that turns an expression into an integer
eval :: Expr -> Int


-- write a evaluation function for both Expr types
-- TODO eval (Val n) =
eval (Val n) = n
-- TODO eval (Div x y) =
eval (Div x y) = div (eval x) (eval y)


-- now calculate 6 / 3 with the created function
-- TODO testeval =
testeval = eval (Div (Val 6) (Val 3))


-- no side effects you say... but what about this:
killme = eval (Div (Val 42) (Val 0))
