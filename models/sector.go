package models

import (
  "github.com/astaxie/beego/orm"
)

type Sector struct {
  Sector_id string `orm:"pk"`
  Sector_name string
}

func (this *Sector) GetAll() ([]Sector, error) {
  var sectors []Sector
  o := orm.NewOrm()
  _, err := o.QueryTable(new(Sector)).All(&sectors)

  return sectors, err
}
