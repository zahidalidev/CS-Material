<h1 align="center"><b>GIT</b></h1>
<p>Git is version control system (record the changes made to our code over the time in a special database called Repository), we can see our project history and can see who made what changes when and why and if we screw some thing up we can easily revert our project back to an early state</p>

<h3><b>Version Control System Types:</b> </h3>
<h4><b>Centerlized System: </b></h4>  
<p>In this all team members connect to a central server to get the latest copy of code and to share the changes with others eg. subversion and microsoft team. problem with this system is single point of failure if the server goes ofline we cannot collaborate or save snapshot of our project so we have to wait until server comes online.</p>
<h4><b>Distributed System: </b></h4>
<p>In this we do not have single point of failure that centerlized system have bcz every team member has copy of project with its history in their machine so we can dave snapshot of our project locally on our machine if the central serve ofline we can synchorize our work directly with others eg. GIT and Mercurial </p>

<h3><b>GIT Configuring Settings</b></h3>
<p>1-Name  2-Email  3-Defalt Editor  4-Line Ending (because of mac (\n) and windows (\n, \r)) </p>
<h4><b>1- System Level (For all user):</b></h4>
<p><i>git config --global user.name "myName"</i></p>
<p><i>git config --global user.email myEmail</i></p>
<p><i>git config --global core.editor "code --wait"</i></p>
<p>In Windows: <i>git config --global core.sutocrlf true</i></p>
<p>In MAC <i>git config --global core.sutocrlf input</i></p>
<p>To Edit All Global Settings: <i>git config --global -e</i></p>
<h4><b>2- Global Level (For all Repos of the Current User)</b></h4>
<h4><b>3- Local Level (For Current Repo)</b></h4>