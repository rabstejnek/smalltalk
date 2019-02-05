Magic sub: #Num has: 'n mu m2 sd id lo hi txt w' !

! Num methods !
init
  self n:   0;
       mu:  0;
       m2:  0;
       sd:  0;
       lo:  (10 raisedToInteger: 32);
       hi:  (-1 * (10 raisedToInteger: 32));
       w:   1 !!