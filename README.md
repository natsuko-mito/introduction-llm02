# introduction-llm02

## 環境構築
下記を実行。
`create-next-app@14.2.3` が実行され、`What is your project named/` に `web` と入力。
残りは全部そのまま選択。
```bash
make init
```

## docker立ち上げ
下記実行
```bash
make docker-up
```

## llm(APIサーバ)の立ち上げ

コンテナに入って`/root`ディレクトリで下記を実行。
```bash
bash gihyo-langchain-search/llm/startup-server.sh
```
接続の確認
```bash
curl -X POST 'http://localhost:8503/graph/invoke' -H 'Content-Type: application/json' -d '{"input": {"messages": [["user", "今日の天気を教えて"]]}}'
```


### hook-main
最初に試した小さいmainを残している。
下記で接続の確認ができる。コンテナでもホストでもアクセスできる。
```bash
curl -X POST 'http://localhost:8503/openai/invoke' -H 'Content-Type: application/json' -d '{"input": [{"type": "human", "content": "hello"}]}'
```
ストリームでの接続。
```bash
curl -X POST 'http://localhost:8503/openai/stream' -H 'Content-Type: application/json' -d '{"input": [{"type": "human", "content": "hello"}]}'
```

