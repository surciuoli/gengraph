# gengraph
Unix utility to generate *directed-weighted*-graphs in some text file codification, commonly used in programming contests.

Given `V` the number of vertex, `E` of edges, and `C` the maximum cost, the generated file has the following codification:

```
V
E
v1 e1 c1
v1 w2 c2
...
vi wi ci
...
vE wE cE
```

Where, for each `1 <= i <= E` one have:
* `1 <= vi <= V`, same goes for `wi`
* `1 <= ci <= C`

In addition, there isn't generated any `(vi, vi)` edge (single edged loops).

Obviously, the generated file will contain `E+2` lines, where `E` can't be greater than `V*(V-1)`

## Usage
From a Unix-like terminal type `./gengraph.sh V E C`, where:
* V is the number of vertex. It must be greater than 0.
* E is the number of edges. It will be cropped to `V*(V-1)`
* C is the maximum cost. It must be greateh than 0. 

For example, executing `./gengraph.sh 3 5 1` it will output the following:

```
3
5
3 1 1
2 1 1
1 3 1
1 2 1
2 3 1
```
