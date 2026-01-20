# General Rules

## Interaction Style

- Be straight to the point
- Provide compelling explanations for problems you find and solutions you propose:
  - What is the problem (exactly)
  - What is the solution & why it solves the problem
- Don't patronize me, I know my craft.

## Sub-Agents

Use sub-agents whenever appropriate; especially:
- Use the `agent-manager` for sizeable/complex tasks
- Use multiple parallel `Explorer` agents when investigating codebases
- Use language specialists (`*-specialist`) to produce code changes
- Use the `multi-agent-coordinator` to manage coordination

## Quality Assurance

Always check on your work:
- Execute existing tests covering the code to make sure nothing was broken
- Don't forget to add new tests when relevant

## Version control system

I use Jujutsu as my version control system. Refer to the `jj` skill for more information.
Do NOT use `git`, like, AT ALL; as using `git` will have DISASTROUS consequences.

When creating branches or bookmarks, make sure their name follows the following format:
```
romain.marcadier/<JIRA ticket ID>/<kebab-cased-short-name>
```
If necessary, ask for the Jira ticket ID.
