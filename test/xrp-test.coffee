chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'xrp', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/xrp')(@robot)

  it 'registers a xrp [me] listener', ->
    expect(@robot.respond).to.have.been.calledWith(/xrp(?: me)?$/i)
