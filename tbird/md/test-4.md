# Markdown to DITA

 I put together a script/pipeline that inputs a Markdown file(s), converts it to HTML, then outputs the HTML as a DITA topic(s). The Markdown workflow that I propose here is speculative because I am unfamiliar with current workflow practices among and within Ingeniux teams. I suspect that we will need to tinker with it before it can be considered a viable option. You will find the document here.

## Initial Assumptions 

*	Documentation is code; therefore, docs should track well with versioned code in source control or live with the code in source control. 
* 	For source control, I have a Git/Github model in mind. (Git/Github may not be the best tool within Ingeniux contributors.) 
* 	Markdown isn't an industry standard. For the current conversation script to work, contributors need to work within a particular flavor of Markdown for documentation. The conversion code requires [Multimarkdown](http://fletcherpenney.net/multimarkdown/) (MMD). MMD is a superset of [Markdown](https://guides.github.com/features/mastering-markdown/), so for basic writing tasks, generic Markdown will convert to HTML without issue.  
* 	MMD adds the following features to Markdown: 
	*   Footnotes 
	*   Tables 
	*   Math support 
	*   Automatic cross-referencing ability 
	*   Image attributes 
	*   Table and image captions 
	* Definition lists 
	*Document metadata (e.g., title, author, date, etc.) 
*	Ingeniux CMS does not manage the source, thus it does not manage write/edit/review workflow; The CMS reflects current state of topics, search, link management, integrates with source-control system through CI system, and translation management. 
*	After DITA source has been imported into the CMS, let's assume for now that IGX development processes DITA in ways analogous to the DITA Open Toolkit. 

## Setup

Download and install [Visual Studio Code](https://code.visualstudio.com/?utm_expid=101350005-28.R1T8FshdTBWEfZjY0s7XKQ.0&utm_referrer=https%3A%2F%2Fwww.google.com%2F). 

Download and install [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint#review-details).

Download and install [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

## User Scenario

This user scenario shows how contributors could write in Markdown and then add content to an Ingeniux DITA pipeline.

Contributor:

1. Copy the md2dita repository from GitHub:
    git clone https://github.com/shealy2020/md2dita.git 

2. Create a new branch: git checkout -b my-md-branch

3. Add a new markdown file to the markdown (md) directory in collection.

4. Edit markdown file in Visual Studio Code.

5. Use markdownlint to check Markdown construction.

6. Add new file entry to markdown.ditamap.

7. Add and update files in Git.

8. Push local changes to remote repository. git push origin master

Administrator or automated script:

1. Run md2dita.bat to convert Markdown to DITA.

2. Import new and changed DITA files and maps to Ingeniux CMS.

3. Publish to staging DSS.

Note: I'm working on a continuous integration (CI) script that automatically builds, tests, and exports DITA to the Ingeniux CMS.