docker build -t jquin/posts ./posts/ && docker push jquin/posts
docker build -t jquin/query ./query/ && docker push jquin/query
docker build -t jquin/comments ./comments/ && docker push jquin/comments
docker build -t jquin/moderation ./moderation/ && docker push jquin/moderation
docker build -t jquin/event-bus ./event-bus/ && docker push jquin/event-bus
docker build -t jquin/client ./client/ && docker push jquin/client


k rollout restart deployment/posts
k rollout restart deployment/query
k rollout restart deployment/comments
k rollout restart deployment/moderation
k rollout restart deployment/event-bus
k rollout restart deployment/client


skaffold dev