<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Trainer home page</title>
  <style>
    *{
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    header{
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 30px 10%;
    }
    .button{
      width: 130px;
      height: 34px;
      border: none;
      outline: none;
      background: #27a327;
      cursor: pointer;
      font-size: 16px;
      text-transform: uppercase;
      color: white;
      border-radius: 4px;
      transition: .3s;
    }
    .button:hover{
      opacity: .7;
    }
    #myInput {
      background-position: 10px 12px; /* Position the search icon */
      background-repeat: no-repeat; /* Do not repeat the icon image */
    /* Full-width */
      font-size: 16px; /* Increase font-size */
      padding: 12px 20px 12px 40px; /* Add some padding */
      border: 1px solid #ddd; /* Add a grey border */
        margin-bottom: 12px; /* Add some space below the input */
        margin-left: 520px;
    }
    #myTable {
      border-collapse: collapse; /* Collapse borders */
      width: 40%; /* Full-width */
      border: 1px solid #ddd; /* Add a grey border */
      font-size: 18px; /* Increase font-size */
      margin-left: auto;
      margin-right: auto;
      padding-top: 50px;
      margin-top:50px;
    }
    #myTable th, #myTable td {
      text-align: left; /* Left-align text */
      padding: 12px; /* Add padding */
    }
    #myTable tr {
            border-bottom: 1px solid #ddd;/* Add a bottom border to all table rows */
            background-color: hsl(120, 60%, 70%);
        }
        #myTable tr.header, #myTable tr:hover {
          background-color: thistle;/* Add a grey background color to the table header and on hover */
        }
        ul {list-style-type: none;}
body {font-family: Verdana, sans-serif;}
html {
  font-size: 62.5%;
}

.container {
  width: 33.2%;
  margin-left: 440px;
  margin-bottom: 50px;
  height: 80vh;
  color: #eee;
  justify-content: center;
  align-items: center;
}

.calendar {
  width: 45rem;
  height: 52rem;
  background-color: #222227;
  box-shadow: 0 0.5rem 3rem rgba(0, 0, 0, 0.4);
}

.month {
  width: 100%;
  height: 12rem;
  background-color: grey;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0 2rem;
  text-align: center;
  text-shadow: 0 0.3rem 0.5rem rgba(0, 0, 0, 0.5);
}

.month i {
  font-size: 2.5rem;
  cursor: pointer;
}

.month h1 {
  font-size: 3rem;
  font-weight: 400;
  text-transform: uppercase;
  letter-spacing: 0.2rem;
  margin-bottom: 1rem;
}

.month p {
  font-size: 1.6rem;
}

.weekdays {
  width: 100%;
  height: 5rem;
  padding: 0 0.4rem;
  display: flex;
  align-items: center;
}

.weekdays div {
  font-size: 1.5rem;
  font-weight: 400;
  letter-spacing: 0.1rem;
  width: calc(44.2rem / 7);
  display: flex;
  justify-content: center;
  align-items: center;
  text-shadow: 0 0.3rem 0.5rem rgba(0, 0, 0, 0.5);
}

.days {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  padding: 0.2rem;
}

.days div {
  font-size: 1.4rem;
  margin: 0.3rem;
  width: calc(40.2rem / 7);
  height: 5rem;
  display: flex;
  justify-content: center;
  align-items: center;
  text-shadow: 0 0.3rem 0.5rem rgba(0, 0, 0, 0.5);
  transition: background-color 0.2s;
}

.days div:hover:not(.today) {
  background-color: #262626;
  border: 0.2rem solid #777;
  cursor: pointer;
}

.prev-date,
.next-date {
  opacity: 0.5;
}

.today {
  background-color: #0000ff;
}
#train {
      border-collapse: collapse; /* Collapse borders */
      width: 0%; /* Full-width */
      border: 1px solid #ddd; /* Add a grey border */
      font-size: 18px; /* Increase font-size */
      margin-left: 35px;
      margin-right: auto;
      padding-top: 50px;
      margin-top:50px 
    }
    #train th, #train td {
      text-align: left; /* Left-align text */
      padding: 12px; /* Add padding */
    }
    #train tr {
            border-bottom: 1px solid #ddd;/* Add a bottom border to all table rows */
            background-color: #DCDCDC;
        }
        #train tr.header, #train tr:hover {
          background-color: #A9A9A9;/* Add a grey background color to the table header and on hover */
        }
        #rain {
      border-collapse: collapse; /* Collapse borders */
      width: 15%; /* Full-width */
      border: 1px solid #ddd; /* Add a grey border */
      font-size: 18px; /* Increase font-size */
      margin-top:-185px;
      margin-left: 1050px;
    }
    #rain th, #rain td {
      text-align: left; /* Left-align text */
      padding: 12px; /* Add padding */
    }
    #rain tr {
            border-bottom: 1px solid #ddd;/* Add a bottom border to all table rows */
            background-color: #DCDCDC;
        }
        #rain tr.header, #rain tr:hover {
          background-color: #A9A9A9;/* Add a grey background color to the table header and on hover */
        }
        #bg{
          width: 300px;
          margin-left: 50px;
        }
        #nav{
          background-color: thistle;
        }
        #gb{
          float: right;
          margin-bottom: 20px;
        }
        #add{
          margin-left: 50px;
          width: 70px;
        }
        #myInput{
          background-color: #F5F5DC;
          width: 20%;
        }
