# Networking and infrastructure blueprints

The blueprints in this folder implement **typical network topologies** like hub and spoke, or **end-to-end scenarios** that allow testing specific features like on-premises DNS policies and Private Google Access.

They are meant to be used as minimal but complete starting points to create actual infrastructure, and as playgrounds to experiment with specific Google Cloud features.

## Blueprints

### Calling a private Cloud Function from on-premises

<a href="./private-cloud-function-from-onprem/" title="Private Cloud Function from On-premises"><img src="./private-cloud-function-from-onprem/diagram.png" align="left" width="280px"></a> This [blueprint](./private-cloud-function-from-onprem/) shows how to invoke a [private Google Cloud Function](https://cloud.google.com/functions/docs/networking/network-settings) from the on-prem environment via a [Private Service Connect endpoint](https://cloud.google.com/vpc/docs/private-service-connect#benefits-apis).

<br clear="left">

### Calling on-premise services through PSC and hybrid NEGs

<a href="./psc-hybrid/" title="Hybrid connectivity to on-premise services through PSC"><img src="./psc-hybrid/diagram.png" align="left" width="280px"></a> This [blueprint](./psc-hybrid/) shows how to privately connect to on-premise services (IP + port) from GCP, leveraging [Private Service Connect (PSC)](https://cloud.google.com/vpc/docs/private-service-connect) and [Hybrid Network Endpoint Groups](https://cloud.google.com/load-balancing/docs/negs/hybrid-neg-concepts).

<br clear="left">

### GLB and multi-regional daisy-chaining through hybrid NEGs

<a href="./glb-hybrid-neg-internal/" title="XGLB and multi-regional daisy-chaining through hybrid NEGs"><img src="./glb-hybrid-neg-internal/diagram.png" align="left" width="280px"></a> This [blueprint](./glb-hybrid-neg-internal/) shows the experimental use of hybrid NEGs behind external Global Load Balancers (GLBs) to connect to GCP instances living in spoke VPCs and behind Network Virtual Appliances (NVAs).

<br clear="left">

## HTTP Load Balancer with Cloud Armor

<a href="./glb-and-armor/" title="HTTP Load Balancer with Cloud Armor"><img src="./glb-and-armor/architecture.png" align="left" width="280px"></a> This [blueprint](./glb-and-armor/) contains all necessary Terraform modules to build a multi-regional infrastructure with horizontally scalable managed instance group backends, HTTP load balancing and Google’s advanced WAF security tool (Cloud Armor) on top to securely deploy an application at global scale.

<br clear="left">

<!--
### Nginx-based reverse proxy cluster

<a href="./__need_fixing/nginx-reverse-proxy-cluster/" title="Nginx-based reverse proxy cluster"><img src="./_deprecated/nginx-reverse-proxy-cluster/reverse-proxy.png" align="left" width="280px"></a> This [blueprint](./nginx-reverse-proxy-cluster/) how to deploy an autoscaling reverse proxy cluster using Nginx, based on regional Managed Instance Groups. The autoscaling is driven by Nginx current connections metric, sent by Cloud Ops Agent.

<br clear="left">

### DNS and Private Access for On-premises

<a href="./__need_fixing/onprem-google-access-dns/" title="DNS and Private Access for On-premises"><img src="./onprem-google-access-dns/diagram.png" align="left" width="280px"></a> This [blueprint](./onprem-google-access-dns/) uses an emulated on-premises environment running in Docker containers inside a GCE instance, to allow testing specific features like DNS policies, DNS forwarding zones across VPN, and Private Access for On-premises hosts.

The emulated on-premises environment can be used to test access to different services from outside Google Cloud, by implementing a VPN connection and BGP to Google CLoud via Strongswan and Bird.

<br clear="left">

### Network filtering with Squid

<a href="./filtering-proxy/" title="Network filtering with Squid"><img src="./filtering-proxy/squid.png" align="left" width="280px"></a> This [blueprint](./filtering-proxy/) how to deploy a filtering HTTP proxy to restrict Internet access, in a simplified setup using a VPC with two subnets and a Cloud DNS zone, and an optional MIG for scaling.

<br clear="left">

-->

### Shared VPC with GKE and per-subnet support

<a href="./shared-vpc-gke/" title="Shared VPC with GKE"><img src="./shared-vpc-gke/diagram.png" align="left" width="280px"></a> This [blueprint](./shared-vpc-gke/) shows how to configure a Shared VPC, including the specific IAM configurations needed for GKE, and to give different level of access to the VPC subnets to different identities.

It is meant to be used as a starting point for most Shared VPC configurations, and to be integrated to the above blueprints where Shared VPC is needed in more complex network topologies.

<br clear="left">

### Exposing applications to the internet via GCLB and Private Service Connect

<a href="./psc-glb-and-armor/" title="Shared VPC with GKE"><img src="./psc-glb-and-armor/diagram.png" align="left" width="280px"></a> This [blueprint](./psc-glb-and-armor/) shows how to configure an external Google Cloud Load Balancer, with a simple Cloud Armor rule to protect against DDOS attacks, to provide an external endpoint to an application provided by another team via Private Service Connect (PSC).

It is meant to be used as a starting point for users that want to explore PSC to reduce some of the complexity in their network setup.

<br clear="left">

### VPC Connectivity Lab

<a href="./vpc-connectivity-lab/" title="VPC Connectivity Lab"><img src="./vpc-connectivity-lab/diagram.png" align="left" width="280px"></a> This [blueprint](./vpc-connectivity-lab/) creates a networking playground showing a number of different VPC connectivity options (peering, HA VPN, NVA), along with PBR routing.

<br clear="left">
