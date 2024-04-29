package com.saiha.saihaWeb.mapper;

import com.saiha.saihaWeb.dto.AssetDTO;
import com.saiha.saihaWeb.dto.CodeDTO;
import com.saiha.saihaWeb.dto.EmpDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface AssetMapper {
    List<AssetDTO> selectAssetList(Map<String, Object> param);
    int assetCount(Map<String, Object> param);
    AssetDTO selectAssetDetail(String resourceId);
    List<AssetDTO> selectAssetHistory(String resourceId);
    List<CodeDTO> PC1GubunCode();
    List<CodeDTO> PG1GubunCode();
    List<CodeDTO> RVTGubunCode();
    List<CodeDTO> PC3GubunCode();
    List<CodeDTO> HistoryGubunCode();
    List<EmpDTO> SelectSearchSabun(String searchNm);
    List<EmpDTO> SelectSabun();
    void insertHistory(AssetDTO assetDTO);
    AssetDTO SelectHistoryId(String resourceId);
    void DelHistory(String resourceId, String historyId);
    List<Map<String, Object>> selectSearchStaff(Map<String, Object> params);
    int registerPc(Map<String, Object> map);
    int doModify(Map<String, Object> map);
}
