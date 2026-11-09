---
marp: true
paginate: true
style: |
  section { font-size: 34px; }
  h1 { color: #0f62fe; }
  pre { font-size: 26px; }
---

# Lesson 6: Keep Score

---

# Today's Goal

> "Today I will show a score on the screen that goes up when I collect a coin."

---

# Recap

What is a **signal**?
Can you name one from last lesson?

---

# New Words

- **Label**: a node that shows words on the screen
- **HUD**: words and numbers drawn on top of the game
- **score**: a variable (a box) that remembers the points
- **emit**: send a signal

---

# The Plan

1. The **coin** sends a signal: "I was collected!"
2. The **game** listens
3. The game adds **1** to the score
4. The **label** shows the new score

---

# Let's Build! (Part 1)

1. In `main.tscn`, select **Main**, add a **CanvasLayer**: **HUD**
2. Inside **HUD**, add a **Label**: **ScoreLabel**
3. Set **Text** to `Score: 0`, **Font Size** to 32

---

# Checkpoint

Hands up when you can see "Score: 0" in the corner.

---

# Let's Build! (Part 2): the coin

```gdscript
# TODO 1: add a signal called collected

func _on_body_entered(body):
	if body.name == "Hero":
		# TODO 2: send the signal
		queue_free()
```

---

# Let's Build! (Part 3): the game

```gdscript
var score = 0

func _ready():
	for coin in $Coins.get_children():
		# TODO 3: listen to the coin's signal
		pass

func _on_coin_collected():
	# TODO 4: add 1 to the score
	# TODO 5: show the score in the label
	pass
```

---

# Checkpoint

Hands up when your score goes up with every coin.

---

# Make It Yours

- Change the words: "Treasure: ", "Stars: ", "Points: "
- Change the label color and size
- Make each coin worth 10 points

---

# Stuck?

1. Does `$HUD/ScoreLabel` match the names in the Scene panel?
2. Did you save `coin.gd` before `main.gd`?
3. Does `"Score: "` have a space after the colon?
4. Ask your neighbor, then the facilitator

---

# Great Work!

- What does `score += 1` do?
- Who sends the signal? Who listens?
- Next lesson: an enemy appears!
