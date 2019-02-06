Magic sub: #Num has: 'n mu m2 sd id lo hi txt w'

! Num methods !
init
  self n:   0;
       mu:  0e;
       m2:  0e;
       sd:  0e;
       lo:  (10 raisedToInteger: 32);
       hi:  (-1 * (10 raisedToInteger: 32));
       w:   1
!
       
numInc: x
  | d |
  x = #? ifTrue: [^x].
  n := n + 1.
  d := x - mu.
  mu := mu + (d / n).
  m2 := m2 + (d * (x - mu)).
  x > hi ifTrue: [hi := x].
  x < lo ifTrue: [lo := x].
  n >= 2 ifTrue: [sd := (m2 / (n - 1 + (10 raisedTo: -32))) raisedTo: 0.5].
  ^x
!

numDec: x
  | d |
  x = #? ifTrue: [^x].
  n = 1 ifTrue: [^x].
  n := n - 1.
  d := x - mu.
  mu := mu - (d / n).
  m2 := m2 - (d * (x - mu)).
  n >= 2 ifTrue: [sd := (m2 / (n - 1 + (10 raisedTo: -32))) raisedTo: 0.5].
  ^x
!

nextPutAll: collection
  collection do: [:a | self numInc: a]. 
!

!!

! Array methods !

eject: aBlock 
  ^self select: [:element | (aBlock value: element) not]

!!