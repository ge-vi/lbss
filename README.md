# lbss
Let's Build Some search

[Slides](https://docs.google.com/presentation/d/1X2nRfkxE4OtV0I5jGkPQnFjX8jbHP7DW2UiZs0Xv1TE/edit?usp=sharing)

To start the system:
```shell
docker-compose up
```

Open in the browser:
```shell
open "http://localhost:5601/app/dev_tools?#/console"
```

Paste and "CMD + Enter"
```json lines
PUT organizations/_bulk
{ "index" : { "_id" : "1" } }
{ "name" : "Apple" }
{ "index" : { "_id" : "2" } }
{ "name" : "Apple Computers" }
{ "index" : { "_id" : "3" } }
{ "name" : "Big Apple Company" }
{ "index" : { "_id" : "4" } }
{ "name" : "Applesauce Company" }
{ "index" : { "_id" : "5" } }
{ "name" : "Pineapple Manufacturing" }
{ "index" : { "_id" : "6" } }
{ "name" : "Canadian Bakeapple" }
{ "index" : { "_id" : "7" } }
{ "name" : "Apply" }
```

And to measure NDCG:
```shell
./ndcg.sh | jq 'del(.details.apple.hits)'
```

https://www.elastic.co/guide/en/elasticsearch/reference/current/search-rank-eval.html#_discounted_cumulative_gain_dcg
