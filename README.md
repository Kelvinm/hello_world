# hello_world

This is simply a mess of my notes and observations while doing this.  Conceptually trivial, having never touched Jenkins it has been a bit of an adventure.



# install & setup of jenkins :

https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-16-04
https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-ubuntu-16-04
https://stackoverflow.com/questions/41055669/unable-to-connect-to-jenkins-server-amazon-linux-ami



2 ways to do this ( will try to do both )
1) install on host (I'm a bit of a masochist)
2) docker container to avoid the setup headache 




# in reality would probably exploree:
would be nice to simply have the template and spin up a cluster, that said, not for this exercies
 


https://tech.ticketfly.com/our-journey-to-continuous-delivery-chapter-4-run-jenkins-infrastructure-on-aws-container-service-ef37e0304b95


# Considerations for this project

* launch web service not with debug webserver but with gunicorn, uwsgi, tornado or a production grade web server
* add NGINX for load balancing and reverse proxy (possibly service static filees)
* [Change assignment slightly to deploy to ECS instead of EC2?  (is it meant to be more difficult to have a vm like environment to build in?)](https://aws.amazon.com/blogs/devops/set-up-a-build-pipeline-with-jenkins-and-amazon-ecs/)



# TODO:

* [Add jenkins automation to be ble to deploy to multiple ami's for parallel building](https://docs.aws.amazon.com/systems-manager/latest/userguide/automation-jenkins.html)
* Add in registry.  There needs to be an internal registry beyond whats going on local to the build server.
* add additional tests
* https://jenkins.io/doc/pipeline/examples/#push-git-repo
* Set up jenkins/github credentials to auto post hooks (for this exercise manually added web hook)