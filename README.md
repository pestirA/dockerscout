# dockerscout
A Quickstart Review of DockerScout using a simple node application

Advanced image analysis is provided by Docker Scout
Upgrade to continue to get access to guided vulnerability remediation and additional software supply chain features. pes

Building on the repository seen here which is a quest in the clouds - The demo makes use of GitHub, GCP, DockerHub and Terraform TO demonstrate some of the capabilities of Containerizing and Application then Deployment to GCP

Today, we will be tinkering with docker scout
For an deep dive on a recent dockercon check this talk here - https://www.youtube.com/watch?v=4iJ7yw-Oe4I

Docker Scout is a valuable tool for developers and organizations using Docker containers. It offers insights, policies, and recommendations to enhance the security, compliance, and overall quality of container images in the software supply chain, ultimately contributing to more efficient and secure application development workflows.

## Setup a Test Image
https://github.com/pestirA/5rearc

## Enable Docker Scout
https://docs.docker.com/scout/quickstart/
There must be at least one image in your repository.

You can push an image to your repository on Docker Hub or integrate with other registries.
View integration options or check out our quickstart guide⁠

Note: It can take up to 10 minutes for your images to be analyzed and displayed after pushing an image/or enabling it.

## Review and Update Recommendations

<img width="1259" alt="Screenshot 2023-11-17 at 6 06 53 PM" src="https://github.com/pestirA/dockerscout/assets/35427591/4d313ee5-ff36-47b8-9221-161d7de6f1fa">

<img width="1003" alt="Screenshot 2023-11-17 at 6 07 22 PM" src="https://github.com/pestirA/dockerscout/assets/35427591/a0946715-2965-4f74-9556-9e42c9f0d0f4">

<img width="1011" alt="Screenshot 2023-11-17 at 6 07 30 PM" src="https://github.com/pestirA/dockerscout/assets/35427591/6fab78ec-66f7-4237-a85f-1b0dda8530eb">

Following a quick rebuild, this was a delightful experience
<img width="1008" alt="Screenshot 2023-11-17 at 6 41 19 PM" src="https://github.com/pestirA/dockerscout/assets/35427591/b1dc2ab7-0fda-4a2a-b7e2-5c5469dbe49d">

docker scout quickview
<img width="1002" alt="Screenshot 2023-11-17 at 6 43 05 PM" src="https://github.com/pestirA/dockerscout/assets/35427591/e8e06510-bf68-4e7d-95b5-77f3ea6e7856">

View vulnerabilities → docker scout cves local://quests:latest
<img width="663" alt="Screenshot 2023-11-17 at 6 44 15 PM" src="https://github.com/pestirA/dockerscout/assets/35427591/38a08739-151f-47ef-b4e3-14e0c49aa8b5">

<img width="661" alt="Screenshot 2023-11-17 at 6 45 18 PM" src="https://github.com/pestirA/dockerscout/assets/35427591/e80dbdaf-5603-4252-8dc8-472f4589f55b">

View base image update recommendations → docker scout recommendations local://quests:latest
<img width="1164" alt="Screenshot 2023-11-17 at 6 47 05 PM" src="https://github.com/pestirA/dockerscout/assets/35427591/ed872b07-1844-4846-8d36-712de32f8122">

We successfully made the updates and significantly reduced the vulnerabilities for image
<img width="1274" alt="Screenshot 2023-11-17 at 8 04 02 PM" src="https://github.com/pestirA/dockerscout/assets/35427591/9ba31eee-d1b9-4139-8e7d-93588a29fdd4">


