VirtualAccounts.allow allowViewOwn

Meteor.publish 'spendflowAccounts', ->
  virtualAccounts = VirtualAccounts.find { owner: @userId }
  virtualAccounts
