curl -s -XGET "http://localhost:9200/organizations/_rank_eval" -H "kbn-xsrf: reporting" -H "Content-Type: application/json" -d'
{
  "requests": [
    {
      "id": "apple",
      "request": {
        "query": {
          "function_score": {
            "query": {
              "match_all": {}
            },
            "boost": "5",
            "random_score": {},
            "boost_mode": "multiply"
          }
        }
      },
      "ratings": [
        {
          "_index": "organizations",
          "_id": "1",
          "rating": 7
        },
        {
          "_index": "organizations",
          "_id": "2",
          "rating": 6
        },
        {
          "_index": "organizations",
          "_id": "3",
          "rating": 5
        },
        {
          "_index": "organizations",
          "_id": "4",
          "rating": 4
        },
        {
          "_index": "organizations",
          "_id": "5",
          "rating": 3
        },
        {
          "_index": "organizations",
          "_id": "6",
          "rating": 2
        },
        {
          "_index": "organizations",
          "_id": "7",
          "rating": 1
        }
      ]
    }
  ],
  "metric": {
    "dcg": {
      "k": 7,
      "normalize": true
    }
  }
}'
