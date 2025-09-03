---
title: Derive Most Math Trigonometry Formulas via Euler Identity
tags:
  - math
  - how-to
date: 2025-09-03
math: true
---
When I was in high school, I remember that I had to memorize all trigonometry formulas. I didn't have a single way to resort to when I was locked. 

Fortunately, As I will show here, most trigonometry formulas can be derived via simple algebraic modifications of `Euler's Formula`. 

This way, any time we are locked and can't remember what the formula was, we can simply derive it. 

### Euler's Formula
$$e^{ix} = \cos(x) + i\sin(x)$$
### Expressing Sine and Cosine
Since cosine is an even function and sine is an odd function: $$\cos(-x) = \cos(x)$$ $$\sin(-x) = -\sin(x)$$
Therefore: $$e^{-ix} = \cos(x) - i\sin(x)$$
Adding the two Euler's equations:
$$e^{ix} + e^{-ix} = [\cos(x) + i\sin(x)] + [\cos(x) - i\sin(x)]$$ $$e^{ix} + e^{-ix} = 2\cos(x) + i\sin(x) - i\sin(x)$$ $$e^{ix} + e^{-ix} = 2\cos(x)$$


Solving for cosine: $$\cos(x) = \frac{e^{ix} + e^{-ix}}{2}$$


Subtracting the equations:
$$e^{ix} - e^{-ix} = [\cos(x) + i\sin(x)] - [\cos(x) - i\sin(x)]$$ 
$$e^{ix} - e^{-ix} = \cos(x) + i\sin(x) - \cos(x) + i\sin(x)$$ 
$$e^{ix} - e^{-ix} = 2i\sin(x)$$

Solving for sine: $$\sin(x) = \frac{e^{ix} - e^{-ix}}{2i}$$

So, we now have cosine and sine in terms of imaginary exponential. We can do interesting things from now on.

### Double Angle Formulas (Direct)
For cosine:
$$\cos(2x) = \frac{e^{i2x} + e^{-i2x}}{2}$$ $$\cos(2x) = \frac{(e^{ix})^2 + (e^{-ix})^2}{2}$$
Substituting Euler's formula: $$\cos(2x) = \frac{[\cos(x) + i\sin(x)]^2 + [\cos(x) - i\sin(x)]^2}{2}$$Expanding the squares: $$\cos(2x) = \frac{[\cos^2(x) + 2i\sin(x)\cos(x) - \sin^2(x)] + [\cos^2(x) - 2i\sin(x)\cos(x) - \sin^2(x)]}{2}$$ $$\cos(2x) = \frac{2\cos^2(x) - 2\sin^2(x)}{2}$$ $$\cos(2x) = \cos^2(x) - \sin^2(x)$$Using the Pythagorean identity $\cos^2(x) + \sin^2(x) = 1$: $$\cos(2x) = \cos^2(x) - (1 - \cos^2(x))$$ $$\cos(2x) = 2\cos^2(x) - 1$$Alternatively: $$\cos(2x) = 1 - 2\sin^2(x)$$
For sine:
$$\sin(2x) = \frac{e^{i2x} - e^{-i2x}}{2i}$$$$\sin(2x) = \frac{(e^{ix})^2 - (e^{-ix})^2}{2i}$$
Substituting Euler's formula: $$\sin(2x) = \frac{[\cos(x) + i\sin(x)]^2 - [\cos(x) - i\sin(x)]^2}{2i}$$Expanding: $$\sin(2x) = \frac{[\cos^2(x) + 2i\sin(x)\cos(x) - \sin^2(x)] - [\cos^2(x) - 2i\sin(x)\cos(x) - \sin^2(x)]}{2i}$$ $$\sin(2x) = \frac{4i\sin(x)\cos(x)}{2i}$$$$\sin(2x) = 2\sin(x)\cos(x)$$
## Triple Angle Formulas (Direct)

Starting with Euler's formula:

$$e^{ix} = \cos(x) + i\sin(x)$$

For the triple angle, we have:

$$e^{i3x} = \cos(3x) + i\sin(3x)$$

We can also express this as:

$$e^{i3x} = (e^{ix})^3 = (\cos(x) + i\sin(x))^3$$

Expanding using the binomial theorem:

$$(a + b)^3 = a^3 + 3a^2b + 3ab^2 + b^3$$

With $a = \cos(x)$ and $b = i\sin(x)$:

