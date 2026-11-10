# Personal Start Parameter for Media Station X

A personal start menu for [Media Station X](https://msx.benzac.de) that links to
third-party movie and series portals. Hosted on GitHub Pages.

## Publish

1. Create a public repository named `<login>.github.io` and push this folder to it.
2. In the repository open Settings -> Pages, deploy from the `main` branch, root folder.
3. Leave "Enforce HTTPS" switched off. Most portals are HTTP-only, and an HTTPS menu
   cannot open them.

## Use on the TV

In Media Station X open Settings -> Start Parameter -> Setup and enter
`<login>.github.io` (without `https://`).

## Lampa plugins

In Lampa open Settings -> Extensions -> Add plugin and enter
`<login>.github.io/lampa/plugins.js` once. After that, edit the `PLUGIN_URLS` list in
`lampa/plugins.js` and push; Lampa loads the new set on its next start.

## Change the menu

Each tile is one entry in `items` inside `msx/start.json`. Portals move often, so run
`./check.sh` to see which links are dead.
