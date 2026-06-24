from flask import Flask
app = Flask(__name__)
@app.route('/')
def home():
    return "cloud storage system"
@app.route('/login')
def login():
    return "login API working"
@app.route('/register')
def register():
    return "register API working"
@app.route('/dashboard')
def dashboard():
    return"dashboard API working"
if __name__=="__main__":
    app.run(debug=True)