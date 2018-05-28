# hello_world

This is simply a mess of my notes and observations while doing this.  Conceptually trivial, having never touched Jenkins it has been a bit of an adventure.

# install & setup of jenkins :

https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-16-04
https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-ubuntu-16-04
https://stackoverflow.com/questions/41055669/unable-to-connect-to-jenkins-server-amazon-linux-ami


2 ways to do this ( will try to do both )
1) install on host (I'm a bit of a masochist)
2) docker container to avoid the setup headache 




# in reality would probably explore:
cloud formations

https://tech.ticketfly.com/our-journey-to-continuous-delivery-chapter-4-run-jenkins-infrastructure-on-aws-container-service-ef37e0304b95


# Considerations for this project & TODO:
* launch web service not with debug webserver but with gunicorn, uwsgi, tornado or a production grade web server
* [Add jenkins automation to be ble to deploy to multiple ami's for parallel building](https://docs.aws.amazon.com/systems-manager/latest/userguide/automation-jenkins.html)
* add additional tests
* https://github.com/jenkinsci/google-container-registry-auth-plugin/pull/2/files ( modify to have multiple hosts) 
* build to different branch/environment based tagging
    * currently contains race condition if multiple new branches are committed/building at the same time due to naming


# Jenkins Multi Branch Pipelines

Getting jenkins to properly build multiple branches based on hooks is a mess.  It required translating the clear text password to a token and then restarting the whole server, which took about 2 hours of digging to figure out.  ( a lot of people having that issue hehehe ) 
