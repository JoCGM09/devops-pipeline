from fastapi import FastAPI
import time

app = FastAPI()

@app.get("/")
def get_current_time():
    return {"hora_actual": time.ctime()}