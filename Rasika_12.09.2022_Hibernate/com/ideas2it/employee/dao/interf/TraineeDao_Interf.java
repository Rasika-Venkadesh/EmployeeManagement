package com.ideas2it.employee.dao.interf;
import com.ideas2it.employee.model.Trainee;
import com.ideas2it.employee.model.Trainer;

import java.util.ArrayList;
import java.util.List;

public interface TraineeDao_Interf {
    
    List<Trainee> retrieveTrainee();
    void insertTrainee(Trainee trainee);
    boolean validateTraineeById(int traineeId);
    Trainee retrieveTraineeById(int traineeId);
    void updateTrainee(Trainee updateTrainee, int updateChoice);
    void deleteTrainee(int traineeId);
}

