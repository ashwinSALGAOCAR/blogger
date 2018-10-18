A Systematic Version Control workflow from Dev to Prod.

- Start coding on your local system.<br/>
Create a Working directory on your local system and start developing your code in it. Make sure you keep all the relevant files within this directory.

- Create a repo on GitHub.<br/>
Add a New repo with the same name as the Working directory of your local system.<br/>
Give a good description to the repo so that your coworkers understand what the repo is for. Although this step is optional, it is always good to give a brief description about what they will be working on.<br/>
Tick the initialize this repository with a README, which will contain the description within it. No need to tick this if you are importing an existing repository. 

- Ignore certain files from being pushed to GitHub.<br/>
You can choose to add a .gitignore file based on the coding language you are using. You need this to ignore certain system generated files from being pushed to your GitHub repo. Alternatively you can add your own custom .gitignore file within your local repo and then choose to push it to GitHub.

- And then click Create repository to create it.
- Initialize your local working directory.

      git init
- Add files that you need to push to the GitHub repo.

      git add .
- Now commit all the files you have added and give a commit messsage for versioning and tracking.

      git commit -m "initial commit"
- Specify the remote GitHub branch and index the URL to a easy to remember keyword.<br/>
First go to your repo on GitHub and click on 'Clone or download', which will give you a URL. Select https and copy the URL.

      git remote add origin <URL>
origin - is the name the community usually preferes to use to point to the source URL of the repo, hence we will do the same.       
- Tagging the commit.

      git tag <Tag_name>
It is very important that you tag all the stable fixes before pushing to GitHub so that you can then navigate to the tagged version if in case anything breaks while you make changes to the code.
- Pulling the master repo from github first.

      git pull origin master
You need to do this because your repo on GitHub has a README.md file which is not tracked on your local system. So if you try to push without pulling those changes, you will get an error.

- Pushing the commits to the GitHub master repo.

      git push -u origin master --tags
This will push all the files that have tracked and commited on your local system to GitHub master repo.