describe "Producers service", ->
  Producers = null
  Enterprises = null
  enterprises = [
    {is_primary_producer: true}
  ]

  beforeEach ->
    module 'Darkswarm'
    angular.module('Darkswarm').value('enterprises', enterprises) 
    inject ($injector)->
      Producers = $injector.get("Producers")

  it "delegates producers array to Enterprises", ->
    expect(Producers.producers[0]).toBe enterprises[0] 