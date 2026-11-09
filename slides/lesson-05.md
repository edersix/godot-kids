---
marp: true
paginate: true
style: |
  section { font-size: 34px; }
  h1 { color: #0f62fe; }
  pre { font-size: 26px; }
---

# Lesson 5: Collect Coins

---

# Today's Goal

> "Today I will make coins that disappear when my hero touches them."

---

# A Doorbell Is a Signal

Someone presses the button.
The bell **sends a message**: "Someone is here!"
You **listen** and go to the door.

Godot nodes can do the same thing.

---

# New Words

- **Area2D**: notices when something enters it, but does not block it
- **Signal**: a message: "Something happened!"
- **`if`**: only do this when something is true
- **`queue_free()`**: remove this node from the game

---

# Let's Build! (Part 1)

1. Open `coin.tscn`
2. Select **Coin**, open the **Node** tab, then **Signals**
3. Double-click **body_entered(body)**
4. Press **Connect**

---

# Checkpoint

Hands up when you see the **green icon** next to **Coin**.

---

# Let's Build! (Part 2)

```gdscript
func _on_body_entered(body):
	# TODO 1
	if false:
		# TODO 2
		pass
```

- **TODO 1**: only react when the body is the **Hero**
- **TODO 2**: remove the coin

---

# Let's Build! (Part 3)

1. Open `main.tscn`
2. Select the **Coins** node
3. Drag `coin.tscn` in **5 times**
4. Run the game!

---

# Checkpoint

Hands up when a coin **disappears** as your hero touches it.

---

# Cookie Cutter

`coin.tscn` is the **cutter**.
Every coin in the game is a **cookie**.

If you collect one coin, why do the others stay?

---

# Make It Yours

- Place the coins in a shape: a path, a circle, a heart
- Hide a coin in a corner of your maze

---

# Stuck?

1. Is the **green icon** next to **Coin**?
2. Check the quote marks around `"Hero"` and the capital H
3. Ask your neighbor, then the facilitator

---

# Great Work!

- What is a **signal**? What does the **if** check?
- Next lesson: we keep score
