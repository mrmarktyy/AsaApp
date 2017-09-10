package models

import (
  "github.com/astaxie/beego/orm"
)

type Stock struct {
  Stock_id string `orm:"pk"`
  Company_name string
  Sector_id string
  Bought int
  Watched int
  Dividend int
  Drp int
  Market_cap_million int
}

func (this *Stock) Save() error {
  _, err := orm.NewOrm().Insert(this)

  return err
}
