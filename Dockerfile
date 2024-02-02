FROM python:3.9
LABEL authors="lionvsx"

ADD /app/back .

RUN pip install -r requirements.txt

EXPOSE 6000
# Run the Flask app with flask --app app.py run --port=6000 and specify current environment
CMD ["flask", "run", "--host=0.0.0.0", "--port=6000"]