# Lesson 1: Meet Godot

> Duration: about 45 minutes | Ages 8–10 | Godot 4.x

## Goal
"Today I will open Godot, change a message, and run my first program."

## Big Idea (Concept)
Everything in Godot is made of **nodes**. A node is a building block that does one job. Nodes live together in a **scene**.

## New Words
| Word | Kid-friendly meaning |
|------|----------------------|
| Node | A building block with one job (show a word, show a picture, play a sound) |
| Scene | A group of nodes that work together |
| Inspector | The panel where you change how a node looks and behaves |
| Run | Start the game to see what you made |

## Materials
- Starter project: `projects/lesson-01/starter`
- Solution project: `projects/lesson-01/solution`
- Slides: `slides/lesson-01.md`
- Parent handout: `parent-handouts/lesson-01.md`
- Game blueprint: [`game-blueprint.md`](game-blueprint.md) (lesson 1 is a warm-up scene and is not part of the final game)

## Timing
| Minutes | Activity |
|---------|----------|
| 0–5 | Welcome: "Who has played a video game?" Explain that today kids start making one |
| 5–10 | Demo: show the finished Coin Quest game from the lesson 10 solution. Then show today's small goal |
| 10–35 | Build it step by step |
| 35–42 | Make it yours |
| 42–45 | Wrap-up and show-and-tell |

## Steps
1. Open Godot. In the Project Manager choose **Import**, find the `starter` folder for this lesson, select `project.godot`, and open it. **Checkpoint:** the Godot editor opens with a scene on screen.
2. Tour the editor together. Point at each part and name it: the **Scene** panel (top left), the **FileSystem** panel (bottom left), the big **viewport** in the middle, and the **Inspector** (right). **Checkpoint:** kids can point at the Inspector when asked.
3. Click the **Run** button (the play button at the top right, or press F5). A window opens. Close it with the X button. **Checkpoint:** every child has seen the game window open and close.
4. In the Scene panel click the node called **Message**. Look at the Inspector. This node is a **Label**, a node that shows words. **Checkpoint:** the Inspector shows the Label's properties.
5. In the Inspector find **Text** and type your own message, for example `Hello, I am (your name)!`. **Checkpoint:** the new words appear in the viewport.
6. Make the words bigger: in the Inspector open **Theme Overrides > Font Sizes** and set **Font Size** to `48`. **Checkpoint:** the words are bigger.
7. Run the game again. **Checkpoint:** the window shows the new message.
8. Add a new node: select the **Main** node in the Scene panel, press the **+** button (Add Child Node), search for **ColorRect**, and add it. In the Inspector set its **Color** to something you like. **Checkpoint:** a colored rectangle appears.
9. The rectangle hides the words. Drag **ColorRect** in the Scene panel so it sits **above** **Message** in the list. Nodes lower in the list are drawn in front. **Checkpoint:** the message is visible again, in front of the color.
10. Make the rectangle cover the whole window: in the Inspector open **Layout** and set its **Size** to `1152` x `648`, with **Position** `0` and `0`. **Checkpoint:** the colored background fills the viewport.
11. Save with **Ctrl+S** (Cmd+S on a Mac) and run again. **Checkpoint:** message plus colored background.

## Fill-in-the-Blank Code
No code in this lesson.

| File | Marker | Answer |
|------|--------|--------|
| (none) | (none) | (none) |

## Make It Yours
- Write a message about your favorite animal or food.
- Try different colors and font sizes.
- Add a second Label with a different message.

## If You Get Stuck
1. "Which panel do you think shows the settings of a node?" (the Inspector)
2. Click the node in the Scene panel first, then look at the Inspector.
3. Show the child where Text and Font Size are on a neighboring laptop that works.
4. Look at the solution project.

## Facilitator Notes
- Common mistake: kids click the viewport instead of the Scene panel and move things by accident. **Ctrl+Z** undoes it.
- Common mistake: the ColorRect covers the Label, so the message seems to vanish. Step 9 fixes this.
- If a laptop opens the project slowly, it is building the cache for the first time. Wait.
- Fast finishers: add a second Label and change its color in **Theme Overrides > Colors > Font Color**.

## Wrap-Up
- Recap question: "What is a node? What is a scene?"
- Show-and-tell: three kids read their message aloud.
- Next lesson: we add the hero's picture.
