Service Request Management — An interface (UI or API) by which cloud services are consumed and/or requested by the customer of the MSP. It can be a clearly defined finite set of services provisioned from a self-serve service catalog or a service interface that serves as a pass-through to native Azure capabilities. The former could cater to infrastructure and operations (I&O) staff that just wants to provision IaaS resources while the latter could cater to developers that want flexibility to use a full suite of public cloud services. Typically provided by CMPs or IT service support management (ITSSM) tools, Azure portal service catalog created by the customer/the MSP on-behalf-of the customer, or MSP’s own custom portal/interface

Provisioning, Orchestration and Automation — Core orchestration/automation/provisioning capabilities by 3rd party CMP software/APIs, or Azure platform native tools, or 3rd party enabling ISV software. Includes provisioning of subscriptions and Azure resources (VM, Virtual Network, Storage and others), automation of resource provisioning and orchestrating life cycle of provisioned resource (using Azure Policy, Azure Automation, Desired State Configuration, scripting) or 3rd party tools. An MSP should be able initiate the workflow for a brand-new subscription or Azure Resource for a customer from the “Service Request Management” layer mentioned above and then automate through this layer. Subscription management tools (quota adjustments, limits of use, tagging) also fall into this category

Governance and Policy — Detailed policy enforcement and governance (e.g. clearly defining what users (end-customer and MSP staff) can do and cannot do during the lifecycle). Example: Cannot provision VM’s in a specific geography and cannot create a storage resources without geo-replication. This layer also includes automation policies that allow reactions to environmental conditions (e.g. enabling autoscaling, and autoscaling rules).

Consumption Monitoring and Metering — Base-level monitoring and metering functionality, mostly geared toward monitoring consumption of the cloud resources, possibly with show-back for internal users and charge-back for end-customers. Should be able to monitor consumption for the customer on a resource and subscription and tenant basis. Includes tracking, reporting, charge-back of consumption. Use of Azure Optimize and Cost Management (Cloudyn) and/or other 3rd party tooling are example proof points
	
Resource Utilization Optimization — Managing and automating efficient operational use of the infrastructure footprint. Tied to orchestration and automation, requires MSP to optimize resource state and configuration, based on consumption, performance and utilization indicators/counters/alerts. MSIT ARO Toolkit, Azure Automation, custom scripts/tools and other 3rd party optimization tools are example proof points

Access Management — Sign-on, user access and control management (both for end-customer user and MSP user). Either through native Azure interfaces or MSP’s own tooling or 3rd party tooling

Service-Level Management & Monitoring — Includes end-to-end monitoring of an application/solution environment, in other words, the estate managed by MSP in Azure. Monitoring of resource/service health, utilization, incident status, as well as logging and alerts (manual, automated or ML based) are included in this category

```
docker container run --rm -it node4demo/n4stack-manage:latest
```

```
cd scripts
```

```
./login.sh
```

```
./create-storage-account.sh
```

