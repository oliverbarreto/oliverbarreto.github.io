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




