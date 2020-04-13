class Timer
  #metodo inicializador
  def initialize(app)
    @app = app
  end

  #metodo de llamada
  def call(env)
    start  = Time.now
    status, headers, response = @app.call(env)
    stop = Time.now
    headers['X-Timing'] = (stop - start).to_s
    [status, headers, response]
  end
end
