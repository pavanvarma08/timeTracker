package process;

import db.DoneDAO;

import db.entity.Done;

import javassist.NotFoundException;

import java.util.List;
import java.util.Optional;

/**
 * Created by PAVAN VARMA on 01-Dec-16.
 */
public class DoneProcessDbimpl implements DoneProcess{

    private DoneDAO DoneDAO;

    public DoneProcessDbimpl(DoneDAO DoneDAO) {
        this.DoneDAO = DoneDAO;
    }

    @Override
    public List<Done> list() {
        return this.DoneDAO.list();
    }

    @Override
    public List<Done> listed(String username) {return this.DoneDAO.listUser(username);}

    @Override
    public Done create(Done done) {
        return this.DoneDAO.findingTime(this.DoneDAO.create(done));
    }


    @Override
    public Done findTime(Integer ID) throws NotFoundException {
        return Optional
                .ofNullable(this.DoneDAO.findingTime(ID))
                .orElseThrow(() -> new NotFoundException("log doesnt exist"));
    }


}
