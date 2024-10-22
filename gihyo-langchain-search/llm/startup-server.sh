# ここではないのはわかりつつ、入ってくれないので一旦いれる
pip install sse_starlette
# ホストからアクセスするため、FastAPIのデフォルトホスト127.0.0.1から0.0.0.0に変更
uvicorn gihyo-langchain-search.llm.main:app --reload --host=0.0.0.0 --port 8503
