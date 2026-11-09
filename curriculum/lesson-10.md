# Lesson 10: Make It Shine

> Duration: about 45 minutes | Ages 8–10 | Godot 4.x

## Goal
"Today I will make my coins bob up and down and sparkle when I collect them."

## Big Idea (Concept)
**Animation** changes a value over time. **Particles** are lots of tiny pictures that burst out of a node. Together they make a game feel alive.

## New Words
| Word | Kid-friendly meaning |
|------|----------------------|
| Animation | Changing something over time, like a flip-book |
| AnimationPlayer | A node that plays animations |
| Keyframe | A snapshot in an animation: "at this time, the value is this" |
| Particles | Lots of tiny pictures that burst out, like sparks |

## Materials
- Starter project: `projects/lesson-10/starter`
- Solution project: `projects/lesson-10/solution`
- Slides: `slides/lesson-10.md`
- Parent handout: `parent-handouts/lesson-10.md`
- Game blueprint: [`game-blueprint.md`](game-blueprint.md) (`AnimationPlayer` with the "bob" animation, `Sparkle`)

## Timing
| Minutes | Activity |
|---------|----------|
| 0–5 | Recap: "How does a sound play from code?" |
| 5–10 | Demo: bobbing coins and a sparkle burst, compared with the plain coin |
| 10–35 | Build it step by step |
| 35–42 | Make it yours |
| 42–45 | Wrap-up and show-and-tell |

## Steps
1. Open `lesson-10/starter`. Open `coin.tscn`. **Checkpoint:** **Coin** has a Sprite2D, a CollisionShape2D, and an **AnimationPlayer** with an empty animation called **bob**.
2. Select the **AnimationPlayer**. The **Animation** panel opens at the bottom. Choose the animation **bob**. Set its length to `1` second and turn on **Loop** (the loop icon). **Checkpoint:** the animation is 1 second long with Loop on.
3. Select the **Sprite2D** node. In the Inspector, click the small key icon next to **Position** to add a keyframe at time `0`. **Checkpoint:** a diamond appears on the timeline at 0.
4. Move the timeline marker to `0.5`. Change the Sprite2D **Position** `y` to `-8`, and add a keyframe with the key icon. **Checkpoint:** a second diamond at 0.5.
5. Move the marker to `1.0`. Set **Position** `y` back to `0` and add a keyframe. **Checkpoint:** three diamonds. Press the **Play** button in the Animation panel; the coin bobs up and down.
6. Select the **AnimationPlayer** and turn on **Autoplay on Load** (the "A" icon in the Animation panel) for `bob`. **Checkpoint:** the coin bobs when the game starts.
7. Select the **Sparkle** node (a **CPUParticles2D**). In the Inspector turn **Emitting** off, **One Shot** on, set **Amount** to `12`, **Lifetime** to `0.5`, **Explosiveness** to `1`, and pick a color. **Checkpoint:** the sparkle does not appear until the coin is collected.
8. Open `coin.gd`. Fill in `# TODO 1` to `# TODO 3`. **Checkpoint:** no red underlines.
9. Run. Collect a coin. **Checkpoint:** the coin hides, sparkles burst out, and then the coin disappears.

## Fill-in-the-Blank Code
Starter `coin.gd`:

```gdscript
extends Area2D

signal collected

func _on_body_entered(body):
	if body.name == "Hero":
		collected.emit()
		# TODO 1: hide the picture
		# TODO 2: start the sparkle
		# This line turns the coin off, so it cannot be collected twice
		$CollisionShape2D.set_deferred("disabled", true)
		# This line waits a little bit, so the sparkle can finish
		await get_tree().create_timer(0.6).timeout
		# TODO 3: remove the coin from the game
```

| File | Marker | Answer |
|------|--------|--------|
| `coin.gd` | TODO 1 | `$Sprite2D.hide()` |
| `coin.gd` | TODO 2 | `$Sparkle.emitting = true` |
| `coin.gd` | TODO 3 | `queue_free()` |

Notes:
- The `set_deferred` and `await` lines are written for the kids. Tell them: "the first one switches the coin off so it cannot be collected twice, the second one waits a moment for the sparkle."
- Do not explain `await` further. It is a magic word that means "wait here".

## Make It Yours
- Change the sparkle color, number of sparks, and how far they fly (**Initial Velocity**).
- Change how high the coin bobs, or how fast (change the animation length).
- Add the same bobbing animation to the hero or the enemy.

## If You Get Stuck
1. "Is the animation selected in the AnimationPlayer? Is Loop on?"
2. "Did you click the key icon for each time you moved the marker?"
3. "Is Emitting off at the start? It must be turned on by code."
4. Look at the solution project.

## Facilitator Notes
- The animation panel is the hardest part of the course so far. Do the first keyframe together on the projector.
- Common mistake: forgetting the key icon, so the value changes but no keyframe is recorded. The coin does not move.
- Common mistake: all coins bob in sync. That is fine; mention it can be changed.
- Common mistake: the sparkle plays once at the start. Make sure **Emitting** is off and **One Shot** is on.
- Fast finishers: add a bobbing animation to the Game Over label.

## Wrap-Up
- Recap question: "What is a keyframe? What does a particle do?"
- Show-and-tell: who has the most beautiful sparkle?
- Next lesson: we design our own game.