</style>
</head>
<body>
  <header id="nav">
  <nav>
    <button class="button">Home</button>
  </nav>
  <nav>
    <button class="button">Profile</button>
  </nav>
  <nav>
    <button class="button">Logout</button>
  </nav>
  </header>
  <div id="bg">
    <table id="train">
  <tr class="header">
    <th style="width:10%;">Request name</th>
    <th style="width:10%;">Trainning details</th>
  </tr>
  <tr>
    <td>Request1</td>
    <td>Program1</td>
  </tr>
  <tr>
    <td>Request2</td>
    <td>Program2</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
  </tr>
</table>
  </div>
  <div id="gb">
    <table id="rain">
  <tr class="header">
    <th style="width:10%;">Availability</th>
  </tr>
  <tr>
    <td>Availability details</td>
  </tr>
  <tr>
    <td><button id="add">Add</button></td>
  </tr>
</table>
  </div>
<div class="container">
      <div class="calendar">
        <div class="month">
          <i class="fas fa-angle-left prev">&#10094;</i>
          <div class="date">
            <h1></h1>
            <p></p>
          </div>
          <i class="fas fa-angle-right next">&#10095;</i>
        </div>
        <div class="weekdays">
          <div>Sun</div>
          <div>Mon</div>
          <div>Tue</div>
          <div>Wed</div>
          <div>Thu</div>
          <div>Fri</div>
          <div>Sat</div>
        </div>
        <div class="days"></div>
      </div>
    </div>
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for requests by name..">
<table id="myTable">
  <tr class="header">
    <th style="width:10%;">Request name</th>
    <th style="width:10%;">Program</th>
    <th style="width:10%;">Timing</th>
    <th style="width:10%;">Venue</th>
  </tr>
  <tr>
    <td>Request1</td>
    <td>Program1</td>
    <td>Timing1</td>
    <td>Venue1</td>
  </tr>
  <tr>
    <td>Request2</td>
    <td>Program2</td>
    <td>Timing2</td>
    <td>Venue2</td>
  </tr>
  <tr>
    <td>Request3</td>
    <td>Program3</td>
    <td>Timing3</td>
    <td>Venue3</td>
  </tr>
  <tr>
    <td>Request4</td>
    <td>Program4</td>
    <td>Timing4</td>
    <td>Venue4</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
    <script>
      const date = new Date();

const renderCalendar = () => {
  date.setDate(1);

  const monthDays = document.querySelector(".days");

  const lastDay = new Date(
    date.getFullYear(),
    date.getMonth() + 1,
    0
  ).getDate();

  const prevLastDay = new Date(
    date.getFullYear(),
    date.getMonth(),
    0
  ).getDate();

  const firstDayIndex = date.getDay();

  const lastDayIndex = new Date(
    date.getFullYear(),
    date.getMonth() + 1,
    0
  ).getDay();

  const nextDays = 7 - lastDayIndex - 1;

  const months = ["January","February","March","April","May","June","July","August","September","October","November",
    "December",];

  document.querySelector(".date h1").innerHTML = months[date.getMonth()];

  document.querySelector(".date p").innerHTML = new Date().toDateString();

  let days = "";

  for (let x = firstDayIndex; x > 0; x--) {
    days += `<div class="prev-date">${prevLastDay - x + 1}</div>`;
  }

  for (let i = 1; i <= lastDay; i++) {
    if (
      i === new Date().getDate() &&
      date.getMonth() === new Date().getMonth()
    ) {
      days += `<div class="today">${i}</div>`;
    } else {
      days += `<div>${i}</div>`;
    }
  }

  for (let j = 1; j <= nextDays; j++) {
    days += `<div class="next-date">${j}</div>`;
    monthDays.innerHTML = days;
  }
};

document.querySelector(".prev").addEventListener("click", () => {
  date.setMonth(date.getMonth() - 1);
  renderCalendar();
});

document.querySelector(".next").addEventListener("click", () => {
  date.setMonth(date.getMonth() + 1);
  renderCalendar();
});

renderCalendar();
    </script>
</body>
</html>
