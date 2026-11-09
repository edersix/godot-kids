# Lesson 11: My Own Game (Part 1)

> Duration: about 45 minutes | Ages 8–10 | Godot 4.x

## Goal
"Today I will plan my own version of the game and start changing it."

## Big Idea (Concept)
Game makers **plan before they build**. A plan says what the game is about, what the rules are, and what the player does.

## New Words
| Word | Kid-friendly meaning |
|------|----------------------|
| Design | A plan for how your game will look and work |
| Theme | The story or world of your game (space, ocean, castle...) |
| Rule | Something the game always does (3 lives, 1 point per coin) |
| Remix | Take a game and change it to make it yours |

## Materials
- Starter project: `projects/lesson-11/starter` (the complete game from lesson 10, plus extra art in `assets/skins/`)
- Solution project: `projects/lesson-11/solution` (an example remix, for inspiration only)
- Planning sheet: [`resources/game-design-card.md`](resources/game-design-card.md) (print one per child)
- Slides: `slides/lesson-11.md`
- Parent handout: `parent-handouts/lesson-11.md`
- Game blueprint: [`game-blueprint.md`](game-blueprint.md)

## Timing
| Minutes | Activity |
|---------|----------|
| 0–5 | Recap: play the game from lesson 10 for one minute |
| 5–12 | Brainstorm: "What if the game were set in space? In the sea? What would the hero collect?" |
| 12–22 | Fill in the Game Design Card |
| 22–42 | Start building: choose 2–3 changes from the menu below |
| 42–45 | Wrap-up and show-and-tell |

## Steps
1. Open `lesson-11/starter` and run the game. **Checkpoint:** the full game from lesson 10 works.
2. Hand out the **Game Design Card**. Each child fills in the title, theme, hero, collectible and danger. **Checkpoint:** every child has a name and a theme for their game.
3. Ask each child to say their game idea out loud to a neighbor in one sentence.
4. Choose **2 or 3** changes from the menu below to start with. Do the easy ones first. **Checkpoint:** each child has ticked their choices on the card.
5. Build the first change. Test it by running the game. **Checkpoint:** every child has run their changed game at least once.
6. Save the project often (Ctrl+S).

### Menu of Changes (choose 2–3)
| Level | Change | Where |
|-------|--------|-------|
| Easy | New background color | `Background` node, **Color** |
| Easy | New words in the labels | `ScoreLabel`, `LivesLabel`, `GameOverLabel`, **Text** |
| Easy | New picture for the hero, coin or enemy | The **Sprite2D** **Texture**; use `assets/skins/` |
| Easy | More coins, more enemies | Duplicate nodes under `Coins` or `Enemies` |
| Medium | Faster or slower hero | `hero.gd`, `speed` |
| Medium | Different number of lives | `main.gd`, `lives` |
| Medium | New walls or a maze | `Walls` |
| Medium | Different sounds or music | The **Stream** of the audio nodes |
| Challenge | Coins worth more points | `main.gd`, the number in `score += 1` |
| Challenge | A faster enemy | The enemy's **Speed** in the Inspector |

## Fill-in-the-Blank Code
No new fill-in-the-blank code. Kids edit values in the existing scripts.

| File | Marker | Answer |
|------|--------|--------|
| (none) | (none) | (none) |

## Make It Yours
This whole lesson is "make it yours". Fast finishers choose an extra change from the **Challenge** level.

## If You Get Stuck
1. "Which part of your plan are you building right now?"
2. "Did you undo with Ctrl+Z, or compare with the Game Design Card?"
3. If the game no longer runs, start again from the lesson 11 `starter` and redo the change.
4. Look at the solution project for ideas (not to copy).

## Facilitator Notes
- Some kids will want big ideas (a boss fight, a second hero). Praise the idea, and help the child choose one small step to build this lesson and note the rest as "next".
- Keep an eye on children who do not know what to choose. Offer three options and let them pick.
- Save-time reminder: halfway through the build, say "Save now!".
- Make a note of each child's plan. You will need it in lesson 12 for the showcase and the certificates.
- Fast finishers: help a neighbor, or add a second theme change.

## Wrap-Up
- Recap question: "What did you change? What do you want to change next time?"
- Each child tells one sentence about their game.
- Next lesson: we finish and show our games.
