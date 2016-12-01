package process;



import db.entity.Done;
import javassist.NotFoundException;

import java.util.List;

/**
 * Created by PAVAN VARMA on 01-Dec-16.
 */
public interface DoneProcess {

    List<Done> list();
    Done create(Done done);
    Done findTime (Integer ID) throws NotFoundException;
    List<Done> listed(String username);
}
