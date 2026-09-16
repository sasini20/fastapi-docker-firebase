from fastapi import FastAPI
import firebase_admin
from firebase_admin import credentials

# Firebase connecting
cred = credentials.Certificate("firebase-key.json")
firebase_admin.initialize_app(cred)

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from FastAPI, Docker, and Firebase!"}