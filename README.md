# docker-glitch-this

簡単に画像ファイルをグリッチできる [TotallyNotChase/glitch-this](https://github.com/TotallyNotChase/glitch-this) を実行するコンテナイメージ。

`numpy` を用意するのは大変そうなので [numpy/numpy-gitpod](https://hub.docker.com/r/numpy/numpy-gitpod) を使っている。

## Exmaple

グリッチレベルは4から8くらいがよさそうだった。
* 
* 元の画像 ![元の画像](https://www.dropbox.com/s/5glyun2a32qvgfd/butterfly-0.png?dl=0)
* グリッチレベル5 ![レベル5](https://www.dropbox.com/s/luiobe9fye5xzme/butterfly-5.png?dl=0)
* グリッチレベル8 ![レベル8](https://www.dropbox.com/s/pv65whsd7ezkre7/butterfly-8.png?dl=0)

## Run

```shell
docker run --rm \
  -v path/to/1.png:/src/1.png:ro \
  -v path/to/dst:/dst \
  ghcr.io/yujiorama/docker-glitch-this:debug \
  --color \
  --scan \
  --force \
  --outfile /dst/1.png \
  /src/1.png \
  5
```
