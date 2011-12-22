require 'test/unit'

module LogAssertions
  def assert_true(test, msg_if_pass = (nomsg = true; nil), msg_if_fail = (nomsg = true; nil), method_name = nil)
      if !test
        if method_name != nil
          #Log.error(method_name, msg_if_fail)
          assert(false, msg_if_fail)
          return
        else
          #Log.error(msg_if_fail)
          assert(false, msg_if_fail)
        end
      else
        assert(true, msg_if_pass)
        puts msg_if_pass
        #method_name != nil ? puts method_name: puts "_is nil_"#Log.info(method_name, msg_if_pass) ; assert(true, "")): Log.info(msg_if_pass)
      end
  end
end