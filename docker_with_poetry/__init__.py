from fastapi import FastAPI, Response

app = FastAPI()


@app.get("/")
def index() -> Response:
    return Response("The server is running.")
