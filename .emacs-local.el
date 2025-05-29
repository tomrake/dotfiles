(message "LOCAL LOADED")
(defun my/libra ()
  (interactive)
  (setq erc-prompt-for-password nil)
  (erc-tls
      :server "irc.libera.chat"
      :port 6697
      :nick "tomrake"))
