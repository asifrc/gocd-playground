#GO Playground

Ever wanted a go server/agent to play around with? Me too.

##Requirements
- Docker

##How to Use
- clone down the repo
- run `./start.sh`
- view go server at http://{yourdockerhost}:8153
- create your pipelines
- shutdown the go server
- commit your pipeline with git :)

##Features:
- spins up a docker container running using the config-dir
- pipelines will persist

#Not Features:
- builds history/artifacts will not persist
- no way to configure agent yet (no git/ruby/node/etc. installed), so
  you're pipeline will probably fail if you try. See [Making Your
Pipeline Work](#making-your-pipeline-work)


#Making Your Pipeline Work
To make your pipeline actually work, you'll want to create a docker
container using gocd/gocd-dev as your base, installing all the
dependencies you need to run your pipeline. Git is a must. You can go
the dockerfile route or manually make commits to the image (gross).

