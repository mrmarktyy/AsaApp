package main

import (
  _ "asa/routers"
  "github.com/astaxie/beego"
  "github.com/astaxie/beego/orm"
  _ "github.com/go-sql-driver/mysql"
  "asa/models"
)

func init() {
  orm.RegisterDataBase("default", "mysql",
    beego.AppConfig.String("mysqluser") + ":" +
    beego.AppConfig.String("mysqlpass") + "@tcp(" +
    beego.AppConfig.String("mysqlurls") + ":" +
    beego.AppConfig.String("mysqlport") + ")/" + beego.AppConfig.String("mysqldb"))
  orm.RegisterModelWithPrefix(beego.AppConfig.String("dbprefix"),
    new(models.Sector), new(models.Stock))
}

func main() {
  orm.Debug = true
  beego.Run()
}

