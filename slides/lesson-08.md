---
marp: true
paginate: true
style: |
  section { font-size: 34px; }
  h1 { color: #0f62fe; }
  pre { font-size: 26px; }
---

# Lesson 8: Lives and Game Over

---

# Today's Goal

> "Today I will give my hero three lives, and show Game Over when they run out."

---

# A Recipe Is a Function

A recipe for a sandwich:

1. Get bread
2. Add filling
3. Put it together

Write it **once**, use it **many times**.

---

# New Words

- **Function**: a recipe, a named group of instructions
- **Call**: use a function, run its recipe
- **Lives**: how many tries the player has left
- **Game over**: when the player has no lives left

---

# Let's Build! (Part 1)

1. In `main.tscn`, select **HUD**
2. Add two **Label** nodes:
   - **LivesLabel**: `Lives: 3`
   - **GameOverLabel**: `Game Over! Press Enter`
3. Turn off **Visible** for **GameOverLabel**

---

# Checkpoint

Hands up when you can see "Lives: 3" but **not** the Game Over text.

---

# update_labels Is a Recipe

```gdscript
func update_labels():
	$HUD/ScoreLabel.text = "Score: " + str(score)
	# TODO 4: show the lives in LivesLabel
```

We **call** it with `update_labels()` whenever something changes.

---

# Let's Build! (Part 2)

```gdscript
# TODO 1: add a variable lives that starts at 3

func _on_enemy_hit():
	# TODO 2: take away one life
	# TODO 3: if lives are 0 or less, call end_game()

func end_game():
	# TODO 5: set game_over to true
	# TODO 6: show the GameOverLabel
```

---

# Checkpoint

Hands up when the lives go 3, 2, 1, and then **Game Over** appears.

Press **Enter** to play again!

---

# Make It Yours

- Start with 1 life (hard) or 10 (easy)
- Write a funny Game Over message
- Change the label color

---

# Stuck?

1. Do the label names match the code exactly?
2. Is `end_game()` indented under the `if`?
3. `<=` means "less than or equal to"
4. Ask your neighbor, then the facilitator

---

# Great Work!

- What is a function?
- Which recipe did we call many times?
- Next lesson: sound and music
