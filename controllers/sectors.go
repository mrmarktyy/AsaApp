package controllers

import (
  "github.com/astaxie/beego"
  "asa/models"
)

type SectorController struct {
  beego.Controller
}

func (c *SectorController) Prepare() {
}

func (c *SectorController) Get() {
  sectors, err := new(models.Sector).GetAll()
  if err != nil {
    beego.Error(err)
  }

  c.Data["json"] = map[string]interface{}{"data": sectors}
  c.ServeJSON()
}

func (c *SectorController) Post() {
  stock := &models.Stock{}
  stock.Stock_id = c.GetString("stock_id")
  stock.Company_name = c.GetString("company_name")
  stock.Sector_id = c.GetString("sector_id")
  stock.Bought, _ = c.GetInt("bought")
  stock.Watched, _ = c.GetInt("watched")
  stock.Dividend, _ = c.GetInt("dividend")
  stock.Drp, _ = c.GetInt("drp")
  stock.Market_cap_million, _ = c.GetInt("market_cap_million")

  err := stock.Save()
  if err != nil {
    beego.Error(err)
  }

  c.Data["json"] = map[string]string{"data": "ok"}
  c.ServeJSON()
}
