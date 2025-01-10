package gov.cdc.nnddatapollservice.nbs_odse.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.google.gson.annotations.SerializedName;
import lombok.*;

import java.sql.Timestamp;
import java.time.LocalDateTime;

@Setter
@Getter
public class EDXActivityLogDto {
    @SerializedName("edx_activity_log_uid")
    private Long edxActivityLogUid;

    @SerializedName("source_uid")
    private Long sourceUid;

    @SerializedName("target_uid")
    private Long targetUid;

    @SerializedName("doc_type")
    private String docType;

    @SerializedName("record_status_cd")
    private String recordStatusCd;

    @SerializedName("record_status_time")
    private Timestamp recordStatusTime;

    @SerializedName("exception_txt")
    private String exceptionTxt;

    @SerializedName("imp_exp_ind_cd")
    private String impExpIndCd;

    @SerializedName("source_type_cd")
    private String sourceTypeCd;

    @SerializedName("target_type_cd")
    private String targetTypeCd;

    @SerializedName("business_obj_local_id")
    private String businessObjLocalId;

    @SerializedName("doc_nm")
    private String docNm;

    @SerializedName("source_nm")
    private String sourceNm;

    @SerializedName("algorithm_action")
    private String algorithmAction;

    @SerializedName("algorithm_name")
    private String algorithmName;

    @SerializedName("message_id")
    private String messageId;

    @SerializedName("entity_nm")
    private String entityNm;

    @SerializedName("accession_nbr")
    private String accessionNbr;
}
