# cs-onboarding

## Getting started:


### Hugo using Homebrew:

1. Install Hugo 0.61.0 to test locally:

```brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/79894aee20a146d6cf7db7b4a362e7d491f499a1/Formula/hugo.rb```

Here are the official docs but unfortunately Homebrew only keeps the latest version of Hugo which can bring incompatibility issues (this is when you run ```brew install hugo```):
https://gohugo.io/getting-started/installing/#install-hugo-with-brew

2. Make sure you have version 0.61.0 installed by running ```hugo version```.

3. Clone this repo:

```git clone https://github.com/cloudbees/cs-onboarding.git  --recurse-submodules```

4. Once you cloned this repo and installed Hugo in your machine. Go inside the ```csa-onboarding``` directory and execute ```hugo -D server```. 

5. Go to localhost:1313 in your favorite browser and you should see the website.


### Want to use Hugo with Docker 🐳 instead?

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

4. Go to localhost:1313 in your favorite browser and you should see the website.


## Want to know more about Hugo and its themes?

Hugo docs --> https://gohugo.io/documentation/

We are already using TechDoc --> https://themes.gohugo.io/hugo-theme-techdoc/

Other themes in case you want to change it and try a new one:
https://themes.gohugo.io/

How to add a new theme:
https://gohugo.io/getting-started/quick-start/

## How to add more content

1. Follow the "Getting Started" directions to see how these pages get created in your local environment.  
Take a look at cs-onboarding/content/support or cs-onboarding/content/cloudbees-core as an example and explore to see how to add files. The articles (.md files) follow the directory structure in the website. The main configuration file for the page is in ```cs-onboarding/config.toml ```

2. Once you have added your files, create a new branch.

3. Open a PR when done.

*** (more CI/CD stuff to come so you can see that it not only works in your machine) ***







