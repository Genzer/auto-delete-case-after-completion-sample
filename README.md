# auto-delete-case-after-completion-sample

This project demonstrate a technique to delete permanently ICases once they are finished.

There are time when you don't want a certain Business Process to create an ICase in the database. Especially if your Business Process has used Trigger or Signals to another Business Process. In this situation, Axon.ivy engine will persist ICases of both Business Processes (for keeping chain of cases).

This project introduces a `ISystemEventListener` such that it will automatically delete `ICases` whose `state` is either `DONE` or `DESTROYED` and has `additionalProperty("ivy.case.ActionAfterCompletion")` set to `"DELETE"`
