# Ruby Stack Implementation – `Coding_Assessment.rb`

## 📌 Overview

This Ruby script implements a custom **Stack** class with support for fast maximum value retrieval.  
It also defines a subclass `Extra` that extends the functionality by adding an efficient `mean` method, which computes the average of stack values in constant time.

---

## 📂 File Description

- **`Coding_Assessment.rb`**  
  Contains two main classes:
  - `Stack` — A standard stack with `push`, `pop`, and `max` methods.
  - `Extra` — A subclass that adds support for the `mean` method.

---

## ⚙️ Class Breakdown

### ✅ `Stack` Class

Implements a basic stack with enhanced features:
- `push(value)`  
  Accepts only **unsigned integers** and adds them to the stack.  
  Updates an auxiliary stack (`@maxstack`) to track the current maximum efficiently.

- `pop()`  
  Removes and returns the most recently pushed item (LIFO behavior).  
  Updates the `@maxstack` accordingly.

- `max()`  
  Returns the current maximum value in the stack in **O(1)** time.  
  If the stack is empty, it prints a message and returns `nil`.

---

### ✅ `Extra` Class (inherits from `Stack`)

Enhances the `Stack` by adding:

- `mean()`  
  Efficiently calculates the average value in the stack using two tracking variables:
  - `@sum` — Total sum of all values.
  - `@count` — Number of values pushed.
  
  This method performs in **O(1)** time — no need to loop through the stack.

- Overridden `push` and `pop` methods  
  These methods update `@sum` and `@count` in sync with stack operations.

---

## 🧪 Sample Usage

```ruby
s = Extra.new
s.push(100)
s.push(200)
s.push(300)

s.mean    # Output: Mean is: 200.0
s.max     # Output: 300
s.pop     # Output: 300 popped
s.mean    # Output: Mean is: 150.0
s.max     # Output: 200
