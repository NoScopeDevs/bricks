# 🧱 Scoped Bricks

<a href="https://discord.gg/maXe5YsWXH"><img src="https://img.shields.io/discord/870519133899472926.svg?logo=discord" alt="discord"></a>

Our [Mason][mason_link] brick templates to build projects.

[mason_link]: https://github.com/felangel/mason

## Getting Started 🚀

To install one or more bricks globally, use the following command:

```sh
$ mason i https://github.com/NoScopeDevs/scoped_bricks --path bricks/<BRICK_NAME>
```

To install one or more bricks locally, add them to your directory's `mason.yaml`:

```yaml
bricks:
  <BRICK_NAME>:
    git:
      url: https://github.com/NoScopeDevs/scoped_bricks
      path: bricks/<BRICK_NAME>
```

*Note: Be sure to replace `<BRICK_NAME>` with one of the following bricks:*

## Brick Templates 🧱

| Brick Name            | Description                                      |
| --------------------- | ------------------------------------------------ |
| scoped_app            | Create a new, opinionated Flutter Skeleton app   |