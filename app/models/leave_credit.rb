class LeaveCredit < ApplicationRecord
    enum type: {
        SL: 0,
        VL: 1,
        UNPAID: 2
      }
end