$$(\cos(x) + i\sin(x))^3 = \cos^3(x) + 3\cos^2(x)(i\sin(x)) + 3\cos(x)(i\sin(x))^2 + (i\sin(x))^3$$

Simplifying, noting that $(i\sin(x))^2 = -\sin^2(x)$ and $(i\sin(x))^3 = -i\sin^3(x)$:

$$(\cos(x) + i\sin(x))^3 = \cos^3(x) + 3i\cos^2(x)\sin(x) - 3\cos(x)\sin^2(x) - i\sin^3(x)$$

Rearranging:

$$(\cos(x) + i\sin(x))^3 = [\cos^3(x) - 3\cos(x)\sin^2(x)] + i[3\cos^2(x)\sin(x) - \sin^3(x)]$$

Comparing this with $e^{i3x} = \cos(3x) + i\sin(3x)$, we get:

$$\cos(3x) = \cos^3(x) - 3\cos(x)\sin^2(x)$$ $$\sin(3x) = 3\cos^2(x)\sin(x) - \sin^3(x)$$
## Pythagorean Identity with Steps

From Euler's formula:

$$e^{ix} = \cos(x) + i\sin(x)$$

The modulus of a complex number squared equals the sum of squares of real and imaginary parts:

$$|e^{ix}|^2 = |\cos(x) + i\sin(x)|^2 = \cos^2(x) + \sin^2(x)$$

