# Lesson 9: Sound and Music

> Duration: about 45 minutes | Ages 8–10 | Godot 4.x

## Goal
"Today I will add sound effects and music to my game."

## Big Idea (Concept)
Nodes can be told what to do from code. An **AudioStreamPlayer** plays a sound when we call `.play()`.

## New Words
| Word | Kid-friendly meaning |
|------|----------------------|
| AudioStreamPlayer | A node that plays a sound |
| Stream | The sound file the player uses |
| Autoplay | Starts by itself when the game starts |
| Loop | Plays again from the start when it ends |

## Materials
- Starter project: `projects/lesson-09/starter`
- Solution project: `projects/lesson-09/solution`
- Slides: `slides/lesson-09.md`
- Parent handout: `parent-handouts/lesson-09.md`
- Game blueprint: [`game-blueprint.md`](game-blueprint.md) (`CoinSound`, `HitSound`, `Music`)
- Headphones recommended (see the facilitator guide)

## Timing
| Minutes | Activity |
|---------|----------|
| 0–5 | Recap: "What happens at Game Over?" |
| 5–10 | Demo: the game with sound, then with the sound muted |
| 10–35 | Build it step by step |
| 35–42 | Make it yours |
| 42–45 | Wrap-up and show-and-tell |

## Steps
1. Open `lesson-09/starter` and run it. **Checkpoint:** the game is silent. Ask: "What does it feel like without sound?"
2. In `main.tscn`, select **Main**, add an **AudioStreamPlayer**, and rename it **CoinSound**. Drag `assets/coin.wav` onto its **Stream** field. **Checkpoint:** **CoinSound** has a stream.
3. Add another **AudioStreamPlayer** named **HitSound** with `assets/hit.wav`.
4. Add a third **AudioStreamPlayer** named **Music** with `assets/music.wav`. Turn on **Autoplay** in the Inspector. **Checkpoint:** run the game; the music starts by itself.
5. Open `main.gd`. Fill in `# TODO 1` (play the coin sound) and `# TODO 2` (play the hit sound). **Checkpoint:** no red underlines.
6. Run the game. **Checkpoint:** a sound plays when you collect a coin and when the enemy hits you.
7. Check the volume. Select a player and change **Volume dB** in the Inspector (negative numbers are quieter, for example `-10`).

## Fill-in-the-Blank Code
```gdscript
func _on_coin_collected():
	score += 1
	# TODO 1: write  $CoinSound.play()
	update_labels()

func _on_enemy_hit():
	if game_over:
		return
	lives -= 1
	# TODO 2: write  $HitSound.play()
	$Hero.position = start_position
	update_labels()
	if lives <= 0:
		end_game()
```

| File | Marker | Answer |
|------|--------|--------|
| `main.gd` | TODO 1 | `$CoinSound.play()` |
| `main.gd` | TODO 2 | `$HitSound.play()` |

## Make It Yours
- Change the volume of the music so that it is quiet but still fun.
- Record or choose a different sound (the facilitator may offer other files from `assets/`).
- Use `$Music.stop()` or `$Music.play()` as an extra challenge to stop the music at Game Over.

## If You Get Stuck
1. "Is the **Stream** field filled in?"
2. "Is the volume turned up on the laptop? Are the headphones plugged in?"
3. "Is the name exactly **CoinSound**, with capital letters?"
4. Look at the solution project.

## Facilitator Notes
- Remind kids to wear headphones if possible, and to keep the volume low. Six laptops playing music at once in one group is loud.
- Common mistake: forgetting **Autoplay** on **Music**. The game stays silent.
- Common mistake: the music stops after about 8 seconds. The music file must loop. The file has a loop marker that Godot should detect. If it does not, the facilitator selects `music.wav` in the FileSystem dock, opens the **Import** tab, sets **Loop Mode** to **Forward**, and clicks **Reimport**. (Facilitators: check this once before the session. It was not tested in an editor.)
- Fast finishers: stop the music at Game Over by adding `$Music.stop()` to `end_game()`.

## Wrap-Up
- Recap question: "How does the code tell a sound to play?"
- Show-and-tell: kids choose the best sound combination.
- Next lesson: we make the game shine with animation and sparkles.
