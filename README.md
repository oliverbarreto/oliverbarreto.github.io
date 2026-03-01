This site [www.oliverbarreto.com](www.oliverbarreto.com) is a very simple Jekyll website powered by [So-Simple Theme](https://mademistakes.com/)



# How to run the site locally
0. First you need to modify `_config.tml` file to allow the local theme to be used.

You need to uncomment the following two lines:
```bash
theme: jekyll-theme-so-simple
remote_theme: "mmistakes/so-simple-theme@3.2.0"
```

⚠⚠ Be careful, when you need to push back to Github, you need to comment back the local theme line, so the config file looks like this to be able to push to Github Pages so Github Actions don't fail:

```bash
# theme: jekyll-theme-so-simple
remote_theme: "mmistakes/so-simple-theme@3.2.0"
```

1. Open up a terminal and navigate to the directory of the site
2. Spin up a local docker container with Jekyll server running the following command:

```bash
docker compose build --no-cache
docker compose up -d
```

The docker container will run on port 4000 and will serve the site locally. The container has access to the mounted volume of the local site folder, so any changes you make to the local site folder will be reflected in the docker container.

3. Open your browser and navigate to [http://localhost:4000](http://localhost:4000) and test the site


# Push to Github Pages

0. ⚠⚠ Be careful, when you need to push back to Github, you need to comment back the local theme line, so the config file looks like this to be able to push to Github Pages so Github Actions don't fail:

```bash
# theme: jekyll-theme-so-simple
remote_theme: "mmistakes/so-simple-theme@3.2.0"
```

1. Add a blog post in the _posts folder and images in the `images/blogposts` folder
2. Commit and push to Github
3. Github Pages will automatically build the site and make it available at www.oliverbarreto.com

# So Simple theme + Docker setup

This section documents how the [So Simple theme](https://github.com/mmistakes/so-simple-theme) is configured for local development with Docker. GitHub Pages fetches the theme automatically when using `remote_theme`, but for local Jekyll runs we need to install the `jekyll-remote-theme` plugin.

## Steps performed

1. **Gemfile** — Add the remote theme plugin and Jekyll plugins used by the site:

   ```ruby
   source "https://rubygems.org"

   gem "jekyll", "~> 4.4"
   gem "bundler"
   gem "jekyll-remote-theme"
   gem "jekyll-seo-tag"
   gem "jekyll-sitemap"
   gem "jekyll-feed"
   gem "jekyll-paginate"
   ```

2. **`_config.yml`** — Register `jekyll-remote-theme` as the first plugin (it must run before Jekyll fetches the theme):

   ```yaml
   plugins:
     - jekyll-remote-theme
     - jekyll-seo-tag
     - jekyll-sitemap
     - jekyll-feed
     - jekyll-paginate
   ```

3. **Dockerfile** — Ensure the Gemfile is copied and dependencies are installed:

   ```dockerfile
   COPY Gemfile* /srv/jekyll/
   RUN bundle install
   ```

4. **`remote_theme` in `_config.yml`** — Keep the existing config (no need to switch for local vs production):

   ```yaml
   remote_theme: "mmistakes/so-simple-theme@3.2.0"
   ```

When the Docker container starts, `jekyll-remote-theme` fetches the theme from GitHub, compiles the Sass/CSS, and serves the styled site at http://localhost:4000. The same `remote_theme` config works for both local Docker builds and GitHub Pages.



