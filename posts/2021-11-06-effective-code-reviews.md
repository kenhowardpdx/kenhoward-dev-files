---
title: Effective Code Reviews
summary: Providing an effective code review can be distilled down to a simple truth: criticism of the code is not a criticism of the coder.
---

Providing an effective code review can be distilled down to a simple truth: criticism of the code is not a criticism of the coder. But, before you begin, you need to know the context, avoid distractions, take notes, and provide actionable feedback.

## Serious Business

Approving a pull request is your acceptance that you understand the code and can debug it at 4 am when there's an outage. You are taking ownership of the code. First, it was an idea, and then it became code; now, you have a chance to accept or reject the idea's implementation. Take the code review seriously.

## Know the Context

Hopefully, the code you are reviewing is in a knowledge space familiar to you. If not, spend some time reviewing the existing code and documentation before analyzing the proposed change. Often a change will follow an established pattern in existing code, and your style preferences may not be helpful.

## Avoid Distractions

Providing an effective code review takes time and energy away from your other tasks and obligations. Therefore, it's essential to set aside these obligations so that you are not distracted and can focus on evaluating the code proposed by your peer. Whichever way you do that is up to you; I tend to block off my calendar and enable "Do Not Disturb" on my laptop.

## Take Notes

I like to skim a pull request making as many comments as I feel necessary. In my first pass, I leave the initial thought: "knit: confusing" or "read docs about this." Of course, you may have your method of note-taking, and that's fine. Jot down things you want to return to before submitting your review.

## Understand Tests

Tests describe what the actual code is doing. Therefore, understanding the tests is critical to your understanding of the code. If the tests are confusing to read, say so in your review. A good test suite exercises the code thoroughly. Be sure to check for error cases not handled or return values not checked. Frequently code coverage doesn't accurately portray expected behavior, and we end up testing the wrong things.

## Evaluate Code

Your understanding of how the code works is the most crucial part of an effective code review. If you do not understand a data structure or a complex regular expression, call it out. Your understanding of the code is more important than the conciseness of the code. The author of the code understands the code better than anyone because they wrote it. However, this is precisely why your feedback is required.

## Provide Actionable Feedback

As you start to write your feedback, look back on your notes. What questions do you have for the author? Are the tests comprehensive? Do the tests test the correct behavior? What confused you about this proposal? Does the code match what the author wrote in the pull request?

Giving the author actionable feedback is key to having a positive interaction. All parties need to know that the criticism of the code is not the criticism of the coder. So while you can provide comments like "this is nice" and "LGTM," it'll be better to give clear and direct feedback on what should change or what you took away from the pull request.

Assuming you are on the on-call rotation, how confident are you that this code will not take down your production service at 4 am? If you are 100% sure this code is solid, give the code your approval. If there's any doubt, call it out now.

It's serious business giving effective code reviews. By setting time aside to focus, taking notes, understanding tests, and providing actionable feedback, you are ensuring your codebase remains maintainable for new and old contributors alike.
