package com.t1708e.action;

import com.opensymphony.xwork2.ActionSupport;
import com.t1708e.entity.NewEvent;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class EventAction extends ActionSupport {

    private static List<NewEvent> eventList = new ArrayList<NewEvent>();

    public List<NewEvent> getEventList() {
        return eventList;
    }

    static long editId = 0;
    private NewEvent newEvent;

    public String NewEvent() {
        this.newEvent = new NewEvent();
        return SUCCESS;
    }

    public String store() {
        if (editId != 0) {
            for (int i = 0; i < eventList.size(); i++) {
                if (eventList.get(i).getId() == editId) {
                    this.newEvent.setId(editId);
                    eventList.set(i, this.newEvent);
                    editId = 0;
                    break;
                }
            }
            return SUCCESS;
        }
        if (this.newEvent != null) {
            eventList.add(this.newEvent);
        }
        return SUCCESS;
    }

    public String edit(){
        editId = this.newEvent.getId();
        System.out.println(this.newEvent.getId());
        return SUCCESS;
    }

    public String DeleteEvent() {

        Iterator iterator = eventList.iterator();
        while (iterator.hasNext()) {
            NewEvent event = (NewEvent) iterator.next();
            if (event.getId() == this.newEvent.getId()) {
                System.out.println(this.newEvent.getId());
                iterator.remove();
                break;
            }
        }
        return SUCCESS;
    }

    public void validate() {
        if (newEvent == null) {
            return;
        }
        if (this.newEvent.getDate() == null
                || this.newEvent.getDate().trim().length() == 0
        ) {
            addFieldError("newEvent.date", "date is required!");
        }
        if (this.newEvent.getInfo() == null || this.newEvent.getInfo().trim().length() == 0) {
            addFieldError("newEvent.info", "info is required!");
        }
        if (this.newEvent.getPlaning() == null || this.newEvent.getPlaning().trim().length() == 0) {
            addFieldError("newEvent.plan", "planing is required!");
        }
        if (this.newEvent.getTime() == null || this.newEvent.getTime().trim().length() == 0) {
            addFieldError("newEvent.time", "time is required!");
        }
        if (this.newEvent.getAddress() == null || this.newEvent.getAddress().trim().length() == 0) {
            addFieldError("newEvent.location", "address is required!");
        }

    }


    public static List<NewEvent> getEvenList() {
        return eventList;
    }

    public static void setEvenList(List<NewEvent> evenList) {
        EventAction.eventList = evenList;
    }

    public static long getEditId() {
        return editId;
    }

    public static void setEditId(long editId) {
        EventAction.editId = editId;
    }

    public NewEvent getNewEvent() {
        return newEvent;
    }

    public void setNewEvent(NewEvent newEvent) {
        this.newEvent = newEvent;
    }
}