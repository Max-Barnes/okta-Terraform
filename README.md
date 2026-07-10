This will be good paper like setup

Intro

IAC is not only for AWS or Azure shops but can be implemented with services like OKTA as seen in this guide. Managing your configuration through terraform gives you the benefits of version control. Using Okta in this way can save a huge amount of time for IT admins by being able to speed through repetitive tasks. This repository will serve as my own research and tricks I found with Okta.

Why okta/Benefits of okta

Okta vs Entra

Setup Section and Quick Start Guide

export environment variables for okta provider

you need okta to have a terraform api service app with okta.groups.manage, okta.users.manage, okta.apps.manage per your scope

create the terraform role in the service app per your scope, least privileged. For the lab initially I gave it org admin. 