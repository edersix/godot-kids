---
marp: true
paginate: true
style: |
  section { font-size: 34px; }
  h1 { color: #0f62fe; }
---

# Lesson 2: Sprites and Scenes

---

# Today's Goal

> "Today I will put my hero on the screen and place it where I want."

---

# Recap

What is a **node**?
What is a **scene**?

---

# New Words

- **Sprite**: a picture in a game
- **Parent / child**: a node holding other nodes / a node inside another
- **Position**: where something is (x goes right, y goes down)
- **Instance**: a copy of a scene. The scene is the cookie cutter, each copy is a cookie

---

# A Scene Is a Tree

```
Hero
  Sprite2D
  CollisionShape2D
```

**Hero** is the parent. The others are its children.

Move the parent: the children move too!

---

# Let's Build! (Part 1)

1. Open `hero.tscn`
2. Select **Hero**, press **+**, add a **Sprite2D**
3. Drag `hero.svg` onto the **Texture** field
4. Save (**Ctrl+S**)

---

# Checkpoint

Hands up when you can see your hero's picture.

---

# Let's Build! (Part 2)

1. Open `main.tscn` (use the tabs)
2. Drag `hero.tscn` into the viewport
3. Set **Position** to **576, 324**
4. Run the game

---

# Checkpoint

Hands up when your hero stands in the middle of the window.

---

# Make It Yours

- Place your hero anywhere you like
- Add trees and flowers from `assets/`
- Change the background color

---

# Stuck?

1. Is the Sprite2D a **child** of the Hero? Look at the indent
2. Which tab are you in: Hero or Main?
3. Ask your neighbor
4. Ask the facilitator

---

# Great Work!

- Which node is the parent? Which is the child?
- Next lesson: we make the hero move
