function permute(s, st,     i, j, n, tmp) {
    n = split(s, item,//)
    if (st > n) {  print s; return }
    for (i=st; i<=n; i++) {
        if (i != st) {
         tmp = item[st]; item[st] = item[i]; item[i] = tmp
         nextstr = item[1]
         for (j=2; j<=n; j++) nextstr = nextstr delim item[j]
        }else {
          nextstr = s
        }
       permute(nextstr, st+1)
       n = split(s, item, //)
   }
}
{ permute($0,1) }
