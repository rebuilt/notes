local cond = require('nvim-autopairs.conds')
npairs.remove_rule("(")
-- press % => %% is only inside comment or string
npairs.add_rules({
  Rule("%", "%", "lua")
    :with_pair(ts_conds.is_ts_node({'string','comment'})),
  Rule("$", "$", "lua")
    :with_pair(ts_conds.is_not_ts_node({'function'})),
  Rule("(", ")",{"tex", "latex","plaintex"})
    -- don't add a pair if  the previous character is xxx
    :with_pair(cond.not_before_regex_check("xxx", 3))
})
