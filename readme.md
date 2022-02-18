# Instructions for use

# Steps to run this using docker on linux

```
cd /mnt/d/Google\ Drive/CV;
cp DockerfileTemplate.txt Dockerfile;
docker build . -t autocv;
docker run --name autocv -d -p 8787:8787 -e PASSWORD=rstudio autocv;
```

## running from command line

Commands can be issued directly from the terminal running docker


## For standard CV
```
docker exec -i -t autocv Rscript -e "rmarkdown::render(input = '/home/rstudio/CV/CV.Rmd',output_file = '/home/rstudio/CV/CV.pdf',params = list(service = F, skills = F))"
```

## For skills and service headings included
```
docker exec -i -t autocv Rscript -e "rmarkdown::render(input = '/home/rstudio/CV/CV.Rmd',output_file = '/home/rstudio/CV/CVSkillsandService.pdf',params = list(service = T, skills = T))"
```

## commit to git in order to push latest CV to website

```
docker exec -i -t autocv bash;
cd /home/rstudio/CV;
git add -A;
git commit -m "latest CV";
git push;"
```
