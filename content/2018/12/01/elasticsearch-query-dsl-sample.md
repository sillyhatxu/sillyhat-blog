---
title: "Elasticsearch Query DSL"
subtitle: "2018-12-01-elasticsearch-query-dsl"
date: 2018-12-01T16:45:56+08:00
author: "Cookie Xu"
tags: ["elasticsearch"]
categories: ["tools"]
from: "http://sillyhatxu.com"
draft: false
---

Index: {index}
1. Query all
GET /_search
{
  "query": {
    "match_all": {}
  }
}
2. Query by index
GET {index}/_search
{
  "query": {
    "match_all": {}
  }
}
3. Like.  ‘5%'
GET {index}/_search
{
  "query": {
    "bool": {
      "filter": [
        { "prefix":  { "name": "name_5" }}
      ]
    }
  }
}
4. Like. ‘5%1'
GET {index}/_search
{
  "query": {
    "bool": {
      "filter": [
        { "wildcard":  { "name": "name_5*1" }}
      ]
    }
  }
}
5. Query and group by
POST /{index}/_search
{
  "query": {
    "match_all": {}
  },
   "aggregations": {
      "test_field": {
         "terms": {
            "field": "test_field"
         }
      }
   }
}


curl -XPOST "http://localhost:9200/{index}/product/_search" -H 'Content-Type: application/json' -d' { "from": 0, "size": 20, "aggregations": { "category_id": { "terms": { "field": "category_id" } } } }'