A Systematic Version Control workflow from Dev to Prod.

- Start coding on you localsystem.
<p>
Create a Working directory on your local system and start developing your code in it. Make sure you keep all the relevant files within this directory.
</p>

- Create a repo on GitHub.
<p>
Add a New repo with the same name as the Working directory of your local system.<br/>
Give a good description to the repo so that you coworkers understand what the repo is for. Althought this step is option, it is always good to give a brief description about what you will be working on with you colleagues.<br/>
Tick the initialize this repository with a README, which will contain the description within it. No need tick this if you are importing an existing repository. 
</p>

- Ignore certain files from being pushed to GitHub
<p>You can choose to add a .gitignore file based on the coding language you are using. You need this to ignore certain system generated files from being pushed to you GitHub repo. Alternatively you can add you own custom .gitignore file within you local repo and then choose to push it to GitHub.
</p>

- And then click Create repository to create it.
- Initialize you local working directory.
...
git init<br/>
...

- Add files that you need to push to the GitHub repo.
...
git add .
...

- Now commit all the files you have added and give a commit messsage for versioning and tracking.
...
git commit -m "initial commit"
...

- Specifying the remote GitHub branch and indexing the URL to a easy to remember keyword.
<p>
First go to your repo on GitHub and click on 'Clone or download', which will give you a URL. Select https and copy the URL.<br/>
...
git remote add origin URL
...
origin - is the name the community usually preferes to use to point to the repo source URL, hence we will do the same.
</p>

- Tagging the commit.
...
git tag <Tag_name>
...

- Pulling the master repo from github first.
...
git pull origin master
...
You need to do this because you repo on GitHub has a README.md file which is not tracked on you local system. So if you try to push without pulll those changes, you will get an error.
</p>

- Pushing the commits to the GitHub master repo.
...
git push -u origin master --tags
...
This will push all the files that have been tracked and commited on you local system to GitHub master repo.
</p>