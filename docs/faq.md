# Frequently Asked Questions

## Why is LTO enabled?

It is required for `-sanitizer=cfi` to function.

## Why are RTTI and exceptions disabled?

I want C++ to behave as C with classes.

## Why did you chose the specific language standards?

I think that C99 and C++03 are the closest match in terms of features.

## Why is the project not hardened by default?

I assume this project to be more useful for embedded development than desktop
application development. There are already many great projects out there to
help with the latter.
