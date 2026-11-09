---
marp: true
paginate: true
style: |
  section { font-size: 34px; }
  h1 { color: #0f62fe; }
  pre { font-size: 26px; }
---

# Lesson 3: Move the Hero

---

# Today's Goal

> "Today I will make my hero walk around with the arrow keys."

---

# Warm-Up: Robot Game

One of you is the **robot**.
One of you gives **instructions**.

Code is a list of instructions for the computer.

---

# New Words

- **Script**: a file with instructions for a node
- **Code**: the instructions, written in words the computer understands
- **Variable**: a named box that remembers something
- **Function**: a group of instructions with a name

---

# A Variable Is a Box

```
var speed = 200
```

The box is called **speed**.
It remembers the number **200**.

---

# Our Script Has Gaps

```gdscript
var speed = 0    # TODO 1

func _physics_process(delta):
	# TODO 2
	var direction = Vector2.ZERO
	# TODO 3
	velocity = Vector2.ZERO
	# TODO 4
```

Fill in the gaps, one by one.

---

# Hints for the Gaps

- **TODO 1**: put a number, like 200
- **TODO 2**: ask which arrow keys are pressed
- **TODO 3**: direction times speed
- **TODO 4**: tell the hero to move

*(Facilitator: answers are in the lesson plan.)*

---

# Checkpoint

Hands up when your hero **walks** with the arrow keys.

---

# Make It Yours

- Find your favorite speed
- Try 50, 400, 1000
- Try a **negative** speed. What happens?

---

# Stuck?

1. Read the red line. What does Godot say?
2. Check capital letters and quote marks
3. Does every `(` have a `)`?
4. Ask your neighbor, then the facilitator

---

# Great Work!

- What does the **speed** variable do?
- Next lesson: we build walls