Since $|e^{ix}| = |e^i|^{|x|} = 1^{|x|} = 1$ ([+](https://math.stackexchange.com/questions/2279457/why-does-eix-1-when-x-is-a-real-number)):

$$\cos^2(x) + \sin^2(x) = 1$$

## Sum and Difference Formulas

For cosine of sum:

$$\cos(a+b) = \frac{e^{i(a+b)} + e^{-i(a+b)}}{2}$$ $$\cos(a+b) = \frac{e^{ia}e^{ib} + e^{-ia}e^{-ib}}{2}$$

Substituting Euler's formula:

$$\cos(a+b) = \frac{[\cos(a) + i\sin(a)][\cos(b) + i\sin(b)] + [\cos(a) - i\sin(a)][\cos(b) - i\sin(b)]}{2}$$

Multiplying the terms:

$$\cos(a+b) = \frac{[\cos(a)\cos(b) - \sin(a)\sin(b) + i(\sin(a)\cos(b) + \cos(a)\sin(b))] + [\cos(a)\cos(b) - \sin(a)\sin(b) - i(\sin(a)\cos(b) + \cos(a)\sin(b))]}{2}$$ $$\cos(a+b) = \frac{2[\cos(a)\cos(b) - \sin(a)\sin(b)]}{2}$$ $$\cos(a+b) = \cos(a)\cos(b) - \sin(a)\sin(b)$$

For cosine of difference, replace $b$ with $-b$:

$$\cos(a-b) = \cos(a)\cos(-b) - \sin(a)\sin(-b)$$ $$\cos(a-b) = \cos(a)\cos(b) - \sin(a)(-\sin(b))$$ $$\cos(a-b) = \cos(a)\cos(b) + \sin(a)\sin(b)$$

For sine of sum:

$$\sin(a+b) = \frac{e^{i(a+b)} - e^{-i(a+b)}}{2i}$$ $$\sin(a+b) = \frac{e^{ia}e^{ib} - e^{-ia}e^{-ib}}{2i}$$

Substituting Euler's formula:

$$\sin(a+b) = \frac{[\cos(a) + i\sin(a)][\cos(b) + i\sin(b)] - [\cos(a) - i\sin(a)][\cos(b) - i\sin(b)]}{2i}$$

Expanding:

$$\sin(a+b) = \frac{[\cos(a)\cos(b) - \sin(a)\sin(b) + i(\sin(a)\cos(b) + \cos(a)\sin(b))] - [\cos(a)\cos(b) - \sin(a)\sin(b) - i(\sin(a)\cos(b) + \cos(a)\sin(b))]}{2i}$$ $$\sin(a+b) = \frac{2i[\sin(a)\cos(b) + \cos(a)\sin(b)]}{2i}$$ $$\sin(a+b) = \sin(a)\cos(b) + \cos(a)\sin(b)$$

For sine of difference, replace $b$ with $-b$:

$$\sin(a-b) = \sin(a)\cos(-b) + \cos(a)\sin(-b)$$ $$\sin(a-b) = \sin(a)\cos(b) + \cos(a)(-\sin(b))$$ $$\sin(a-b) = \sin(a)\cos(b) - \cos(a)\sin(b)$$

### Half Angle Formulas
Half-angles can be derived from results of above equations. I couldn't find a way to simply extract it from Euler's formula. 

From the double angle formula $\cos(2x) = 2\cos^2(x) - 1$, we get:

$$\cos^2(x) = \frac{1 + \cos(2x)}{2}$$

So,  $$\cos\left(\frac{x}{2}\right) = \pm\sqrt{\frac{1 + \cos(x)}{2}}$$

The sign depends on the quadrant of $\frac{x}{2}$.

Similarly, from $\cos(2x) = 1 - 2\sin^2(x)$:

$$\sin^2(x) = \frac{1 - \cos(2x)}{2}$$
So, $$\sin\left(\frac{x}{2}\right) = \pm\sqrt{\frac{1 - \cos(x)}{2}}$$

Using the tangent identity $\tan(x) = \frac{\sin(x)}{\cos(x)}$:

$$\tan\left(\frac{x}{2}\right) = \frac{\sin\left(\frac{x}{2}\right)}{\cos\left(\frac{x}{2}\right)} = \frac{\pm\sqrt{\frac{1 - \cos(x)}{2}}}{\pm\sqrt{\frac{1 + \cos(x)}{2}}}$$

Simplifying:

$$\tan\left(\frac{x}{2}\right) = \sqrt{\frac{1 - \cos(x)}{1 + \cos(x)}}$$

Using the identity $1 - \cos(x) = 2\sin^2\left(\frac{x}{2}\right)$:

$$\tan\left(\frac{x}{2}\right) = \frac{\sin(x)}{1 + \cos(x)}$$

Alternatively:

$$\tan\left(\frac{x}{2}\right) = \frac{1 - \cos(x)}{\sin(x)}$$

### Solving Some Challenging Trigonometry Formulas 
#### Problem 1: Sum of Cosines

Prove that $\sum_{k=0}^{n-1} \cos\left(x + \frac{2\pi k}{n}\right) = 0$ for any integer $n > 1$ and any angle $x$.

**Solution:**

Using Euler's formula, we have: $$\cos\left(x + \frac{2\pi k}{n}\right) = \frac{e^{i(x + \frac{2\pi k}{n})} + e^{-i(x + \frac{2\pi k}{n})}}{2}$$

The sum becomes: $$\sum_{k=0}^{n-1} \cos\left(x + \frac{2\pi k}{n}\right) = \frac{1}{2}\sum_{k=0}^{n-1} \left(e^{i(x + \frac{2\pi k}{n})} + e^{-i(x + \frac{2\pi k}{n})}\right)$$ $$= \frac{1}{2}\sum_{k=0}^{n-1} \left(e^{ix} \cdot e^{i\frac{2\pi k}{n}} + e^{-ix} \cdot e^{-i\frac{2\pi k}{n}}\right)$$ $$= \frac{e^{ix}}{2}\sum_{k=0}^{n-1} e^{i\frac{2\pi k}{n}} + \frac{e^{-ix}}{2}\sum_{k=0}^{n-1} e^{-i\frac{2\pi k}{n}}$$

Both sums are geometric series with ratio $r = e^{i\frac{2\pi}{n}}$ and $r = e^{-i\frac{2\pi}{n}}$ respectively.

For the first sum, using the formula for geometric series: $$\sum_{k=0}^{n-1} e^{i\frac{2\pi k}{n}} = \frac{1 - e^{i2\pi}}{1 - e^{i\frac{2\pi}{n}}} = \frac{1 - 1}{1 - e^{i\frac{2\pi}{n}}} = 0$$

Since $e^{i2\pi} = 1$ (one full rotation in the complex plane).

Similarly, the second sum equals zero.

Therefore, $\sum_{k=0}^{n-1} \cos\left(x + \frac{2\pi k}{n}\right) = 0$

#### Problem 2: Products to Powers

Express $\cos^n(x)$ in terms of cosines of multiple angles.

**Solution:**

Using Euler's formula: $$\cos(x) = \frac{e^{ix} + e^{-ix}}{2}$$

Therefore: $$\cos^n(x) = \left(\frac{e^{ix} + e^{-ix}}{2}\right)^n$$

Using the binomial theorem: $$\cos^n(x) = \frac{1}{2^n}\sum_{k=0}^{n} \binom{n}{k} (e^{ix})^k (e^{-ix})^{n-k}$$ $$= \frac{1}{2^n}\sum_{k=0}^{n} \binom{n}{k} e^{ix(2k-n)}$$

Using Euler's formula again: $$e^{ix(2k-n)} = \cos(x(2k-n)) + i\sin(x(2k-n))$$

Since we're finding $\cos^n(x)$ which is real, we take only the real part: $$\cos^n(x) = \frac{1}{2^n}\sum_{k=0}^{n} \binom{n}{k} \cos(x(2k-n))$$

For example, when $n=3$: $$\cos^3(x) = \frac{1}{2^3}[\binom{3}{0}\cos(-3x) + \binom{3}{1}\cos(-x) + \binom{3}{2}\cos(x) + \binom{3}{3}\cos(3x)]$$ $$= \frac{1}{8}[\cos(3x) + 3\cos(x) + 3\cos(-x) + \cos(-3x)]$$ $$= \frac{1}{8}[4\cos(3x) + 3\cos(x) + 3\cos(x)]$$ (since cosine is even) $$= \frac{1}{4}\cos(3x) + \frac{3}{4}\cos(x)$$

#### Problem 3: Prove a Complex Identity

Prove that $\cos^4(x) - \sin^4(x) = \cos(2x)$.

**Solution:**

Using Euler's formula: $$\cos(x) = \frac{e^{ix} + e^{-ix}}{2}$$ $$\sin(x) = \frac{e^{ix} - e^{-ix}}{2i}$$

Calculating $\cos^4(x)$: $$\cos^4(x) = \left(\frac{e^{ix} + e^{-ix}}{2}\right)^4 = \frac{(e^{ix} + e^{-ix})^4}{16}$$

Expanding using the binomial theorem: $$\cos^4(x) = \frac{1}{16}[e^{4ix} + 4e^{2ix} + 6 + 4e^{-2ix} + e^{-4ix}]$$

Similarly for $\sin^4(x)$: $$\sin^4(x) = \left(\frac{e^{ix} - e^{-ix}}{2i}\right)^4 = \frac{(e^{ix} - e^{-ix})^4}{16i^4} = \frac{(e^{ix} - e^{-ix})^4}{16 \cdot 1}$$

Expanding: $$\sin^4(x) = \frac{1}{16}[e^{4ix} - 4e^{2ix} + 6 - 4e^{-2ix} + e^{-4ix}]$$

Now calculating $\cos^4(x) - \sin^4(x)$: $$\cos^4(x) - \sin^4(x) = \frac{1}{16}[8e^{2ix} + 8e^{-2ix}] = \frac{1}{2}[e^{2ix} + e^{-2ix}]$$

Using Euler's formula again, this equals: $$\cos^4(x) - \sin^4(x) = \cos(2x)$$

Which completes the proof.

#### Problem 4: Sum of Sines Series

Find the sum: $S = \sum_{k=1}^{n} \sin(kx)$ for $x \neq 2\pi m$ where $m$ is an integer.
**Solution:**

Using Euler's formula: $$\sin(kx) = \frac{e^{ikx} - e^{-ikx}}{2i}$$

The sum becomes: $$S = \sum_{k=1}^{n} \sin(kx) = \frac{1}{2i}\sum_{k=1}^{n} (e^{ikx} - e^{-ikx})$$ $$= \frac{1}{2i}\left[\sum_{k=1}^{n} e^{ikx} - \sum_{k=1}^{n} e^{-ikx}\right]$$

Each sum is a geometric series: $$\sum_{k=1}^{n} e^{ikx} = e^{ix} \cdot \frac{1 - e^{inx}}{1 - e^{ix}}$$ $$\sum_{k=1}^{n} e^{-ikx} = e^{-ix} \cdot \frac{1 - e^{-inx}}{1 - e^{-ix}}$$

Substituting: $$S = \frac{1}{2i}\left[e^{ix} \cdot \frac{1 - e^{inx}}{1 - e^{ix}} - e^{-ix} \cdot \frac{1 - e^{-inx}}{1 - e^{-ix}}\right]$$

Multiplying numerator and denominator of the second fraction by $e^{ix}$: $$S = \frac{1}{2i}\left[\frac{e^{ix}(1 - e^{inx})}{1 - e^{ix}} - \frac{1 - e^{-inx}}{e^{ix} - 1}\right]$$ $$= \frac{1}{2i}\left[\frac{e^{ix}(1 - e^{inx})}{1 - e^{ix}} + \frac{1 - e^{-inx}}{1 - e^{ix}}\right]$$

Combining fractions: $$S = \frac{1}{2i(1 - e^{ix})}\left[e^{ix}(1 - e^{inx}) + (1 - e^{-inx})\right]$$ $$= \frac{1}{2i(1 - e^{ix})}\left[e^{ix} - e^{ix}e^{inx} + 1 - e^{-inx}\right]$$ $$= \frac{1}{2i(1 - e^{ix})}\left[e^{ix} - e^{i(n+1)x} + 1 - e^{-inx}\right]$$

Using Euler's formula, we can express this in terms of sine and cosine: $$S = \frac{\sin(\frac{(n+1)x}{2})\sin(\frac{nx}{2})}{\sin(\frac{x}{2})}$$

This is the closed form for the sum of the first $n$ sines.
#### Problem 5: Trigonometric Equation (Euler's Formula Only)

Solve the equation $\sin(3x) + \sin(5x) = 0$ for $x \in [0, 2\pi)$.

Solution:

I'll solve this using only Euler's formula:

$$e^{ix} = \cos(x) + i\sin(x)$$

From this formula, we can express sine in terms of complex exponentials:

$$\sin(x) = \frac{e^{ix} - e^{-ix}}{2i}$$

Applying this to our equation:

$$\sin(3x) + \sin(5x) = 0$$

$$\frac{e^{i3x} - e^{-i3x}}{2i} + \frac{e^{i5x} - e^{-i5x}}{2i} = 0$$

Multiplying both sides by $2i$:

$$e^{i3x} - e^{-i3x} + e^{i5x} - e^{-i5x} = 0$$

Rearranging terms:

$$e^{i3x} + e^{i5x} = e^{-i3x} + e^{-i5x}$$

Let $z = e^{ix}$. Then our equation becomes:

$$z^3 + z^5 = z^{-3} + z^{-5}$$

Multiplying both sides by $z^5$:

$$z^8 + z^{10} = z^2 + 1$$

Rearranging:

$$z^{10} + z^8 - z^2 - 1 = 0$$

This can be factored as:

$$z^{10} + z^8 - z^2 - 1 = z^8(z^2 + 1) - (z^2 + 1) = (z^8 - 1)(z^2 + 1) = 0$$

Therefore, either $z^8 - 1 = 0$ or $z^2 + 1 = 0$.

From $z^8 - 1 = 0$, we get: $$z^8 = 1$$

This means $z$ is an 8th root of unity. In the complex plane, the 8th roots of unity are equally spaced around the unit circle and can be written as:

$$z = e^{i\frac{2\pi k}{8}} = e^{i\frac{\pi k}{4}}$$ for $k = 0, 1, 2, ..., 7$

Since we defined $z = e^{ix}$, we can find $x$ by comparing the exponents:

$$e^{ix} = e^{i\frac{\pi k}{4}}$$

This gives us: $$x = \frac{\pi k}{4}$$ for $k = 0, 1, 2, ..., 7$

In the interval $[0, 2\pi)$, these solutions are: $$x = 0, \frac{\pi}{4}, \frac{\pi}{2}, \frac{3\pi}{4}, \pi, \frac{5\pi}{4}, \frac{3\pi}{2}, \frac{7\pi}{4}$$

From $z^2 + 1 = 0$, we get: $$z^2 = -1$$

This gives us: $$z = \pm i = e^{i\frac{\pi}{2}}$$ or $$z = e^{i\frac{3\pi}{2}}$$

Which corresponds to: $$x = \frac{\pi}{2}$$ or $$x = \frac{3\pi}{2}$$

These values are already included in our solutions from $z^8 = 1$ (specifically when $k = 2$ and $k = 6$).

Therefore, the complete set of solutions in $[0, 2\pi)$ is: $$x = 0, \frac{\pi}{4}, \frac{\pi}{2}, \frac{3\pi}{4}, \pi, \frac{5\pi}{4}, \frac{3\pi}{2}, \frac{7\pi}{4}$$