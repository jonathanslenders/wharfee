Feature: call network commands

  Scenario: create network
     Given we have wharfee installed
      when we run wharfee
      and we wait for prompt
      when we create network simple-network
      then we see id string

  Scenario: list networks
     Given we have wharfee installed
      when we run wharfee
      and we wait for prompt
      when we list networks
      then we see -- at line end
      and we see id string

  Scenario: inspect network
     Given we have wharfee installed
      when we run wharfee
      and we wait for prompt
      when we inspect network simple-network
      then we see Name printed out

  Scenario: remove network
     Given we have wharfee installed
      when we run wharfee
      and we wait for prompt
      when we remove network simple-network
      then we see simple-network at line end