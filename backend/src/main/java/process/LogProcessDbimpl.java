package process;

import db.entity.Log;
import db.LogDAO;


import javax.ws.rs.NotFoundException;
import java.util.List;
import java.util.Optional;

public class LogProcessDbimpl implements  LogProcess {

    private LogDAO logDAO;

    public LogProcessDbimpl(LogDAO logDAO) {
        this.logDAO = logDAO;
    }

    @Override
    public List<Log> list() {
        return this.logDAO.list();
    }

    @Override
    public Log create(Log log) {
        return this.logDAO.findByTime(this.logDAO.create(log));
    }

 /*   @Override
    public Log update(Integer logID, Log updatedLog) throws NotFoundException {
        Log log = this.findTime(logID);

        log.setTime(updatedLog.getTime());
        log.setDate(updatedLog.getDate());
        log.setTitle(updatedLog.getTitle());
        log.setUsername(updatedLog.getUsername());

        this.logDAO.update(log);

        return log;
    }

    @Override
    public Log findTime(Integer logID) throws NotFoundException {
        return Optional
                .ofNullable(this.logDAO.findByTime(logID))
                .orElseThrow(() -> new NotFoundException("log doesnt exist"));
    }

    @Override
    public void delete(Integer logID) {
        this.logDAO.deleteByTime(logID);
    }*/
}



