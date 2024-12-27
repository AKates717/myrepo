#SECTION: Connect Git, GitHub, RStudio
#Chapters 9 - 14

#Creating notes here in case I need to come back and re set-up git


#CH.9 Personal Access Token for HTTPS
library(usethis)

#9.4 Store Your PAT
#gitcreds package is included with usethis

#>to set up a new PAT use
#>gitcreds::gitcreds_set()
#>paste the PAT
#>
#>If you already have a stored credential, gitcreds::gitcreds_set() reveals this and will even let 
#>you inspect it. This helps you decide whether to keep the existing credential or replace it. When 
#>in doubt, embrace a new, known-to-be-good credential over an old one, of dubious origins
#>
#>You can check that you’ve stored a credential with gitcreds_get():

#9.5.1.1 PAT has expired
#>You are going to be re-generating and re-storing your PAT on a schedule dictated by its expiration 
#>period. By default, once per month.
#>
#>When the PAT expires, return to https://github.com/settings/tokens and click on its Note. (You do 
#>label your tokens nicely by use case, right? Right?) At this point, you can optionally adjust scopes 
#>and then click “Regenerate token”. You can optionally modify its Expiration and then click 
#>“Regenerate token” (again). As before, copy the PAT to the clipboard, call gitcreds::gitcreds_set(), 
#>and paste!


#CH 11: Connect to Github ----

#Here is where you will find some info on using: cd in the terminal

#CH 15 ----

#15.2 New RStudio Project via git clone

#copy the repo url from <>code, set the destdir to the local directory, I think this will be my default
usethis::create_from_github(
  "https://github.com/AKates717/myrepo.git",
  destdir = "/Users/andrewkates/Dropbox/Data Science/"
)

#maybe this is the point where you will need to enter
  #cd myrepo
#in the terminal, if you plan to use the command line for anything


#There’s a big advantage to the “GitHub first, then RStudio” workflow: the remote GitHub repo is 
#configured as the origin remote for your local repo and your local main branch is now tracking the 
#main on GitHub

#15.3 Make local changes, save, commit
#Do this every time you finish a valuable chunk of work, probably many times a day.

#Commit these changes to your local repo. How?
  #1. Click the “Git” tab in upper right pane
  #2. Check “Staged” box for any files whose existence or modifications you want to commit.
    #TIP: To see more detail on what’s changed in file since the last commit, click on “Diff” for a 
    #Git pop-up: it seems that changes are highlighted in green
  #3. If you’re not already in the Git pop-up, click “Commit”
  #4. Type a message in “Commit message”, such as “Commit from RStudio”.
  #5. Click “Commit”

#15.4 Push your local changes to GitHub
#Do this a few times a day, but possibly less often than you commit.

#You have new work in your local Git repository, but the changes are not online yet.
#This will seem counterintuitive, but first let’s stop and pull from GitHub.

  #1. Click the blue “Pull” button in the “Git” tab in RStudio. 
    #(I doubt anything will happen, i.e. you’ll get the message “Already up-to-date.” )
  #2. Click the green “Push” button to send your local changes to GitHub.


#15.6 Make a change on GitHub
  #Go to Github in your browser
  #Click on README.md in the file listing on GitHub.
  #In the upper right corner, click on the pencil for “Edit this file”.
  #Add a line to this file, such as “Line added from GitHub.”
  #Edit the commit message in “Commit changes” or accept the default.
  #Click the big green button “Commit changes.”

#15.7 Pull from GitHub
  #Back in RStudio locally …
  #Inspect your README.md. It should NOT have the line “Line added from GitHub”. It should be as you left it. Verify that.
  #Click the blue Pull button.
  #Look at README.md again. You should now see the new line there.

#Now just “lather, rinse, repeat”. Do work somewhere: locally or on GitHub. Commit it. Push it or 
#pull it, depending on where you did the work, but get local and remote “synced up”. Repeat.












