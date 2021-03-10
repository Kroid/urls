```
curl --header "Content-Type: application/json" --request POST --data '{"long":"example"}' http://localhost:3000/urls
>{"short":"143b69b232"}

curl --header "Content-Type: application/json" http://localhost:3000/urls/143b69b232
>{"long":"example"}

curl --header "Content-Type: application/json" http://localhost:3000/urls/143b69b232/stats
>{"visits_count":1}
```
