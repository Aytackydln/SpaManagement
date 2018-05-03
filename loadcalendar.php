<script>
document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'agendaWeek,month,agendaDay,listWeek'
      },
      defaultDate: '<?php echo date('Y-m-d'); ?>',
      navLinks: true, // can click day/week names to navigate views

      weekNumbers: true,
      weekNumbersWithinDays: false,
      weekNumberCalculation: 'ISO',

      editable: false,
      eventLimit: false, // allow "more" link when too many events
      events: [
        {
        }
		<?php
			$sql = "SELECT name, date, sid FROM session WHERE date>= '". date("Y-m-d h:i:sa") ."' AND type='". $section ."'";
			$result = $GLOBALS['database']->query($sql);
			while($row = $result->fetch_assoc()){
				echo ",{title: '". $row["name"] ."', start: '". $row["date"] ."', id: '". $row["sid"] ."'}"; 
			}
		?>
      ]
    });

    calendar.render();
  });
 </script>