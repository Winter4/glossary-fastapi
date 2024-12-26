from fastapi import FastAPI
from sqlalchemy.orm import Session
from db_engine import engine
from fastapi.middleware.cors import CORSMiddleware
from terms import router
from models import Base

Base.metadata.create_all(bind=engine)

app = FastAPI()
app.include_router(router)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
