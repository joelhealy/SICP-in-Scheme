;  Exercise 1.2.  Translate the following expression into prefix form
;  
;  
;  5 + 4 + (2 - (3 - (6 + 4/5)))
;  -----------------------------
;         3(6 -2)(2 - 7)
;
;
;  Solution of SICP Exercise 1.02 follows below ---------------------


(/ (+ 5 
      4 
      (- 2 
         (- 3 
            (+ 6 
               (/ 4 5))))) 
   (* 3 
      (- 6 2) 
      (- 2 7)))
;Value: -37/150
