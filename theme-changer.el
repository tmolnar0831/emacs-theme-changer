;;; Sunrise and sunset to the calendar
(setq calendar-latitude 47.4979)
(setq calendar-longitude 19.0402)
(setq calendar-location-name "Budapest, HU")
(setq calendar-standard-time-zone-name "CET")
(setq calendar-daylight-time-zone-name "CEST")
(setq tmolnar/sunrise (nth 1 (split-string (sunrise-sunset))))
(setq tmolnar/sunset (nth 4 (split-string (sunrise-sunset))))

;;; Custom theme picker
(defun tmolnar/check-current-theme ()
  "Returns the current enabled theme as a string, or returns nil.
This function reads the custom-enabled-themes variable.
I switch between a light and a dark theme."
  (cond ((member 'whiteboard custom-enabled-themes) "whiteboard")
        ((member 'wheatgrass custom-enabled-themes) "wheatgrass")
        (t nil)))

(defun tmolnar/set-hl-line ()
  "Sets the hl-line color matching to the theme, or returns nil."
  (let ((current-theme (tmolnar/check-current-theme)))
    (cond ((equal current-theme "whiteboard")
           (set-face-background 'hl-line "#e2e2e2"))
          ((equal current-theme "wheatgrass")
           (set-face-background 'hl-line "#123d22"))
          (t nil)))
  (set-face-foreground 'highlight nil))

(defun tmolnar/set-my-theme (theme)
  "Sets the required theme.
(tmolnar/set-my-theme THEME)
THEME must be a symbol."
  (mapcar #'disable-theme custom-enabled-themes)
  (load-theme theme t)
  (tmolnar/set-hl-line)
  (message "%s theme has been set" theme))

(defun tmolnar/set-theme ()
  "Command that loads and sets the required theme.
It toggles between the wheatgrass and whiteboard themes."
  (interactive)
  (let ((current-theme (tmolnar/check-current-theme)))
    (cond ((equal current-theme "whiteboard")
           (tmolnar/set-my-theme 'wheatgrass))
          ((equal current-theme "wheatgrass")
           (tmolnar/set-my-theme 'whiteboard))
          (t nil))))

;; Bindings
(global-set-key (kbd "<f11>") 'tmolnar/set-theme)
(run-at-time tmolnar/sunrise nil 'tmolnar/set-my-theme 'whiteboard)
(run-at-time tmolnar/sunset nil 'tmolnar/set-my-theme 'wheatgrass)
