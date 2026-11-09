---
marp: true
paginate: true
style: |
  section { font-size: 34px; }
  h1 { color: #0f62fe; }
  pre { font-size: 26px; }
---

# Lesson 7: Meet the Enemy

---

# Today's Goal

> "Today I will add an enemy that walks back and forth. If it touches my hero, the hero goes back to the start."

---

# Game: "If..."

"**If** I clap, you jump."
"**If** I stomp, you sit."

An **if** is a question with a "yes" answer.

---

# New Words

- **Enemy**: a character the hero must avoid
- **Patrol**: walk back and forth along a path
- **if**: do something only when the answer is "yes"
- **Direction**: `1` = right, `-1` = left

---

# How the Enemy Turns Around

- Walk right
- **If** too far right: turn left
- **If** too far left: turn right

---

# Let's Build! (Part 1)

1. Open `enemy.tscn`
2. Connect the `body_entered` signal (like the coin)
3. Open `enemy.gd` and fill in the gaps

---

# The Gaps in enemy.gd

```gdscript
# TODO 1: if too far right, turn left
if false:
	# TODO 2: direction becomes -1
	pass
# TODO 3: if too far left, turn right
if false:
	# TODO 4: direction becomes 1
	pass
```

---

# Let's Build! (Part 2)

1. In `main.tscn`, select **Enemies**
2. Drag `enemy.tscn` in
3. Set **Speed** 100, **Left Limit** 100, **Right Limit** 500
4. Run!

---

# Checkpoint

Hands up when your enemy walks back and forth.

---

# Let's Build! (Part 3)

```gdscript
for enemy in $Enemies.get_children():
	# TODO 5: listen to the hit signal
	pass

func _on_enemy_hit():
	# TODO 6: send the hero back to the start
	pass
```

---

# Checkpoint

Hands up when touching the enemy sends your hero back.

---

# Make It Yours

- Change the speed and the limits
- Add more enemies at different heights
- Who is your enemy? A ghost? A robot? A cat?

---

# Stuck?

1. Is the **green icon** next to **Enemy**?
2. `>` means "more than", `<` means "less than"
3. `-1` needs the minus sign
4. Ask your neighbor, then the facilitator

---

# Great Work!

- What does `if position.x > right_limit` ask?
- Next lesson: lives and Game Over
