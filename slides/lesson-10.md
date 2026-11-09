---
marp: true
paginate: true
style: |
  section { font-size: 34px; }
  h1 { color: #0f62fe; }
  pre { font-size: 26px; }
---

# Lesson 10: Make It Shine

---

# Today's Goal

> "Today I will make my coins bob up and down and sparkle when I collect them."

---

# Plain Coin vs Shiny Coin

*(Facilitator: show both versions.)*

What is different? How does it feel?

---

# New Words

- **Animation**: changing something over time, like a flip-book
- **AnimationPlayer**: a node that plays animations
- **Keyframe**: a snapshot: "at this time, the value is this"
- **Particles**: lots of tiny pictures that burst out, like sparks

---

# A Bobbing Coin

| Time | Sprite2D y |
|------|-----------|
| 0 | 0 |
| 0.5 | -8 |
| 1.0 | 0 |

Godot fills in everything in between!

---

# Let's Build! (Part 1)

1. Open `coin.tscn`, select the **AnimationPlayer**
2. Choose the **bob** animation: length **1**, **Loop** on
3. Select **Sprite2D**
4. Click the **key icon** next to **Position** at 0, 0.5 and 1.0
   (change the **y** at 0.5 to **-8**)

---

# Checkpoint

Hands up when you press **Play** and the coin bobs.

---

# Let's Build! (Part 2)

1. Turn on **Autoplay on Load** for **bob**
2. Select **Sparkle**: **Emitting** off, **One Shot** on
3. **Amount** 12, **Lifetime** 0.5, **Explosiveness** 1
4. Pick a color

---

# Let's Build! (Part 3)

```gdscript
collected.emit()
# TODO 1: hide the picture
# TODO 2: start the sparkle
...
# TODO 3: remove the coin from the game
```

---

# Checkpoint

Hands up when a coin sparkles as you collect it.

---

# Make It Yours

- Change the sparkle color and how far they fly
- Make the coin bob higher or faster
- Add a bobbing animation to your hero

---

# Stuck?

1. Is **Loop** on? Is the animation selected?
2. Did you click the **key icon** every time?
3. Is **Emitting** off at the start?
4. Ask your neighbor, then the facilitator

---

# Great Work!

- What is a keyframe? What does a particle do?
- Next lesson: we design our **own** game!
