# AnmiNet (Fork Bussin Web X)

An alternative to the World Wide Web (`http(s)://`), with:
- its own **custom browser** written in Rust with [GTK](https://gtk.org/),
- custom HTML, CSS and ***Lua*** engine,
- custom **DNS** allowing Top-Level domains such as `rizz`, `buss`, `net`, `dev`, `com` etc,
- and **search engine** at `anet://kasizdeu.dev`.

![Preview of anet://register.dev, the frontend for registering domains](.github_assets/image.png)

# File structure
- `/oserfnet` - The source code for the **browser** OpenSerf AnmiNet, used to view buss:// and anet:// sites.
- `/dns` - The source code for the **DNS** (Domain Name System), used for the API at `anet://apians.dev`
- `/kasizdeu` - The source code for the official **search engine** (API) of Anet. For the frontend, check [kasizdeu frontend repo](https://github.com/anmitalidev/kasizdeu-front)
- [registrar](https://github.com/anmitalidev/anet-registrar) - The source code for `anet://register.dev`, frontend for `anet://api.dev` made for AnmiNet. This can also serve as an example for how anet:// sites are made.

# HTML guide
The supported tags are: `head`, `title`, `link`, `meta`, `script`, `h1`-`h6`, `div`, `p`, `ul`, `ol`, `li`, `div`, `button`, `hr`, `img`, `input`, `textarea`, `button`, `select`, `option`. Keep in mind their syntax may be different if you're already familiar with HTML5 (i.e. `link` is used for the tab icon). Please check `/napture/test/index.html` for examples.

# CSS guide
The supported properties are:
- `border-color`
- `border-width`
- `border-style`
- `border-radius`
- `padding`
- `direction` (row | column)
- `align-items`: (fill | start | center | end)
- `gap`
- `color`
- `font-size`
- `font-height`
- `font-family`
- `font-weight` (ultralight | light | normal | bold | ultrabold | heavy)
- `underline` (none | single | double | low | error)
- `underline-color`
- `overline` (none | single)
- `overline-color`
- `strikethrough` (false | true)
- `strikethrough-color`
- `margin-left`
- `margin-right`
- `margin-top`
- `margin-bottom`
- `width` (only on `<input>` & `<textarea>`)
- `height` (only on `<input>` & `<textarea>`)

Properties whose value type wasn't specified are either measured in `px`, or are colors (`#fff`, `red`, etc.)

# Lua guide
For those coming from the traditional web...
```diff
- 1. const test = document.querySelector(".classExample");
- 2. test.textContent = "abc";
- 3. test.href = "https://ok.test"
- 4. console.log(test.href)
- 5. test.addEventListener("click", () => {})
- 6. test.addEventListener("submit", () => {})
+ 1. local test = get("classExample")
+ 2. test.set_content("abc");
+ 3. test.set_href("buss://register.it")
+ 4. print(test.get_href())
+ 5. test.on_click(function())
+ 6. test.on_submit(function())
```

I believe you'd get a better understand if you explored the [registrar](https://github.com/face-hh/webx-registrar) repository's `script.lua`.

NOTE: Bussin Napture doesn't support `anet://` redirects yet. They will be added in the release.

Made by AnmiTali
