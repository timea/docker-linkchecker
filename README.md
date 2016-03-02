Linkchecker Context Repo.
=================
_Note:_ linkchecker creates report files which require _write permission_ in you project directory

#Usage v6, latest

Command structure:

  linux / iOS:

```
    docker run -v $(pwd):/home/newuser/report praqma/linkchecker:v[version number] [Options] [Output Options] [URL]
```

  Windows:

```
    docker run -v /$(pwd):\\home\newuser\report  praqma/linkchecker:v[version number] [Options] [Output Options] [URL]
```


### Example
```
docker run -v $(pwd):/home/newuser/report  praqma/linkchecker:latest -o text -Fhtml/home/newuser/report/linkchecker.report.html -Fcsv/home/newuser/report/linkchecker.report.csv http://www.example.com

```
→ reports(in html and csv) will be saved in your **current** folder with filename **linkchecker.reprot.html** and **linkchecker.report.csv** , in your mounted directory.


#Usage v1-v5

Command structure:

  linux / iOS:

```
    docker run -v $(pwd):/data praqma/linkchecker:v[version number] [Options] [Output Options] [URL]
```

  Windows:

```
    docker run -v /$(pwd):\\data praqma/linkchecker:v[version number] [Options] [Output Options] [URL]
```

### Example
```
docker run -v $(pwd):/data praqma/linkchecker:v3 -o text -Fhtml/report/linkchecker.report.html -Fcsv/report/linkchecker.report.csv http://www.example.com

```
→ reports(in html and csv) will be saved in folder **report** with filename **linkchecker.reprot.html** and **linkchecker.report.csv** , in your mounted directory.


For linkchecker documentation click [here](https://wummel.github.io/linkchecker/man1/linkchecker.1.html#index)
