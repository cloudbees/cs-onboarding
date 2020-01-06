## Getting started:

### a) Hugo using [Homebrew](https://brew.sh/):

1. Install Hugo 0.61.0 to test locally:

```brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/79894aee20a146d6cf7db7b4a362e7d491f499a1/Formula/hugo.rb```

Here are the official [docs to install Hugo using Homebrew](https://gohugo.io/getting-started/installing/#install-hugo-with-brew) but unfortunately Homebrew only keeps the latest version of Hugo which can bring incompatibility issues.


2. Make sure you have version 0.61.0 installed by running ```hugo version```.

3. Clone this repo:

```git clone https://github.com/cloudbees/cs-onboarding.git  --recurse-submodules```

4. Once you cloned this repo and installed Hugo in your machine. Go inside the ```csa-onboarding``` directory and execute ```hugo -D server```. 

5. Go to [localhost:1313](http://localhost:1313) in your favorite browser and you should see the website.


### b) Hugo with Docker 🐳:

1. Get Docker in case you don't have it: https://docs.docker.com/docker-for-mac/install/ or run ```brew cask install docker```

2. Clone this repo:

```git clone https://github.com/cloudbees/cs-onboarding.git  --recurse-submodules```


3. Run the following command inside the ```csa-onboarding``` directory:

``` 
docker run --rm -it \
 -v $(pwd):/src \
  -p 1313:1313 \
  klakegg/hugo:0.61.0 \
  server 
```

4. Go to [localhost:1313](http://localhost:1313) in your favorite browser and you should see the website.


## Want to know more about Hugo and its themes?

* [Hugo Docs](https://gohugo.io/documentation/)

* We are already using the [TechDoc theme](https://themes.gohugo.io/hugo-theme-techdoc/)

* Other themes available:
https://themes.gohugo.io/

## How to contribute:

1. Follow the "Getting Started" directions to see how these pages get created in your local environment.  
Take a look at ```cs-onboarding/content/support``` or ```cs-onboarding/content/cloudbees-core``` directories. The articles (.md files) inside the directories follow the structure in the website. The main configuration file for the page is in ```cs-onboarding/config.toml ```. [Reference material about the directory structure](https://www.jakewiesler.com/blog/hugo-directory-structure/)

2. Create a branch with a name of your preference- https://help.github.com/en/desktop/contributing-to-projects/creating-a-branch-for-your-work

3. Once you are in your new branch, create a new folder under ``content`` for your new section and a or multiple new .md file(s) under such folder. You can also just add a new .md file under an existing folder if you don't want to create a new section. Finally you can also try using ```hugo new```.
Once you have added your files and/or new folders, make sure there are no issues in your local environment by executing hugo either using Docker or your own command line and try to see your newly added page(s).

4. Open a [PR](https://help.github.com/en/desktop/contributing-to-projects/creating-a-pull-request) when done against the master branch.

*** (more CI/CD stuff to come so you can see that it not only works in your machine) ***







