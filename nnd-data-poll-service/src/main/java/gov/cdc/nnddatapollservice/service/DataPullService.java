package gov.cdc.nnddatapollservice.service;

import gov.cdc.nnddatapollservice.exception.DataPollException;
import gov.cdc.nnddatapollservice.service.interfaces.IDataPullService;
import gov.cdc.nnddatapollservice.service.interfaces.INNDDataHandlingService;
import gov.cdc.nnddatapollservice.universal.service.interfaces.IUniversalDataHandlingService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import static gov.cdc.nnddatapollservice.constant.ConstantValue.*;

@Service
@Slf4j
public class DataPullService implements IDataPullService {

    private static final Logger logger = LoggerFactory.getLogger(DataPullService.class);

    @Value("${scheduler.cron}")
    private String cron;
    @Value("${scheduler.zone}")
    private String zone;

    @Value("${poll.nnd.enabled}")
    private boolean nndPollEnabled;
    @Value("${poll.rdb.enabled}")
    private boolean rdbPollEnabled;

    @Value("${poll.rdb_modern.enabled}")
    private boolean rdbModernPollEnabled;

    @Value("${poll.odse.enabled}")
    private boolean odsePollEnabled;

    @Value("${poll.covid_datamart.enabled}")
    private boolean covidDataMartEnabled;
    @Value("${poll.srte.enabled}")
    private boolean srtePollEnabled;

    @Value("${poll.edx_activity.enabled}")
    private boolean edxActivityEnabled;

    @Value("${poll.single_time_poll_enabled}")
    private boolean singlePoll;

    @Value("${datasync.sql_reprocessing_data}")
    private boolean reprocessFailedSQL = false;

    private final INNDDataHandlingService dataHandlingService;
    private final IUniversalDataHandlingService universalDataHandlingService;

    public DataPullService(INNDDataHandlingService dataHandlingService,
                           IUniversalDataHandlingService universalDataHandlingService) {
        this.dataHandlingService = dataHandlingService;
        this.universalDataHandlingService = universalDataHandlingService;
    }

    @Scheduled(cron = "${scheduler.cron}", zone = "${scheduler.zone}")
    public void scheduleNNDDataFetch() throws DataPollException {
        if (nndPollEnabled) {
            logger.info("START POLLING");
            logger.info("CRON: {}, TZ: {}", cron, zone);
            dataHandlingService.handlingExchangedData();
            logger.info("END POLLING");
            closePoller();
        }
    }

    @Scheduled(cron = "${scheduler.cron-data-sync}", zone = "${scheduler.zone}")
    public void scheduleEdxActivityDataFetch() throws DataPollException {
        if (edxActivityEnabled) {
            logger.info("START POLLING");
            logger.info("CRON: {}, TZ: {}", cron, zone);
            universalDataHandlingService.handlingExchangedData(NBS_ODSE_EDX);
            logger.info("END POLLING");
            closePoller();
        }
    }

    @SuppressWarnings("java:S125")
    @Scheduled(cron = "${scheduler.cron-data-sync}", zone = "${scheduler.zone}")
    public void scheduleRDBDataFetch() throws DataPollException {
        if (rdbPollEnabled) {
            logger.info("START POLLING");
            logger.info("CRON: {}, TZ: {}", cron, zone);
            universalDataHandlingService.handlingExchangedData(RDB);
            logger.info("END POLLING");
            closePoller();
        }
    }

    @Scheduled(cron = "${scheduler.cron-data-sync}", zone = "${scheduler.zone}")
    public void scheduleRdbModernDataFetch() throws DataPollException {
        if (rdbModernPollEnabled) {
            logger.info("START POLLING");
            logger.info("CRON: {}, TZ: {}", cron, zone);
            // RDB MODERN will be converted to more generic -- use this for any new db sync
            universalDataHandlingService.handlingExchangedData(RDB_MODERN);
            logger.info("END POLLING");
            closePoller();
        }
    }

    @Scheduled(cron = "${scheduler.cron-data-sync}", zone = "${scheduler.zone}")
    public void scheduleCovidDataMartDataFetch() throws DataPollException {
        if (covidDataMartEnabled) {
            logger.info("START POLLING");
            logger.info("CRON: {}, TZ: {}", cron, zone);
            // RDB MODERN will be converted to more generic -- use this for any new db sync
            universalDataHandlingService.handlingExchangedData(COVID_DATAMART);
            logger.info("END POLLING");
            closePoller();
        }
    }

    @Scheduled(cron = "${scheduler.cron-data-sync}", zone = "${scheduler.zone}")
    public void scheduleOdseDataFetch() throws DataPollException {
        if (odsePollEnabled) {
            logger.info("START POLLING");
            logger.info("CRON: {}, TZ: {}", cron, zone);
            universalDataHandlingService.handlingExchangedData(ODSE_OBS);
            logger.info("END POLLING");
            closePoller();
        }
    }

    @Scheduled(cron = "${scheduler.cron-data-sync}", zone = "${scheduler.zone}")
    public void scheduleSRTEDataFetch() throws DataPollException {
        if (srtePollEnabled) {
            logger.info("START POLLING");
            logger.info("CRON: {}, TZ: {}", cron, zone);
            universalDataHandlingService.handlingExchangedData(SRTE);
            logger.info("END POLLING");
            closePoller();
        }

    }

    private void closePoller() {
        if (singlePoll) {
            System.exit(0);
        }
    }
}
