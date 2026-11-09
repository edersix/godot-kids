# Lesson 4: Walls and Worlds

> Duration: about 45 minutes | Ages 8–10 | Godot 4.x

## Goal
"Today I will build walls so my hero cannot walk through them."

## Big Idea (Concept)
Things in a game only bump into each other if they have a **collision shape**. The shape is an invisible outline that tells Godot where the thing is solid.

## New Words
| Word | Kid-friendly meaning |
|------|----------------------|
| Collision | Two things touching each other |
| Collision shape | The invisible outline of a thing |
| StaticBody2D | A node for things that never move, like walls |
| Duplicate | Make an exact copy of a node |

## Materials
- Starter project: `projects/lesson-04/starter`
- Solution project: `projects/lesson-04/solution`
- Slides: `slides/lesson-04.md`
- Parent handout: `parent-handouts/lesson-04.md`
- Game blueprint: [`game-blueprint.md`](game-blueprint.md) (`Walls`)

## Timing
| Minutes | Activity |
|---------|----------|
| 0–5 | Recap: "What makes the hero move?" |
| 5–10 | Demo: the hero walking through a "ghost" object, then stopping at a wall |
| 10–35 | Build it step by step |
| 35–42 | Make it yours |
| 42–45 | Wrap-up and show-and-tell |

## Steps
1. Open `lesson-04/starter` and run it. Walk the hero off the edge of the window. **Checkpoint:** the hero walks right out of the room.
2. In the Scene panel, select **Main** and press **+**. Add a **Node2D** and rename it **Walls** (press F2 to rename). **Checkpoint:** **Walls** is a child of **Main**.
3. Select **Walls**, press **+**, and add a **StaticBody2D**. Rename it **TopWall**. **Checkpoint:** **TopWall** has a yellow warning triangle. That is normal: it has no shape yet.
4. Select **TopWall**, press **+**, and add a **CollisionShape2D**. **Checkpoint:** the warning triangle is still there until the shape is set.
5. Select the **CollisionShape2D**. In the Inspector, next to **Shape**, choose **New RectangleShape2D**. **Checkpoint:** the warning disappears and a blue box appears in the viewport.
6. Click the new shape in the Inspector and set **Size** to `1152` x `20`. Then set the **Position** of the **TopWall** to `576`, `10`. **Checkpoint:** a thin blue strip lies along the top of the window.
7. Make the wall visible: with **TopWall** selected, add a **ColorRect** as a child. Set its **Color** and its **Size** to `1152` x `20`, and its **Position** to `-576`, `-10`. **Checkpoint:** a colored strip is now at the top, exactly over the blue outline.
8. Run the game and walk upward. **Checkpoint:** the hero stops at the top wall.
9. Make the bottom wall: right-click **TopWall** > **Duplicate** (or Ctrl+D). Rename it **BottomWall**, and set its **Position** to `576`, `638`. Its shape has the same size as the top wall's, so nothing else needs to change. **Checkpoint:** a wall at the bottom of the window.
10. Make the left wall: duplicate **TopWall** again and rename it **LeftWall**. Select its **CollisionShape2D**, right-click the **Shape** field in the Inspector and choose **Make Unique**. This gives the wall its own shape, so the other walls do not change. Now set the shape **Size** to `20` x `648`. Set the **LeftWall** **Position** to `10`, `324`. Select its **ColorRect** and set the **Size** to `20` x `648` and the **Position** to `-10`, `-324`. **Checkpoint:** a wall along the left side.
11. Make the right wall: duplicate **LeftWall** and rename it **RightWall**. Both walls have the same size, so only set its **Position** to `1142`, `324`. **Checkpoint:** four walls, the hero cannot leave the room.
12. Save and run. **Checkpoint:** the hero stays inside.

## Fill-in-the-Blank Code
No new code in this lesson.

| File | Marker | Answer |
|------|--------|--------|
| (none) | (none) | (none) |

## Make It Yours
- Build a maze or an obstacle in the middle of the room. Remember: StaticBody2D, CollisionShape2D, and a ColorRect for the picture.
- Choose a color scheme (all walls blue, or rainbow walls).
- Add a wall around a tree from lesson 2 so the hero cannot walk through the tree.

## If You Get Stuck
1. "Does your wall have a CollisionShape2D with a shape set?"
2. "Is the CollisionShape2D a child of the StaticBody2D?"
3. Show **Make Unique** if changing one wall changes another.
4. Look at the solution project.

## Facilitator Notes
- The most common mistake in this lesson: after duplicating, changing the shape size changes **both** walls, because copies share one shape. Step 10 uses **Make Unique** to avoid this. If a child skipped it, the fix is the same: **Make Unique** on the wall that should change.
- Another common mistake: forgetting to give the wall its shape, so the hero walks straight through.
- Turn on **Debug > Visible Collision Shapes** in the editor's Debug menu, then run the game, to show shapes while it runs. The hero's own outline is visible too. This is a good "magic" demo.
- Fast finishers: build a maze with a goal area in the corner.

## Wrap-Up
- Recap question: "Why did the hero walk through the first wall we made?"
- Show-and-tell: kids walk through each other's mazes.
- Next lesson: we scatter coins to collect.
