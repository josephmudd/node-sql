'use strict';

var Sequelize = require('sequelize');
var nodeDevDbh = new Sequelize('mysql://root:@localhost/nodedev');
var Pet = nodeDevDbh.define('pet', {}, {tableName: 'pet', freezeTableName: true, createdAt: false, updatedAt: false}); 
Pet.findAll({attributes: ['id', [Sequelize.fn('group_concat', Sequelize.col('name')),'names']],group: 'ownerId'}).then(function (pets) {
    pets.forEach(function(element,index){
        console.log(element.get('names'));
    })
});
