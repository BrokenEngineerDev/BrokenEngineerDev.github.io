# Kinopult

A personal start menu for [Media Station X](https://msx.benzac.de) that links to
third-party movie and series portals. Hosted on GitHub Pages.

## Publish

1. Push to `main`.
2. In the repository open Settings -> Pages, deploy from the `main` branch, root folder.
3. Do not set a custom domain unless you own one. GitHub always serves the default
   `github.io` domain over HTTPS; tiles still open HTTP portals because a `link:` action
   navigates away from the menu instead of loading the portal inside it.

## Use on the TV

In Media Station X open Settings -> Start Parameter -> Setup and enter
`brokenengineerdev.github.io/Kinopult` (without `https://`).

## Lampa plugins

In Lampa open Settings -> Extensions -> Add plugin and enter
`brokenengineerdev.github.io/Kinopult/lampa/plugins.js` once. After that, edit the
`PLUGIN_URLS` list in `lampa/plugins.js` and push; Lampa loads the new set on its next
start.

## Change the menu

Each tile is one entry in `items` inside `msx/start.json`. Portals move often, so run
`./check.sh` to see which links are dead. The check reports the menu's own address as
failed until the first deploy is live.
