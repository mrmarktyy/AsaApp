package routers

import (
	"asa/controllers"
	"github.com/astaxie/beego"
)

func init() {
  beego.Router("/", &controllers.IndexController{}, "get:Index")
  beego.Router("/sectors", &controllers.SectorController{})
}
