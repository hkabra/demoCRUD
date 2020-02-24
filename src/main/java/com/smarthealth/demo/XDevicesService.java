package com.smarthealth.demo;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class XDevicesService {
    private final XDevicesRespository xDevicesRespository;

    public List<XDevices> findAll() {
        return xDevicesRespository.findAll();
    }

    public Optional<XDevices> findById(Long id) {
        return xDevicesRespository.findById(id);
    }

    public XDevices save(XDevices xDevices) {
        return xDevicesRespository.save(xDevices);
    }

    public void deleteById(Long id) {
        xDevicesRespository.deleteById(id);
    }
}