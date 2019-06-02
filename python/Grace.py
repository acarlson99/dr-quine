#!/usr/bin/env python3

TARGET = 'Grace_kid.py'
S = '#!/usr/bin/env python3%c%cTARGET = %r%cS = %r%c# 🅱️%cF = \'\'\'try:%c    with open(TARGET, "w") as f:%c        f.write(S %% (10, 10, TARGET, 10, S, 10, 10, 10, 10, 10, 10, 10, 10, 10))%cexcept:%c    pass\'\'\'%c%cexec(F)%c'
# 🅱️
F = '''try:
    with open(TARGET, "w") as f:
        f.write(S % (10, 10, TARGET, 10, S, 10, 10, 10, 10, 10, 10, 10, 10, 10))
except:
    pass'''

exec(F)
