---
title: Building a New Blog
summary: I'm building a new blog and documenting the process
---
I have built blogs before. This isn't the first.

What's new with this blog is that I wanted to start with what I am familiar
with then tear it down and replicate it in something I am not familiar with.

The goal is to learn something new but to built it on the foundation of some
prior art.

### Phase One: NodeJS + HapiJS

To get started I reached fro NodeJS and HapiJS, both I have used a lot in the
past.

As part of the initial phase I wanted to leverage the new App Platform at
Digital Ocean. I appreciate the attention to detail Digital Ocean takes in all
of their products. The downside of choosing Digital Ociean's App Platform is
that it's new and untested. Additionally, the price is higher for comparable
solutions in Amazon Web Services or Google Cloud Platform.

I wanted to have both a "test" (staging) environment and a "prod" environment
so that I could iterate quickly while not constantly disrupting "prod". To do
this I have two App Platform apps.

At the time of starting this project Digital Ocean didn't document how to 
configure an App Spec to use a Docker Image hosted in Digital Ocean's Container
Repository. Thankfully they had all the pieces wired up to get it working.

To ensure the next phase goes well I opted to host all the raw assets in S3
which Digital Ocean provides. This gives me the possibility of tearing down
the entire app and moving my data to another provider if I feel I need to.

### Phase Two: Go

I write a fare amount of Go code these days. I'm not too intersted in
furthering my knowledge in NodeJS. I really love the simplicity of writing Go
applications. There's a stark contrast between the boilerplate configuration
you need in a NodeJS, TypeScript, Jest, ESLint, ect. ecosystem and that of Go.

With Go, all the tough decisions are alredy made so I can just code what I need.

Soon I'll be detailing how this blog is coded primarily in Go. For now, it's
all NodeJS using TypeScript built on HapiJS.
