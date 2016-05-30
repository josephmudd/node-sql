'use strict';

var Sequelize = require('sequelize');
var nodeDevDbh = new Sequelize('mysql://root:@localhost/nodedev');
var Pet = nodeDevDbh.define('pet', {}, {tableName: 'pet', freezeTableName: true, createdAt: false, updatedAt: false});
var Owner = nodeDevDbh.define('owner', {}, {tableName: 'owner', freezeTableName: true, createdAt: false, updatedAt: false});
Pet.belongsTo(Owner);
Owner.hasMany(Pet);
Pet.findAll({
include: [{
  model: Owner,
  attributes: ["firstName", "lastName"],
  required: false
}],
raw:true,
attributes: ['id', [Sequelize.literal('SUM(IF(isMale,1,0))'),'numMales'], [Sequelize.literal('SUM(IF(isAlive,1,0))'),'numAlive'],[Sequelize.fn('group_concat', Sequelize.col('name')),'names']],group: 'vetId'
}).then(function (pets) {
    pets.forEach(function(element,index){
      console.log(element);
    })
});
