# brand-guidelines
A handy dandy guide for Rancher Labs' assets and styles

# Developing

```
cd ~/your-copy-of/brand-guidelines
docker run --name=brand-guidelines -it -p 4000:4000 -v $PWD:/srv/jekyll -it jekyll/jekyll jekyll serve
```

Visit http://localhost:4000 .   First start-up will take a few minutes to install things, you can monitor progress with

```
docker logs -f --tail=100 brand-guidelines
```
