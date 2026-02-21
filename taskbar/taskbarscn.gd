extends Node2D

var discordscn = preload("res://discord/discord.tscn")
var discordinstance = null

var notesscn = preload("res://notes/notes.tscn")
var notesinstance = null

# discord open and close
func _on_discordbtn_pressed() -> void:
	if (discordinstance == null):
		discordinstance = discordscn.instantiate()
		add_child(discordinstance)
		discordinstance.get_node("friendspage/discord-closebtn").pressed.connect(_on_discord_close_btn_pressed)

	else:
		remove_child(discordinstance)
		discordinstance = null

func _on_discord_close_btn_pressed():
	if (discordinstance != null):
		remove_child(discordinstance)
		discordinstance = null

# notes open and close
func _on_notesbtn_pressed() -> void:
	if (notesinstance == null):
		notesinstance = notesscn.instantiate()
		add_child(notesinstance)
	else:
		remove_child(notesinstance)
		notesinstance = null
