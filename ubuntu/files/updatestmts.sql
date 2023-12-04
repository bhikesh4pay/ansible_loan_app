UPDATE 4payservice.servicenodeconfig SET value1 = REPLACE(value1, 'qa-gserv.globalsendit.com', 'gserv.floor.low');

UPDATE 4payservice.servicenodeconfig SET value1 = REPLACE(value1, 'qa-gserv2.globalsendit.com', 'gserv2.floor.low');

UPDATE 4payservice.servicenodeconfig SET value1 = REPLACE(value1, 'qa-snode01.globalsendit.com', 'snode01.floor.low');

UPDATE 4payglobal.globalnodeconfig SET value1 = REPLACE(value1, 'qa-gserv.globalsendit.com', 'gserv.floor.low');

UPDATE 4payglobal.globalnodeconfig SET value1 = REPLACE(value1, 'dnode01-bhikesh.globalsendit.com/', 'dnode01.floor.low');

UPDATE 4payglobal.servicenode set privateWWW = REPLACE(privateWWW, 'dev-snode01-bcx.4pay.ca', 'snode01.floor.low');

UPDATE 4payglobal.servicenode set privateWWW = REPLACE(privateWWW, 'dev-snode02-bcx.4pay.ca', 'snode01.floor.low');

UPDATE 4payglobal2.adminnodeconfig SET value1 = REPLACE(value1, 'qa-gserv2.globalsendit.com', 'gserv2.floor.low');

UPDATE 4payglobal2.servicenode set privateWWW = REPLACE(privateWWW, 'dev-snode01-bcx.4pay.ca', 'snode01.floor.low');

UPDATE 4payglobal2.servicenode set privateWWW = REPLACE(privateWWW, 'dev-snode02-bcx.4pay.ca', 'snode01.floor.low');

UPDATE 4payintegration.servicenode set privateWWW = REPLACE(privateWWW, 'dev-snode01-bcx.4pay.ca', 'snode01.floor.low');

UPDATE 4payintegration.servicenode set privateWWW = REPLACE(privateWWW, 'dev-snode02-bcx.4pay.ca', 'snode01.floor.low');
