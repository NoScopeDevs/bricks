# 🧱 Bricks

[![style: discord][discord_badge]][discord_link]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]

[Mason][mason_link] brick templates to build no scoped projects.

## Getting started 🚀

### Install locally 🏠

To install one or more bricks locally, add them to your directory's `mason.yaml`:

```yaml
bricks:
  <BRICK_NAME>:
    git:
      url: https://github.com/NoScopeDevs/bricks
      path: bricks/<BRICK_NAME>
```

### Install globally 🗺

To install one or more bricks globally, use the following command:

```sh
$ mason i https://github.com/NoScopeDevs/bricks --path bricks/<BRICK_NAME>
```

*Note: Be sure to replace `<BRICK_NAME>` with one of the following bricks:*

## Available bricks 🧱

| Brick Name            | Description                                      |
| --------------------- | ------------------------------------------------ |
| scoped_app            | Create a new, opinionated Flutter Skeleton app   |


[discord_badge]: https://img.shields.io/discord/870519133899472926.svg?logo=discord
[discord_link]: https://discord.gg/maXe5YsWXH
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
