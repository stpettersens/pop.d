/* Simple pop() and push() functions for D (dlang) arrays.
   Written by Sam Saint-Pettersen, 2024.

   Released to Public domain. Use as you wish.
*/

// element = elements.pop(n)
auto pop(T)(ref T[] elements, int n = -1) {
    // End
    if (n == -1) {
        auto el = elements[$ - 1];
        elements = elements[0 .. $ - 1];
        return el;
    }
    // Start
    else if ((n + 1) < elements.length) {
        auto el = elements[n];
        elements = elements[(n + 1) .. $];
        return el;
    }

    auto el = elements[0];
    elements = elements[1 .. $];
    return el; // Pop zero element if a bad n is provided.
}

// Bonus: elements.push(el) for consistancy,
// but you can't really beat ~= provided by D for a simple append.
void push(T)(ref T[] elements, T el, int n = -1) {
    // End
    if (n == -1) {
        elements ~= el;
        return;
    }
    // Start
    else if (n < elements.length) {
        elements = elements[0 .. n] ~ el ~ elements[n .. $];
        return;
    }

    elements = el ~ elements[1 .. $]; // Push at zero element if bad n provided.
}

// Alias for push():
// elements.append(el)
void append(T)(ref T[] elements, T el, int n = -1) {
    push(elements, el, n);
}

// Alias for push() but with explicit required index (n) first:
// elements.insert(n, el)
void insert(T)(ref T[] elements, int n, T el) {
    push(elements, el, n);
}
