Lessons Learned
===============


`vars_prompt:` defaults to `private: true`, hiding input from the user.

There used to be a short form, but that is deprecated.

Specifying `default:` does show the default in the prompt.

```yml
- name: var1
  prompt: "Question"
  default: "Answer"
```

`Question [Answer]: _`
