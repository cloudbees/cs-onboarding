# cs-onboarding

## Getting started with Hugo:

```git clone https://github.com/cloudbees/cs-onboarding.git  --recurse-submodules```

### Hugo using Homebrew:

How to install Hugo to test locally - This is using hugo version 0.61.0:
https://gohugo.io/getting-started/installing/#install-hugo-with-brew

Go inside directory and execute ```hugo -D server```


### Want to use Docker locally 🐳 instead?

``` 
docker run --rm -it \
 -v $(pwd):/src \
  -p 1313:1313 \
  klakegg/hugo:0.61.0 \
  server 
```
Go to --> localhost:1313 in your favorite browser


## Information about Hugo

Available Themes (we are already using TechDoc -- https://themes.gohugo.io/hugo-theme-techdoc/)

Other themes in case you want to change it and try a new one:
https://themes.gohugo.io/

How to add a new theme:
https://gohugo.io/getting-started/quick-start/

## How to add more content

1.  Take a look at cs-onboarding/content/support or cs-onboarding/content/cloudbees-core as an example and explore to see how to add files. The articles (.md files) follow the directory structure. The main configuration file for the page is in cs-onboarding/config.toml. Follow the Getting Started directions to see how these pages get created in your local environment.

2. Once you have added your files, create a new branch.

3. Open a PR when done.

-----(more CI/CD stuff to come so you can see that it not only works in your machine)







