# Project 1b for CSC 417 - Theory of Programming Languages.

Learning Smalltalk.

## Executing:

### Environment

Execute auto-oneb to set up the Smalltalk environment.

### 1b1.

In the command prompt execute gst.

When prompted by gst enter the following:

```
FileStream fileIn: 'my.st' "mytricks" !
FileStream fileIn: 'num.st' "yourcode" !

| num |
num := Num new.
num nextPutAll: #( 2 3 4 4 4 4 5 5 6 7 7 8 9 9 9 9 10 11 12 12).
num sd oo. "==> 3.06"
num mu oo. "==> 7"
num n  oo. "==> 20" !
```

### 1b2.

In the command prompt execute gst.

When prompted by gst enter the following:

```
FileStream fileIn: 'my.st' "mytricks" !
FileStream fileIn: 'num.st' "yourcode" !

#(1 2 3) eject: [:x | x > 1.5] "==> (1)" !
```

### 1b3.

In the command prompt execute gst.

When prompted by gst enter the following:

```
FileStream fileIn: 'my.st' !

#(10 21 32 43 54) b4Now: [:b4 :now|((now-b4)/b4) asFloat oo] !
```

The expected output should include:

```
1.1
0.5238095238095238
0.34375
0.2558139534883721
```

### 1b4.

In the command prompt execute gst.

When prompted by gst enter the following:

```
FileStream fileIn: 'my.st'.
FileStream fileIn: 'polymorphism.st'.
Object goodVisit.
```

The expected output should include:

```
1
2
#abc
'Huy'
18
0
'tammy'
21
0
'tammy'
21
0
'tammy'
21
0
'tammy'
21
0
4
5
```