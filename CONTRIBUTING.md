# Developer Certificate of Origin

Please read the [Developer Certificate of Origin](./dco.md) before contributing.
The project is licensed under Apache license v2.

# Developer Workflow

The developer workflow is a branch-based workflow that supports teams to develop an integrated codebase for regular deployments of features. Based on [Atlassian](https://www.atlassian.com/blog/git/simple-git-workflow-is-simple) and [GitHub Flow](https://guides.github.com/introduction/flow/) documents.

## 1. Checkout develop

Start by pulling down the latest changes from `develop`

```
git checkout develop
git pull origin develop
```

## 2. Create a branch

When you're working on a project, you're going to have a bunch of different features or ideas in progress at any given time – some of which are ready to go, and others which are not. Branching exists to help you manage this workflow.

When you create a branch in your project, you're creating an environment where you can try out new ideas. Changes you make on a branch don't affect the master branch, so you're free to experiment and commit changes, safe in the knowledge that your branch won't be merged until it's ready to be reviewed by someone you're collaborating with.

### Branches for a bug-fix

All hot-fix branches should be prefixed with `hotfix/`. Create a new branch whenever a hotfix is needed. Branch off to isolate an issue and fix. 


### Branches for feature development
Before you create a branch for feature development, open a Request for Comments [RFC](https://github.com/geoelements/lbmgpu-container/issues/new?template=request_for_comments.md) explaining the feature and the design principle. **RFC should contain code snippets, class outlines, inheritance schemes, outline of new features.** Without this detail RFCs are not useful to discuss ideas. Merely mentioning a new feature will be implemented is NOT a useful RFC. It would become a placeholder for your PR and not a design and discussion board, before the actual implementation of the code. Once the RFC has been approved, please go ahead and create a new branch. Prefix a feature branchname with `feature/`.

```
git checkout -b feature/parallel/dynamic_loadbalance
```

Feature branches without an RFC will be deleted. All major RFCs should have an associated milestone with a deadline. This helps others know when a particular feature will be ready.

### Feature pull request
For a small feature addition without a prior RFC, you may choose to create a PR from your personal fork of the project. However, this **feature PR must have sections on Design Detail, Rationale, and Alternatives.**

## 3. Add commits

Once your branch has been created, it's time to start making changes. Whenever you add, edit, or delete a file, you're making a commit, and adding them to your branch. This process of adding commits keeps track of your progress as you work on a feature branch.

Commits also create a transparent history of your work that others can follow to understand what you've done and why. Each commit has an associated commit message, which is a description explaining why a particular change was made. Furthermore, each commit is considered a separate unit of change. This lets you roll back changes if a bug is found, or if you decide to head in a different direction. Do not cluster separate changes together. Follow the git message guidelines outlined in this document.


Keep your feature branch fresh and up to date with the latest changes in `develop`, use rebase. Every week during the development update the feature branch with the latest changes in develop. 

```
git fetch origin
git rebase origin/develop
```

In the (somewhat less common) case where other people are also working on the same shared remote feature branch, also rebase changes coming from it:

```
git rebase origin/feature/parallel/dynamic_loadbalance
```

At this point solve any conflicts that come out of the rebase.

Resolving conflicts during the rebase allows you to have always clean merges at the end of the feature development. It also keeps your feature branch history clean and focused without spurious noise.

**Avoid pushing code which does not build locally.**

# Git developer guidelines
- Repositories should have a short, memorable, and topical name. Avoid the use
of capital letters and special characters.

- Repositories should only contain source code or source-code-tangent
information. Do not use `git` for storing analysis results, figures, or sample
outputs. They are more appropriately stored on a cloud storage system.

- Repositories should contain a detailed `README.md` file which should include the following:
  - A detailed description of the project
  - Installation/setup instructions
  - Links to detailed documentation
  - At least one interest-provoking figure or example

- Repositories should be intuitively organized (e.g., tests should be located in
a `test` folder, source in a `src` folder). Follow the conventions provided by
your coding language for organizing your projects. When naming directories do
not use capital letters, spaces, and special characters. File names should be meaningful.
Names such as `first analysis.txt`, `version2.txt`, `January2016.txt` should be avoided.
If there are multiple folders each with it’s own input files or project, each folder must
have a README describing the input files / code. 

- Commit after completing a specific task (hour or two of coding). If you
would describe your work with a commit message of "made various changes" then
that commit should be broken across multiple commits where each commit should
describe one and only one of the changes made. Always check if your code compiles
without any errors before pushing.

- Use branches when developing prospective features or implementing breaking
changes. Only merge these branches into `master` after the changes have been
accepted for production and due notice has been provided to users.

- Projects must have a `.gitignore` file, which should include standard temporary files.
Customise your ignore file from a list of sample `.gitignore` file suitable for your project.
[A collection of useful gitignore](https://github.com/github/gitignore). A typical example of
a `.gitignore` file:
  ```
  *~*
  *~*
  *.DS_Store*
  *.swp*
  *.bak*
  ```
  
- Avoid `.gitkeep` (which is not a git feature).

- Avoid hosting large files in your git repository as it increases the time to download
the repo. To remove any large files / bad data accidentally commited to the repo use
[BFG repo cleaner](https://rtyley.github.io/bfg-repo-cleaner/). This is for cleansing
`bad data` from your repository, such as large files and personal credentials.

- Projects are encouraged to have unit tests and continous integrations: CircleCI, Travis CI or Jenkins.

## Git Commit Messages

- Commit messages should be short and to the point. Prefer specific descriptions
over general ones. To reduce boiler plate text such as "bug fix" prefer the use
of an emoji such as :bug:. A list of useful emojis and what they mean are
provided below.

- Use the present tense ("Add feature" not "Added feature")

- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")

- Limit the first line to 72 characters or less

- Reference issues and pull requests liberally

- Consider starting the commit message with an applicable emoji :smiley: :


| Commit type                | Emoji                        | Syntax                        |
|:---------------------------|:----------------------------:|:-----------------------------:|
| Initial commit             | :tada:                       | `:tada:`                      |
| Version tag                | :bookmark:                   | `:bookmark:`                  |
| New feature                | :sparkles:                   | `:sparkles:`                  |
| Bugfix                     | :bug:                        | `:bug:`                       |
| Documentation              | :pencil:                     | `:pencil:`                    |
| References                 | :books:                      | `:books:`                     |
| Performance                | :racehorse:                  | `:racehorse:`                 |
| Format changes             | :art:                        | `:art:`                       |
| Tests                      | :rotating_light:             | `:rotating_light:`            |
| Adding a test              | :dart:                       | `:dart:`                      |
| Make a test pass           | :heavy_check_mark:           | `:heavy_check_mark:`          |
| Refactor code              | :hammer:                     | `:hammer:`                    |
| Adding CI build system     | :construction_worker:        | `:construction_worker:`       |
| Continuous Integration     | :dart:                       | `:dart:`                      |
| Security                   | :lock:                       | `:lock:`                      |
| Work in progress           | :construction:               | `:construction:`              |
| Removing a feature         | :heavy_minus_sign:           | `:heavy_minus_sign:`          |
| Adding a feature           | :heavy_plus_sign:            | `:heavy_plus_sign:`           |
| Upgrading dependencies     | :arrow_up:                   | `:arrow_up:`                  |
| Downgrading dependencies   | :arrow_down:                 | `:arrow_down:`                |
| Configuration files        | :wrench:                     | `:wrench:`                    |
| Merging branches           | :twisted_rightwards_arrows:  | `:twisted_rightwards_arrows:` |
| Reverting changes          | :rewind:                     | `:rewind:`                    |
| Breaking changes           | :boom:                       | `:boom:`                      |
| Removing code/files        | :fire:                       | `:fire:`                      |
| Move/rename files/repo     | :truck:                      | `:truck:`                     |
| New idea                   | :bulb:                       | `:bulb:`                      |
| Performance improvements   | :rocket:                     | `:rocket:`                    |
| Memory leaks               | :non-potable_water:          | `:non-potable_water:`         |
| Closing issues/PRs         | :checkered_flag:             | `:checkered_flag:`            |
| Security issue             | :lock:                       | `:lock:`                      |
| Adding logging             | :speaker:                    | `:speaker:`                   |
| Remove logging             | :mute:                       | `:mute:`                      |
| Remove linter warnings     | :shirt:                      | `:shirt:`                     |
| Cleanup                    | :broom:                      | `:broom:`                     |