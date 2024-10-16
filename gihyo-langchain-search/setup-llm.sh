cd gihyo-langchain-search/llm
python -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install --root-user-action=ignore langchain==0.2.3 langchain-openai==0.1.8 langgraph==0.0.66 langserve==0.2.2 langchain-community==0.2.4 fastapi==0.111.0
