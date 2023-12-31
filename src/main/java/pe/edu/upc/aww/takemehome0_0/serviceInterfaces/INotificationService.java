package pe.edu.upc.aww.takemehome0_0.serviceInterfaces;

import pe.edu.upc.aww.takemehome0_0.entities.Notification;

import java.util.List;

public interface INotificationService {
    public void insert(Notification notification);
    public List<Notification> list();
    public void delete(int idNotification);
    public Notification listId(int idNotification);
}
