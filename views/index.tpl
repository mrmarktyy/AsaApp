<!DOCTYPE html>
<html>
<head>
  <title>ASA</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link href="static/css/normalize.css" rel="stylesheet" type="text/css">
  <link href="static/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="static/css/spectre.min.css" rel="stylesheet" type="text/css">
  <link href="static/css/sweetalert.css" rel="stylesheet" type="text/css">
  <link href="static/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
  <header>
    <div class="container">
      <h2 class="logo">ASA</h2>
    </div>
  </header>
  <div class="body">
    <div class="container">
      <ul class="tab">
        <li class="tab-item">
          <a href="#sectors" data-toggle="tab">Sectors</a>
        </li>
        <li class="tab-item active">
          <a href="#stocks" data-toggle="tab">Stocks</a>
        </li>
      </ul>
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane" id="sectors">
          <table class="table table-striped table-hover table--sectors">
            <thead>
              <tr>
                <th>Sector_ID</th>
                <th>Sector_Name</th>
              </tr>
            </thead>
            <tbody>
            </tbody>
          </table>
        </div>
        <div role="tabpanel" class="tab-pane active" id="stocks">
          <form class="form--stocks">
            <div class="form-group">
              <label class="form-label" for="Sector_ID">Sector</label>
              <select class="sector_id--select form-select" id="Sector_ID">
                <option value="">Choose Sector</option>
              </select>
            </div>
            <div class="form-group">
              <label class="form-label" for="Stock_ID">Stock_ID</label>
              <input class="form-input" type="text" id="Stock_ID" placeholder="Stock ID">
            </div>
            <div class="form-group">
              <label class="form-label" for="Company_Name">Company_Name</label>
              <input class="form-input" type="text" id="Company_Name" placeholder="Company Name">
            </div>
            <div class="form-group">
              <label class="form-switch">
                <input type="checkbox" id="Bought">
                Bought <i class="form-icon"></i>
              </label>
            </div>
            <div class="form-group">
              <label class="form-switch">
                <input type="checkbox" id="Watched">
                Watched <i class="form-icon"></i>
              </label>
            </div>
            <div class="form-group">
              <label class="form-switch">
                <input type="checkbox" id="Dividend">
                Dividend <i class="form-icon"></i>
              </label>
            </div>
            <div class="form-group">
              <label class="form-switch">
                <input type="checkbox" id="DRP">
                DRP <i class="form-icon"></i>
              </label>
            </div>
            <div class="form-group">
              <label class="form-label" for="Market_Cap_Million">Market Cap Million</label>
              <input class="form-input" type="text" id="Market_Cap_Million" placeholder="Market Cap Million">
            </div>
            <div class="form-group">
              <button class="btn btn-primary btn-submit--stocks" type="submit">Insert</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <footer>
    <div class="container">
      <p class="author">
        contact me:
        <a class="email" href="mailto:tanjune1011@gmail.com">tanjune1011@gmail.com</a>
      </p>
      <p class="company-name">Tantanguanguan © 2016</p>
    </div>
  </footer>
  <script src="static/js/jquery-3.1.0.min.js"></script>
  <script src="static/js/bootstrap.min.js"></script>
  <script src="static/js/sweetalert.min.js"></script>
  <script src="static/js/main.js"></script>
</body>
</html>
