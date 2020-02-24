package com.smarthealth.demo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;


@RestController
@RequestMapping("/api/v1/xdevices")
@Slf4j
@RequiredArgsConstructor
public class XDevicesApi {
    private final XDevicesService xDevicesService;

    @GetMapping
    public ResponseEntity<List<XDevices>> findAll() {
        return ResponseEntity.ok(xDevicesService.findAll());
    }

    @PostMapping
    public ResponseEntity create(@Valid @RequestBody XDevices xDevices) {
        return ResponseEntity.ok(xDevicesService.save(xDevices));
    }

    @GetMapping("/{id}")
    public ResponseEntity<XDevices> findById(@PathVariable Long id) {
        Optional<XDevices> xdevices = xDevicesService.findById(id);
        if (!xdevices.isPresent()) {
            log.error("Id " + id + " is not existed");
            ResponseEntity.badRequest().build();
        }

        return ResponseEntity.ok(xdevices.get());
    }

    @PutMapping("/{id}")
    public ResponseEntity<XDevices> update(@PathVariable Long id, @Valid @RequestBody XDevices xDevices) {
        if (!xDevicesService.findById(id).isPresent()) {
            log.error("Id " + id + " is not existed");
            ResponseEntity.badRequest().build();
        }

        return ResponseEntity.ok(xDevicesService.save(xDevices));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity delete(@PathVariable Long id) {
        if (!xDevicesService.findById(id).isPresent()) {
            log.error("Id " + id + " is not existed");
            ResponseEntity.badRequest().build();
        }

        xDevicesService.deleteById(id);

        return ResponseEntity.ok().build();
    }
}