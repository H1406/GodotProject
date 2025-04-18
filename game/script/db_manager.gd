extends Control

var db:SQLite

func _ready():
	db = SQLite.new()  # Initialize it
	db.path = "res://users.db"  
	
		
func login(username: String, password: String) -> bool:
	db = SQLite.new()  # Initialize it
	var result
	db.path = "res://users.db" 
	db.open_db()
	if(db == null):
		print("failed")
	else:
		var where_clause = "username = '%s' AND password = '%s'" % [username, password]
		result = db.select_rows("users", where_clause, ["*"])
	return result.size() > 0
func create_table():
	var data = {
			"username" :{"data_type":"text", "primary_key": true, "not null":true},
			"password":{"data_type":"text", "not null":true}
		}
	# Create table if it doesn't exist
	db.create_table("users",data)

func register(username: String, password: String) -> bool:
	db = SQLite.new()  # Initialize it
	db.path = "res://users.db" 
	db.open_db()
	var user = {
		"username":username,
		"password":password
	}
	return (db.insert_row("users",user))
		
	
