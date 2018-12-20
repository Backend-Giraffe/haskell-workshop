-- this time we create a save version of the division evaluator

-- the constructors stay the same
data Expr = Val Int | Div Expr Expr

-- create a save divide function
safediv :: Int -> Int -> Maybe Int
-- TODO savedif x y =
safediv x y = if y == 0 then
                Nothing
                        else
                Just(div x y)
                        

-- the evaluation function now maybe returns an integer 
eval :: Expr -> Maybe Int

-- write new evaluation fucntions
-- TODO eval (Val n) =
eval (Val n) = Just n
-- TODO eval (Div x y) =
eval (Div x y) = case eval x of
                      Nothing -> Nothing
                      Just n -> case eval y of
                                     Nothing -> Nothing
                                     Just m -> safediv n m
                                     
                                    
-- now calculate 6 / 3 with the created function
testeval = eval (Div (Val 6) (Val 3))

-- this should be safe now
killme = eval (Div (Val 6) (Val 0))
