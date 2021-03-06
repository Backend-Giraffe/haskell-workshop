
    ---------- lists by enumeration

    x1 = [1, 9, 42]

    x2 = [3 .. 7]                                   -- [3, 4, 5, 6, 7]

    x3 = [3, 5 .. 10]                               -- [3, 5, 7, 9]

    x4 = [10, 9 .. 5]                               -- [10, 9, 8, 7, 6, 5]

    x5 = [100, 90 .. 60]                            -- [100, 90, 80, 70, 60]

    x6 = sum [1,2..10]                              -- 55
    
    x7 = product [1,2,3]                            -- 6
    
    x8 = length x1                                  -- 3
    

    ---------- lists by comprehension

    x9 = [ x + 1 | x <- x1 ]                        -- [2, 10, 43]
    
    x10 = [ sum [1..x] | x <- x3 ]                  -- [6, 15, 28, 45]

    x11 = [ x | x <- [1,2,3,4,5,6], mod x 2 == 1 ]  -- [1, 3, 5]


    ---------- infinite lists

    x12 = [5, 10 ..]                                -- [5, 10, 15, 20, ...]
    
    x13 = take 3 [5, 10 ..]                         -- [5, 10, 15]
    
    
    
    
    
    
    
    
    
