# sample-singularity
不老でsingularityを動かすためのサンプルコード

1. 環境構築
実行環境として、.sifファイルを生成する。
singularity buildのオプションである-f(--fakeroot)は計算ノードでしか使えないので、フロントで.defファイルをbuildはできなさそう。
```
$ pjsub --interact -L rscgrp=cx-interactive,jobenv=singularity
$ module load singularity
$ singularity build -f ./env.sif ./sampleEnv.def
ctrl + Dで抜けておく
```

2. 実行
計算ノードで、hello.pyを実行してみる。run.sh内でhello.pyを呼び出している。
jobが完了すると、run.sh.xxx.outとrun.sh.xxx.statsが出力される。
.outの方に、標準出力されるので、"hello"と表示される。
```
$ pjsub run.sh
```
