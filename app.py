from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "Hello, World!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
# Trigger CI workflow test
@app.route("/test")
def test_route():
    return "Test OK"
