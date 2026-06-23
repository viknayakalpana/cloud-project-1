from flask import Flask
app = Flask(__name__)
@app.route('/')
def home():
    return "cloud file storage system running"
@app.route('/login')
def login():
    return "registration page API"
@app.route('/register')
def register():
    return "register page API"
if __name__=="__main__":
    app.run(debug=True)