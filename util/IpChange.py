import time

import ip

with open('log.txt','a') as LOG:
    t = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
    msg = ip.public_v4()
    LOG.write(t+'\t'+msg+'\n')
    print(t+'\t'+msg+'\n')
