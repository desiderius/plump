#|
 This file is a part of Plump
 (c) 2014 Shirakumo http://tymoon.eu (shinmera@tymoon.eu)
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:cl)
(defpackage #:plump
  (:nicknames #:org.shirakumo.plump)
  (:use #:cl #:plump-dom #:plump-lexer #:plump-parser))

(in-package #:plump)
(let ((plump (find-package 'plump)))
  (do-external-symbols (symb (find-package 'plump-lexer))
    (export symb plump))
  (do-external-symbols (symb (find-package 'plump-parser))
    (export symb plump))
  (do-external-symbols (symb (find-package 'plump-dom))
    (export symb plump)))
