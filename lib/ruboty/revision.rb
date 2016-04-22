require 'ruboty'
require 'ruboty/revision/version'

module Ruboty
  module Handlers
    class Revision < Base
      REVISION = if File.exist?('REVISION')
                   IO.read('REVISION').chomp
                 end

      on(/revision/i, name: 'revision', description: 'Show the revision deployed.')

      def revision(message)
        message.reply(REVISION || 'Revision? Beats me.')
      end
    end
  end
end
