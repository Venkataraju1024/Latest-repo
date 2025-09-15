from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from Jenkins CI/CD with Docker! this is working on jenkins servers testing for AWS from venkat"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
