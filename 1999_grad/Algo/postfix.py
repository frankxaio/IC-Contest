import matplotlib.pyplot as plt
import matplotlib.animation as animation

# Example postfix expression and its step-by-step evaluation
expression = "5 1 2 + 4 * + 3 -"
steps = []
stack = []

tokens = expression.split()
for token in tokens:
    if token.replace('.', '', 1).lstrip('-').isdigit():
        stack.append(float(token))
        steps.append((token, list(stack)))
    elif token in {'+', '-', '*', '/', '**'}:
        b = stack.pop()
        a = stack.pop()
        if token == '+':
            result = a + b
        elif token == '-':
            result = a - b
        elif token == '*':
            result = a * b
        elif token == '/':
            result = a / b
        elif token == '**':
            result = a ** b
        stack.append(result)
        steps.append((token, list(stack)))

# Setup animation
fig, ax = plt.subplots()
bar_rects = ax.bar(range(len(stack)), [0]*len(stack))
text = ax.text(0.02, 0.95, "", transform=ax.transAxes)

def update(frame):
    token, state = steps[frame]
    ax.clear()
    ax.bar(range(len(state)), state, color='skyblue')
    ax.set_ylim(0, max(max(s) for _, s in steps) + 5)
    ax.set_title(f"Token: {token} | Stack: {state}")
    ax.set_xticks(range(len(state)))
    ax.set_xlabel("Stack Index")
    ax.set_ylabel("Value")

ani = animation.FuncAnimation(fig, update, frames=len(steps), interval=1000, repeat=False)
plt.close()
ani
