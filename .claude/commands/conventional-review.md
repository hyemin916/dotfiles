---
description: Convert review comments to Conventional Comments format
argument-hint: <review comment>
---

# Conventional Review Comment Formatter

Transform code review comments into structured Conventional Comments format for clearer, more actionable feedback.

## Task

Analyze the user's review comment ($ARGUMENTS) and convert it to Conventional Comments format:

**Format**: `<label> [decorations]: <subject>`

### Step 1: Comment Analysis
Analyze the intent and tone of the provided review comment to understand:
- What the reviewer is trying to communicate
- The severity/priority of the feedback
- Whether it requires immediate action

### Step 2: Label Classification

Choose the most appropriate label based on these criteria:

- **praise**: Positive feedback, compliments, acknowledgment of good work
  - Keywords: "great", "nice", "excellent", "well done", "clean", "love it"
  
- **suggestion**: Improvement proposals, optional recommendations
  - Keywords: "consider", "maybe", "could", "suggest", "what about", "how about"
  
- **issue**: Clear problems, bugs, errors that need fixing
  - Keywords: "bug", "error", "problem", "broken", "wrong", "incorrect"
  
- **question**: Seeking clarification or understanding
  - Keywords: "why", "how", "what", "clarify", "?", "don't understand"
  
- **nitpick**: Minor style or preference issues
  - Keywords: "formatting", "style", "naming", "spacing", "indentation"
  
- **todo**: Must-do items, required changes
  - Keywords: "must", "need to", "required", "should", "mandatory"
  
- **thought**: Ideas, brainstorming, non-actionable insights
  - Keywords: "idea", "thought", "thinking", "wondering", "brainstorm"
  
- **chore**: Simple tasks, administrative changes
  - Keywords: "comment", "documentation", "cleanup", "tidy"
  
- **note**: Information sharing, context providing
  - Keywords: "FYI", "note", "information", "context", "heads up"

### Step 3: Decoration Decision

Add appropriate decorations:

- **(blocking)**: Use when the issue prevents merge/approval
  - Critical bugs, security issues, functionality problems
  
- **(non-blocking)**: Use for suggestions, minor improvements, questions
  - Style preferences, optional optimizations, clarifications
  
- **(if-minor)**: Use when resolution depends on effort required
  - Improvements that are only worth doing if easy to implement

### Step 4: Subject Generation

Create a concise, descriptive subject line (max 50 characters) that:
- Summarizes the main point
- Uses imperative mood when suggesting actions
- Avoids unnecessary words

### Step 5: Output Format

Provide the analysis in this structure:

```
## Analysis

**Original Comment**: [original comment]

**Intent**: [intent analysis]
**Severity**: [severity assessment]

## Recommended Format

**Primary Option**:
```
<label> [decoration]: <subject>

[optional discussion if needed]
```

**Alternative Options**:
- `<alternative-label>`: [reason]
- `<alternative-label>`: [reason]

## Usage Tips
- [context-appropriate usage tip]
```

### Step 6: Korean Language Support

When input is in Korean:
- Maintain Korean in the discussion section if it's more natural
- Use English labels and decorations (standard format)
- Consider cultural context in severity assessment

## Examples

**Input**: "This function looks too complex. How about splitting it into smaller functions?"

**Output**:
```
## Analysis

**Original Comment**: This function looks too complex. How about splitting it into smaller functions?

**Intent**: Points out function complexity and suggests refactoring
**Severity**: Medium (improvement suggestion, not requiring immediate fix)

## Recommended Format

**Primary Option**:
```
suggestion (non-blocking): reduce function complexity

Splitting this function into smaller units would improve readability and maintainability.
```

**Alternative Options**:
- `thought`: sharing an idea about refactoring
- `issue (if-minor)`: if complexity is viewed as a problem

## Usage Tips
- Set as non-blocking to deliver the suggestion non-forcefully
- Providing specific ways to split the function would be more helpful
```

Now analyze the provided comment: $ARGUMENTS