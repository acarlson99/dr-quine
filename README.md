# Dr. Quine

## Colleen

Simple quine.  Prints source to stdout

```bash
./Colleen > test.s
diff Colleen.s test.s
```

## Grace

Prints source to `Grace_kid.s`

```bash
./Grace
diff Grace.s Grace_kid.s
```

## Sully

Prints source to `Sully_X.s` only if X > 0

```bash
./Sully
diff Sully.s Sully_4.s
```