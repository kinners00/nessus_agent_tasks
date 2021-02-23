# nessus_agent

For use with remediate+tenable demos.

These tasks download the nessus agent from this repo and install them on your target nodes. 

Due to the nature of the nessus agent download links, it's not possible to easily download the latest version available. This means it's a manual process to keep the packages up to date locally on this repo. I'll try and keep them updated weekly but feel free to contribute.

Tasks can be used with PE too.

## Installing:

Add info below to your Puppetfile:

```puppet
mod 'nessus_agent',
    :git => 'https://github.com/kinners00/nessus_agent'
```

Install:

```
bolt puppetfile install
```

## Running the tasks

Make sure and add your group name (exactly as it is in tenable) inside double quotes otherwise you may end up with the agent installed but not paired up with your agent group.

Syntax:


**Windows**
```
bolt task run --targets <targets> nessus_agent::windows group="<your_group_name>"
```

**Linux**

```
bolt task run --targets <targets> nessus_agent::linux group="<your_group_name>"
```

**Example**

```
bolt task run --targets windows nessus_agent::windows group="Windows Servers - Marc"
```
