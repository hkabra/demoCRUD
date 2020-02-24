package com.smarthealth.demo;
import lombok.Data;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
@Data
public class XDevices {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private final long id;
    private final String manufacturer_id;
    private final long hcp_id;
    private final String hardware_state;

}
