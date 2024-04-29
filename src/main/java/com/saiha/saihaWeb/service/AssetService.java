package com.saiha.saihaWeb.service;

import com.saiha.saihaWeb.dto.AssetDTO;
import com.saiha.saihaWeb.dto.CodeDTO;
import com.saiha.saihaWeb.dto.EmpDTO;
import com.saiha.saihaWeb.mapper.AssetMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional(readOnly = true)
public class AssetService {
    @Autowired
    AssetMapper assetMapper;

    public List<AssetDTO> selectAssetList(Map<String, Object> param){return assetMapper.selectAssetList(param); }
    public int assetCount(Map<String, Object> param){ return assetMapper.assetCount(param);}
    public AssetDTO selectAssetDetail(String resourceId){return assetMapper.selectAssetDetail(resourceId); }
    public List<Map<String, Object>> selectSearchStaff(Map<String, Object> params) {
        return assetMapper.selectSearchStaff(params);
    }
    public void registerPc(Map<String, Object> map) {
        assetMapper.registerPc(map);
    }
    public void doModify(Map<String, Object> map) {
        assetMapper.doModify(map);
    }
    public List<AssetDTO> selectAssetHistory(String resourceId){
        return assetMapper.selectAssetHistory(resourceId);
    }
    public List<CodeDTO> PC1GubunCode(){ return assetMapper.PC1GubunCode(); }
    public List<CodeDTO> PG1GubunCode(){ return assetMapper.PG1GubunCode(); }
    public List<CodeDTO> RVTGubunCode(){ return assetMapper.RVTGubunCode(); }
    public List<CodeDTO> PC3GubunCode(){ return assetMapper.PC3GubunCode(); }
    public List<CodeDTO> HistoryGubunCode(){ return assetMapper.HistoryGubunCode(); }
    public List<EmpDTO> SelectSearchSabun(String searchNm){return assetMapper.SelectSearchSabun(searchNm);}
    public List<EmpDTO> SelectSabun(){return assetMapper.SelectSabun();}
    public void insertHistory(AssetDTO assetDTO){ assetMapper.insertHistory(assetDTO);}
    public AssetDTO SelectHistoryId(String resourceId){return assetMapper.SelectHistoryId(resourceId);}
    public void delHistory(String resourceId, String historyId){assetMapper.DelHistory(resourceId, historyId);}
}
