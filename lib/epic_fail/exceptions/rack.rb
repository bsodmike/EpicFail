module EpicFail
  module Exceptions
    class Rack
      def initialize(app)
        @app = app
      end

      def call(env)
        # downward logic
        @app.call(env)
        # upward logic        
      rescue Exception => e
        notify_exception(e, env)
        raise e
        #@app.call(env) # allow call processing to continue
      end
      
      def notify_exception(e, env)
        # Exception: backtrace  exception  message
        EpicFail::Failure.create!(:exception => "#{e.class}", :message => "#{e.message}", :backtrace => "#{e.backtrace}")
      end
    end
  end
end