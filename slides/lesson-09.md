---
marp: true
paginate: true
style: |
  section { font-size: 34px; }
  h1 { color: #0f62fe; }
  pre { font-size: 26px; }
---

# Lesson 9: Sound and Music

---

# Today's Goal

> "Today I will add sound effects and music to my game."

---

# Silent Game vs Game with Sound

*(Facilitator: play the game with the sound muted, then with the sound on.)*

Which one feels better?

---

# New Words

- **AudioStreamPlayer**: a node that plays a sound
- **Stream**: the sound file the player uses
- **Autoplay**: starts by itself when the game starts
- **Loop**: plays again from the start when it ends

---

# Let's Build! (Part 1)

In `main.tscn`, select **Main** and add three **AudioStreamPlayer** nodes:

| Name | Stream |
|------|--------|
| **CoinSound** | `coin.wav` |
| **HitSound** | `hit.wav` |
| **Music** | `music.wav` (turn on **Autoplay**) |

---

# Checkpoint

Hands up when you can hear the music.

---

# Let's Build! (Part 2)

```gdscript
func _on_coin_collected():
	score += 1
	# TODO 1: play the coin sound
	update_labels()

func _on_enemy_hit():
	...
	# TODO 2: play the hit sound
```

---

# Checkpoint

Hands up when you hear a sound for **every coin** and for **every hit**.

---

# Make It Yours

- Make the music quiet but fun (**Volume dB**: try -10)
- Try a different sound
- Stop the music at Game Over: `$Music.stop()`

---

# Stuck?

1. Is the **Stream** field filled in?
2. Is the laptop volume up? Are the headphones plugged in?
3. Is the node name exactly **CoinSound**?
4. Ask your neighbor, then the facilitator

---

# Great Work!

- How does the code tell a sound to play?
- Next lesson: animation and sparkles!
