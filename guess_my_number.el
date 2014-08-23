(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  (let ((*small* 1)
        (*big* 100))
  (guess-my-number))

(start-over)
