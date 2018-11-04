package com.sda.task.service;


import com.sda.task.model.Task;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
public class TaskService {

    public List<Task> getTask() {
        return generateMockTaskList();
    }

    private List<Task> generateMockTaskList() {
        List<Task> tasks = new ArrayList<>();

        Task task1 = new Task();
        task1.setName("Pranie");
        task1.setComment("Zrób pranie");
        task1.setPriority(3);
        task1.setDescription("xxxx");
        task1.setDateCreated(LocalDateTime.now());
        task1.setDeadline(LocalDateTime.now().plusMinutes(15));

        Task task2 = new Task();
        task2.setName("Prasowanie");
        task2.setComment("Zrób prasowanie");
        task2.setPriority(2);
        task2.setDescription("aaaaa");
        task2.setDateCreated(LocalDateTime.now());
        task2.setDeadline(LocalDateTime.now().plusHours(1));

        tasks.add(task1);
        tasks.add(task2);

        return tasks;
    }
}