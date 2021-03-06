# node-verisure

[![](https://badges.greenkeeper.io/ptz0n/node-verisure.svg)](https://greenkeeper.io/)

[![](https://travis-ci.org/ptz0n/node-verisure.svg?branch=master)](https://travis-ci.org/ptz0n/node-verisure)

A module for reading and changing status of Verisure devices.

### Legal Disclaimer

This software is not affiliated with Verisure Holding AB and the developers take no legal responsibility for the functionality or security of your alarms and devices.

### Installation

```bash
$ npm install verisure --save
```

### Usage

```javascript
const Verisure = require('verisure');

const verisure = new Verisure('my@email.com', 'mysecretpassword');

verisure.getToken()
  .then(() => verisure.getInstallations())
  .then(installations => installations[0].getOverview())
  .then((overview) => {
    console.log('OVERVIEW:', overview);
  })
  .catch((error) => {
    console.error(error);
  });
```
