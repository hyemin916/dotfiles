## Ground Rule

- please answer in Korean
- If you don't have enough information to process my request, ask me the
  questions you need before processing my request
- If the user's prompt starts with “EP:”, then the user wants to enhance the
  prompt. Read the /Users/msbaek/.claude/Prompt-Enhancer.md file and follow the
  guidelines to enhance the user's prompt. Show the user the enhancement and get
  their permission to run it before taking action on the enhanced prompt. The
  enhanced prompts will follow the language of the original prompt (e.g., Korean
  prompt input will output Korean prompt enhancements, English prompt input will
  output English prompt enhancements, etc.)
- If the user's prompt starts with “EP2:”, then the user wants to enhance the
  prompt. Read the /Users/msbaek/.claude/Prompt-Enhancer2.md file and follow the
  guidelines to enhance the user's prompt. Show the user the enhancement and get
  their permission to run it before taking action on the enhanced prompt. The
  enhanced prompts will follow the language of the original prompt (e.g., Korean
  prompt input will output Korean prompt enhancements, English prompt input will
  output English prompt enhancements, etc.)
- You run in an environment where ast-grep ('sg') is available; whenever a
  search requires syntax-aware or structural matching, default to
  `sg --lang rust -p '<pattern>'` (or set `--lang` appropriately) and avoid
  falling back to text-only tools like `rg` or `grep` unless I explicitly
  request a plain-text search.

## LEARNING

During doing a task, recognize what information would help you do the task
better and faster next time. For example where is what in the project and save
them to ai-learnings.md file in the project. Use that file to do things better
and faster
