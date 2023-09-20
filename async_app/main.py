
from fastapi import FastAPI, BackgroundTasks
import time
import uuid

app = FastAPI()

tasks = {}

def long_running_task(task_id: str):
    time.sleep(30)  # Simulate a long task
    tasks[task_id] = "completed"

@app.post("/start-task/")
async def start_task(background_tasks: BackgroundTasks):
    task_id = str(uuid.uuid4())
    tasks[task_id] = "running"
    background_tasks.add_task(long_running_task, task_id)
    return {"task_id": task_id}

@app.get("/status/{task_id}")
async def get_status(task_id: str):
    status = tasks.get(task_id)
    if not status:
        return {"status": "not found"}
    return {"status": status}
