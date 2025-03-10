package gov.cdc.nnddataexchangeservice.repository.rdb;

import gov.cdc.nnddataexchangeservice.repository.rdb.model.DataSyncConfig;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DataSyncConfigRepository extends JpaRepository<DataSyncConfig, String> {
//    @Transactional
//    @Modifying
//    @Query("UPDATE DataSyncConfig d SET d.lastExecutedResultCount = :lastExecutedResultCount," +
//            " d.lastExecutedRunTime = :lastExecutedRunTime," +
//            " d.lastExecutedTimestamp = :lastExecutedTimestamp,  " +
//            " d.startRow = :startRow,  " +
//            " d.endRow = :endRow  " +
//            "WHERE d.tableName = :tableName")
//    void updateDataSyncConfig(@Param("lastExecutedResultCount") Integer lastExecutedResultCount,
//                             @Param("lastExecutedRunTime") String lastExecutedRunTime,
//                             @Param("lastExecutedTimestamp") Timestamp lastExecutedTimestamp,
//                             @Param("tableName") String tableName,
//                              @Param("startRow") String startRow,
//                              @Param("endRow") String endRow);
}
