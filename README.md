# federated-lepiter

Here we could explore ways to add Federated Wiki functionality to Lepiter.

This repository is a Lepiter DB. See Glamorous Toolkit Book for more details.

To access the Glamorous Toolkit Book and this Lepiter DB, install Glamorous Toolkit from https://gtoolkit.com/download/. 

## Installation

1. Launch Glamorous Toolkit and open a Playground.
2. Paste the following lines into the playground and run them
```
Metacello new
    baseline: 'FederatedLepiter';
    repository: 'github://RalfBarkow/federated-lepiter:main/src';
    load.
```

