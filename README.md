## What is Spendflow?
[![Gitter](https://badges.gitter.im/Join Chat.svg)](https://gitter.im/spendflow/spendflow?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Spendflow is a personal finance tracker designed to bring your budget to life. [Sign up for the private beta of the hosted version.](http://wiz1.us/spendflowbeta)

## How to run yourself (Mac OS X and Linux)

You need to install [Meteor](http://docs.meteor.com/#quickstart) to run Spendflow. Click that link for installation instructions. It's a one-liner.

Download the latest release and run it with `meteor`. It will be available on `http://localhost:3000`.

You can also clone it from the Git repository:

`git clone https://github.com/hamidsardar/spendflow`

Same procedure to run it.

If for some reason you want events to be sent to your Segment.io account, look at `settings-example.json` and save your own copy as `settings.json`. Run it with `meteor --settings=settings.json`.

### Windows? ([issue](https://github.com/hamidsardar/spendflow/issues/3))

Meteor doesn't support Windows natively, but you can run it in a virtual machine. A `Vagrantfile` for Vagrant would be welcome; there's a draft one in the repository, but it was just me messing around.

## Vision

Spendflow aims to solve the problem of budget decay, the tendency for budgets to reflect reality less and less as time goes on. You know how it goes. You set up a great budget, but actually tracking your income and spending requires too much data entry. So you compensate. You wing it and leave a big buffer in your bank account on top of what you budgeted, or you just don’t track it and run into surprises. Surprises aren’t that fun when bills have to be paid.

The driving force behind Spendflow is the motivation to bridge this gap and allow you to track your finances **with the least amount of data entry possible**. It eschews automated bank feeds (other tools can give you that level of granularity) and instead tries to help you have enough information to manage your finances wisely.

## Support and community

Report bugs or suggest new features on [the Issues page](https://github.com/hamidsardar/spendflow/issues).

Pivotal Tracker is being used to prioritize project work. [Click here to go there.](https://www.pivotaltracker.com/projects/844191)

Trusted contributors can be added to Pivotal Tracker as participants, but anyone can take a look at the current prioritization.

Spendflow is on [Facebook](https://facebook.com/spendflow), [Twitter](https://twitter.com/spendflow), and [Google+](https://google.com/+SpendflowCo) too. It's [@wizonesolutions](https://twitter.com/wizonesolutions) behind the curtain :)

## Features

* **Profiles**: Do you have bank accounts in multiple countries or manage finances that you want to keep separate? Profiles let you do that. All data you enter gets saved to the profile you are using, and you can easily switch them in-place. All on the same user account.

* **Accounts**: Set up your bank accounts, credit card accounts, and "virtual“ accounts (I have a Tax account, for example, but it’s saved within a bank account). These are actually optional, but you will want to set them up to get the most out of Spendflow.

* **Expenses**: You can add anything you have to pay here. If you don’t need that much granularity, you can just group expenses and add them here. In the future, I hope to import these from budgeting software or allow setting up recurring expenses.

* **Income**: When you get paid or someone gives you money, you can add it as Income and use it to pay Expenses. This is currently more data entry than I envision in the future, but it’s useful in that you can ensure you aren’t overspending.

* **Payments**: This is where the magic happens! Pick an Income, pick an Expense, and add a Payment. The Amount field is automatically filled in for you; if you have enough Income left, then the full Expense is paid. If not, then the remaining balance of Income is used towards the Expense. Add Payments until you run out of money.

* **Dashboard**: This only does one thing now; after you mark Income transferred (a.k.a. you’re ready to use it for Payments), this lets you see how much is earmarked for Envelopes. If you are consistent with where you keep your Envelope money, this saves you a lot of time making sure it’s in the right account and, if you keep track of the balance, updated wherever you do that.

* **Sessions**: If you’re like me, you never get to your finances often enough, and you forget what you should be doing. Sessions is a simple notebook feature you can use to write out what you need to do. I use [] as a pattern to represent an unfinished task, and I copy the previous notes every time I do my finances. Eventually, this will evolve into a wizard that gathers your process (kind of like a to-do app) and then follows you throughout the app, showing you the next task you have to do.


There’s a bit of a workflow to all this. There is in-app documentation that provides some guidance when you first start.

## The vision (not all working yet)

My vision is for it to collect your expectations and budget (ideally imported from another app that is tailored for budgeting) and then only require your account balances and any new recurring expenses or income every so often to tell you if you are on track or not. It follows the principle that people don’t really care why they are within budget as long as they are, but they do care if they are over. If your account balances differ from what Spendflow expects, it will walk you through figuring out what was responsible for the discrepancy.

It already allows you to set up Envelopes; these are an easy way to automatically earmark part of your income for specific purposes. I run a small business, so I have Envelopes for Tax and Research/Development. It doesn’t track balances on these yet, but that is also part of the vision. I still track them in a spreadsheet, but once Spendflow is tracking them for me I’ll be really close to not needing spreadsheets anymore.

## API (DDP, no REST yet)

You can use [Meteor DDP](https://github.com/meteor/meteor/blob/1b9bb206cd229fe1639d9c1f94455865000ba5c3/packages/livedata/DDP.md) to communicate with Spendflow. There is not a separate REST API yet, but there likely will be in the future.

## Contributing

**(Note: Contributor License Agreement (CLA) required before I can merge your pull request. See the wiki for [how to submit the CLA](https://github.com/spendflow/spendflow/wiki/Signing-the-Contributor-License-Agreement).**)

Since Spendflow is built in Meteor, contributing is really easy! It's something like this:

1. Fork the repo.
1. Clone your fork locally.
1. Install Atmosphere packages with `mrt install`. If you don't have Meteorite or you have an old version, install it with `npm install -g meteorite`.
1. Make your changes in a feature branch, such as `feature/new-feature` (but with a name reflecting what you're doing).
1. When complete, propose your changes as a pull request.

To test, simply run the app with `meteor`.

## License

AGPLv3; see `LICENSE`.
