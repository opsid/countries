# Counries API
> Serve an API with common dictionaries for country based data

[![opsid/countries](http://dockeri.co/image/opsid/countries)](https://hub.docker.com/r/opsid/countries/)

## Why?
- Easy to use 
- Simple interface
- Dockerized
- Tiny. Size is only `16.1MB`!

## What's included?
- `/iso3` -  list of **countries** in **iso3** format
- `/names` -  list of **country names** by country code
- `/capital` -  list of **capital names** by country
- `/continent` -  list of **continent names** by country
- `/currency` -  list of **currency codes**
- `/phone` -  list of **phone codes**

## How to use

- Pull `docker pull opsid/countries`
- Run `docker run -d --name countries -p 8080:80 opsid/countries:latest`
- Use `curl -L 0.0.0.0:8080/iso3`

Response will be:
```
{
    ...
    "UA": "UKR",
    ...
}
```