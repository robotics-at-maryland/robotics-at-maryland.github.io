# R@M Website Documentation
##### Written by Omkar Konaraddi

## Jekyll
This website is using [Jekyll](https://jekyllrb.com/), a blog-aware static site generator. Jekyll allows the website to be broken into reusable components that can be used in multiple places and for templating in an efficient manner. 

Please read the Jekyll docs before reading any further.

### Building the site
Run `jekyll build` at the root of the project to build the site; the site will then be located in `_site/` at the root directory. Note that any edits you make inside `_site/` will be overridden in the build process (and no edits should be made in the `_site/`!).

It's very unlikely you'll need to do anything in the `_site` folder. In most cases, the only time you'll open that folder is if you run into an issue and are looking there to see where something went wrong.

### Testing the site
Run `jekyll serve`, this will build the site AND run it at `localhost:4000`. Note that after testing, you still need to run `jekyll build`, otherwise the site will be built using `localhost:4000/` as the base url.

### Blogging
To post a blog, place it in the `_post` folder. Use [markdown formatting](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) to use titles, subtitles, links, images, and more in your blog. 

Please use the following nomenclature for naming the file: `YEAR-MM-DD-title-of-blog.md`

After running `jekyll build` (or testing with `jekyll serve`), the blog will be placed in it's appropriate folder.

#### Images
When including an image in a blog, place the image in `assets/posts/`. When referencing it from a blog, please use `{{site.url}}/assets/posts/name-of-image.jpg`. An example of what linking an image to a blog may look like in markdown:

`![Picture of the team](/assets/posts/picture-of-team.jpg)`

## CSS framework
This website is using [Bulma](http://bulma.io) 0.4.2, this is a CSS framework. Read up on Sass at [marksheet.io](http://marksheet.io/) and the [Sass docs](http://sass-lang.com/). If you add a Sass file to `_sass/`, don't forget to import that file in the `styles.scss` file too. This keeps our CSS organized and concatentated into a single file in the end.

## Updating the site on the server
### Pushing updates to git
Make sure you've run `jekyll build` with your new changes in your local copy of the website. Once you've tested your changes with `jekyll serve`, go ahead and push your changes, including all of the jekyll build artifacts.
### Running updates on the website 
`ssh` into the server, then `cd` your way into the folder containing the website (most likely in /var/www or similar). At the root of the website's folder, there is a script called `update.sh`. Executing the script will update the website with what's on the master branch of this github repository.
