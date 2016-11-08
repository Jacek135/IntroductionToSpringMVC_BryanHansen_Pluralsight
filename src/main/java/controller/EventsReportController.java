package controller;

import model.Event;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class EventsReportController {

    @RequestMapping("/events")
    public List<Event> getEvents(){
        List<Event> events = new ArrayList<Event>();

        Event event1 = new Event();
        event1.setName("Java User Group");

        Event event2 = new Event();
        event2.setName("Angular USe Group");

        events.add(event1);
        events.add(event2);

        return events;
    }
}
