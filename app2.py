from flask import Flask, jsonify
app = Flask(__name__)

@app.route("/status")
def status():
    return jsonify({"status": "API Service 2 is healthy"})

if __name__ == "__main__":
    app.run(port=5002)
