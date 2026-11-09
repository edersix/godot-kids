---
marp: true
paginate: true
style: |
  section { font-size: 34px; }
  h1 { color: #0f62fe; }
---

# Lesson 4: Walls and Worlds

---

# Today's Goal

> "Today I will build walls so my hero cannot walk through them."

---

# Recap

What makes the hero move?

---

# New Words

- **Collision**: two things touching each other
- **Collision shape**: the invisible outline of a thing
- **StaticBody2D**: a node for things that never move, like walls
- **Duplicate**: make an exact copy of a node

---

# Ghost Objects

Things only bump into each other if they have a **collision shape**.

No shape = the hero walks right through!

---

# Let's Build! (Part 1)

1. Select **Main**, add a **Node2D**, call it **Walls**
2. Inside **Walls**, add a **StaticBody2D**: **TopWall**
3. Inside **TopWall**, add a **CollisionShape2D**
4. In the Inspector: **Shape** = **New RectangleShape2D**

---

# Let's Build! (Part 2)

1. Set the shape **Size** to **1152 x 20**
2. Set **TopWall** **Position** to **576, 10**
3. Add a **ColorRect** under **TopWall** so we can see it
4. Run and walk upward

---

# Checkpoint

Hands up when your hero stops at the top wall.

---

# Let's Build! (Part 3)

1. **Ctrl+D** to duplicate the wall
2. Name it **BottomWall**, **Position** = 576, 638
3. For the side walls: **Make Unique** on the Shape first!
4. Then set the size to **20 x 648**

---

# Checkpoint

Hands up when all four walls keep your hero inside.

---

# Make It Yours

- Build a maze
- Choose a color for your walls
- Put a wall around a tree

---

# Stuck?

1. Does the wall have a **CollisionShape2D** with a shape set?
2. Is the shape a child of the **StaticBody2D**?
3. Did you use **Make Unique**?
4. Ask your neighbor, then the facilitator

---

# Great Work!

- Why did the hero walk through the first wall?
- Next lesson: we scatter coins
