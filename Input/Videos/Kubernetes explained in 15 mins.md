https://www.youtube.com/watch?v=VnvRFRk_51k

kubernetes is an Open source container orchestration tool (developed by google)
- Docker containers or others
- Helps you manage these in different enviormnents. 

# Why kubernetes?
- containers perfect for micro-services, but now need to manage many
- k8s guarantees high availability, scalability, disaster recovery
- Abstraction layer over containers

# What is kubernetes?
- Basic architecture, at least one master node, connected to worker nodes (with each running kublet running) 
- Each worker node has docker containers with different applications running on it.
- Master node run API server/ scheduler / etcd (backup) 
- Virtual network: turns the nodes into one powerful machine.


# Pods
- smallest unit that you will configure
- wrapper of (one or more) container. 
- 1 pod per application. 
- Each pod gets an IP
- ephemeral components 


# Service
- sit in front of pods to handle replacemed pods
- permanant IP addresses
- load balancer

# How 
- configuration through APIServer on master node.
- clients (UI/API/CLI) talk to APIServer (the only entry point) 
- requests in yaml or json


## Follow-ups


## Links: 
[[Kubernetes]]
[[computing]]
[[Kubernetes Course]]



202409281234