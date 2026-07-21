; grader

(import test)
(import grader)

(grade-open)

(grade-test (test-result-ok "dummy") 2 #t)
(grade-test (test-result-error-expected "dummy2" 2 3) 4 #t)
(grade-test (test-result-error-exn "dummy3" 2) 6 #t)

(grade-close)