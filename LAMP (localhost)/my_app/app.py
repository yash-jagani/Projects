from flask import Flask, render_template
import pymysql

app = Flask(__name__)

def db_connection():
    connection = pymysql.connect(
            host='db',
            user='username',
            password='userpassword',
            database='blog_db'
            )
    return connection

@app.route('/')
def index():
    connection = db_connection()
    cursor = connection.cursor()

    cursor.execute('SELECT * FROM blog_table')
    rows = cursor.fetchall()
    cursor.close()
    connection.close()

    return render_template('index.html', rows=rows)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
