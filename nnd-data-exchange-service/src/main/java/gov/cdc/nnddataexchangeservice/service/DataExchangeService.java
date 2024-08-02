package gov.cdc.nnddataexchangeservice.service;

import gov.cdc.nnddataexchangeservice.exception.DataExchangeException;
import gov.cdc.nnddataexchangeservice.service.interfaces.ICNTransportQOutService;
import gov.cdc.nnddataexchangeservice.service.interfaces.IDataExchangeService;
import gov.cdc.nnddataexchangeservice.service.interfaces.INetsstTransportService;
import gov.cdc.nnddataexchangeservice.service.interfaces.ITransportQOutService;
import gov.cdc.nnddataexchangeservice.service.model.DataExchangeModel;
import org.springframework.stereotype.Service;

@Service
public class DataExchangeService implements IDataExchangeService {
    private final INetsstTransportService netsstTransportService;
    private final ITransportQOutService transportQOutService;
    private final ICNTransportQOutService cnTransportQOutService;


    public DataExchangeService(INetsstTransportService netsstTransportService,
                               ITransportQOutService transportQOutService,
                               ICNTransportQOutService icnTransportQOutService) {
        this.netsstTransportService = netsstTransportService;
        this.transportQOutService = transportQOutService;
        this.cnTransportQOutService = icnTransportQOutService;
    }

    public DataExchangeModel getDataForOnPremExchanging(String cnStatusTime, String transportTime,String netssTime, String statusCd) throws DataExchangeException {
        var dataExchange = new DataExchangeModel();
        var cnTransportDatas = cnTransportQOutService.getTransportData(statusCd, cnStatusTime);
        var transportDatas = transportQOutService.getTransportData(transportTime);
        var netssDatas = netsstTransportService.getNetssTransportData(netssTime);

        dataExchange.setCnTransportQOutDtoList(cnTransportDatas);
        dataExchange.setTransportQOutDtoList(transportDatas);
        dataExchange.setNetssTransportQOutDtoList(netssDatas);

        dataExchange.setCountCnTransport(cnTransportDatas.size());
        dataExchange.setCountTransport(transportDatas.size());
        dataExchange.setCountNetssTransport(netssDatas.size());
        return dataExchange;
    }
}
