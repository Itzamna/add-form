#!/usr/bin/env node
const companies = require('../_data/companies.json');
const fs = require('fs');
const lodash = require('lodash');

lodash.keys(companies).forEach((code) => {
  fs.writeFileSync(
    `${__dirname}/../pages/${code}.html`,
    `---\nlayout: company\ncode: ${code}\n---`);
});
