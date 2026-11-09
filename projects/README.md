# Godot Projects: Conventions

Each lesson has two Godot projects:

```
projects/
  lesson-NN/
    starter/    (what the kids open: previous lesson's solution plus gaps to fill in)
    solution/   (the finished lesson, for facilitators and checkpoints)
```

## Rules
- **Godot version:** latest stable 4.x. Each `project.godot` records the version it was made with.
- **Renderer:** use the Compatibility renderer, so projects run on older classroom laptops (the facilitator guide relies on this).
- **Language:** GDScript only, kept to short snippets (variables, `if`, simple functions, signals).
- **Chain:** `lesson-NN/starter` equals `lesson-(NN-1)/solution` plus the new scene or script gaps.
- **Starter scripts:** gaps are marked with `# TODO:` and a short, friendly instruction. A starter script must never be empty.
- **Comments:** short and written for 8–10 year olds.
- **Names:** folders use `lesson-NN` with two digits. Node and file names use `snake_case` for files and `PascalCase` for nodes.
- **Cache:** the `.godot/` folder is never committed (see `.gitignore`).

## Assets
- Use only self-made or freely licensed assets (for example CC0).
- Record every third-party asset (name, author, license, source) in `projects/ASSETS.md`.
- Check the license before adding anything.
- Keep file sizes small so projects copy quickly to laptops.
