(ql:quickload "drakma")
(ql:quickload "cl-json")

(defun rest-call (host url-path
                  &key params content basic-authorization
                    (method :get)
                    (accept "application/json")
                    (content-type "application/json"))
  "call http-request with basic params and conteent and authorization"
  (multiple-value-bind (stream code)
      (drakma:http-request (format nil "~a~a" host url-path) :parameters params :content content :basic-authorization basic-authorization :accept accept :content-type content-type :want-stream t :method method)
    (if (equal code 200)
        (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
               (cl-json:decode-json stream))
        (format t "HTTP CODE : ~A ~%" code))))
;;
;; NIL
;; * path-url : /v1/appCategories
;;
(defun get-v1-appcategories (&key params content basic-authorization)
  (rest-call "://" "/v1/appCategories" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appCategories/{id}
;;
(defun get-v1-appcategories (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appEncryptionDeclarations
;;
(defun get-v1-appencryptiondeclarations (&key params content basic-authorization)
  (rest-call "://" "/v1/appEncryptionDeclarations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appEncryptionDeclarations/{id}
;;
(defun get-v1-appencryptiondeclarations (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appInfoLocalizations
;;
(defun post-v1-appinfolocalizations (&key params content basic-authorization)
  (rest-call "://" "/v1/appInfoLocalizations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appInfoLocalizations/{id}
;;
(defun get-v1-appinfolocalizations (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appInfos/{id}
;;
(defun get-v1-appinfos (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPreOrders
;;
(defun post-v1-apppreorders (&key params content basic-authorization)
  (rest-call "://" "/v1/appPreOrders" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPreOrders/{id}
;;
(defun get-v1-apppreorders (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPreviewSets
;;
(defun post-v1-apppreviewsets (&key params content basic-authorization)
  (rest-call "://" "/v1/appPreviewSets" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPreviewSets/{id}
;;
(defun get-v1-apppreviewsets (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPreviews
;;
(defun post-v1-apppreviews (&key params content basic-authorization)
  (rest-call "://" "/v1/appPreviews" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPreviews/{id}
;;
(defun get-v1-apppreviews (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPricePoints
;;
(defun get-v1-apppricepoints (&key params content basic-authorization)
  (rest-call "://" "/v1/appPricePoints" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPricePoints/{id}
;;
(defun get-v1-apppricepoints (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPriceTiers
;;
(defun get-v1-apppricetiers (&key params content basic-authorization)
  (rest-call "://" "/v1/appPriceTiers" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPriceTiers/{id}
;;
(defun get-v1-apppricetiers (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPrices/{id}
;;
(defun get-v1-appprices (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appScreenshotSets
;;
(defun post-v1-appscreenshotsets (&key params content basic-authorization)
  (rest-call "://" "/v1/appScreenshotSets" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appScreenshotSets/{id}
;;
(defun get-v1-appscreenshotsets (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appScreenshots
;;
(defun post-v1-appscreenshots (&key params content basic-authorization)
  (rest-call "://" "/v1/appScreenshots" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appScreenshots/{id}
;;
(defun get-v1-appscreenshots (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreReviewAttachments
;;
(defun post-v1-appstorereviewattachments (&key params content basic-authorization)
  (rest-call "://" "/v1/appStoreReviewAttachments" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreReviewAttachments/{id}
;;
(defun get-v1-appstorereviewattachments (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreReviewDetails
;;
(defun post-v1-appstorereviewdetails (&key params content basic-authorization)
  (rest-call "://" "/v1/appStoreReviewDetails" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreReviewDetails/{id}
;;
(defun get-v1-appstorereviewdetails (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersionLocalizations
;;
(defun post-v1-appstoreversionlocalizations (&key params content basic-authorization)
  (rest-call "://" "/v1/appStoreVersionLocalizations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersionLocalizations/{id}
;;
(defun get-v1-appstoreversionlocalizations (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersionPhasedReleases
;;
(defun post-v1-appstoreversionphasedreleases (&key params content basic-authorization)
  (rest-call "://" "/v1/appStoreVersionPhasedReleases" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersionSubmissions
;;
(defun post-v1-appstoreversionsubmissions (&key params content basic-authorization)
  (rest-call "://" "/v1/appStoreVersionSubmissions" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersions
;;
(defun post-v1-appstoreversions (&key params content basic-authorization)
  (rest-call "://" "/v1/appStoreVersions" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersions/{id}
;;
(defun get-v1-appstoreversions (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps
;;
(defun get-v1-apps (&key params content basic-authorization)
  (rest-call "://" "/v1/apps" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}
;;
(defun get-v1-apps (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaAppLocalizations
;;
(defun get-v1-betaapplocalizations (&key params content basic-authorization)
  (rest-call "://" "/v1/betaAppLocalizations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaAppLocalizations
;;
(defun post-v1-betaapplocalizations (&key params content basic-authorization)
  (rest-call "://" "/v1/betaAppLocalizations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaAppLocalizations/{id}
;;
(defun get-v1-betaapplocalizations (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaAppReviewDetails
;;
(defun get-v1-betaappreviewdetails (&key params content basic-authorization)
  (rest-call "://" "/v1/betaAppReviewDetails" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaAppReviewDetails/{id}
;;
(defun get-v1-betaappreviewdetails (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaAppReviewSubmissions
;;
(defun get-v1-betaappreviewsubmissions (&key params content basic-authorization)
  (rest-call "://" "/v1/betaAppReviewSubmissions" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaAppReviewSubmissions
;;
(defun post-v1-betaappreviewsubmissions (&key params content basic-authorization)
  (rest-call "://" "/v1/betaAppReviewSubmissions" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaAppReviewSubmissions/{id}
;;
(defun get-v1-betaappreviewsubmissions (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaBuildLocalizations
;;
(defun get-v1-betabuildlocalizations (&key params content basic-authorization)
  (rest-call "://" "/v1/betaBuildLocalizations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaBuildLocalizations
;;
(defun post-v1-betabuildlocalizations (&key params content basic-authorization)
  (rest-call "://" "/v1/betaBuildLocalizations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaBuildLocalizations/{id}
;;
(defun get-v1-betabuildlocalizations (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaGroups
;;
(defun get-v1-betagroups (&key params content basic-authorization)
  (rest-call "://" "/v1/betaGroups" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaGroups
;;
(defun post-v1-betagroups (&key params content basic-authorization)
  (rest-call "://" "/v1/betaGroups" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaGroups/{id}
;;
(defun get-v1-betagroups (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaLicenseAgreements
;;
(defun get-v1-betalicenseagreements (&key params content basic-authorization)
  (rest-call "://" "/v1/betaLicenseAgreements" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaLicenseAgreements/{id}
;;
(defun get-v1-betalicenseagreements (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesterInvitations
;;
(defun post-v1-betatesterinvitations (&key params content basic-authorization)
  (rest-call "://" "/v1/betaTesterInvitations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesters
;;
(defun get-v1-betatesters (&key params content basic-authorization)
  (rest-call "://" "/v1/betaTesters" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesters
;;
(defun post-v1-betatesters (&key params content basic-authorization)
  (rest-call "://" "/v1/betaTesters" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesters/{id}
;;
(defun get-v1-betatesters (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/buildBetaDetails
;;
(defun get-v1-buildbetadetails (&key params content basic-authorization)
  (rest-call "://" "/v1/buildBetaDetails" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/buildBetaDetails/{id}
;;
(defun get-v1-buildbetadetails (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/buildBetaNotifications
;;
(defun post-v1-buildbetanotifications (&key params content basic-authorization)
  (rest-call "://" "/v1/buildBetaNotifications" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds
;;
(defun get-v1-builds (&key params content basic-authorization)
  (rest-call "://" "/v1/builds" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}
;;
(defun get-v1-builds (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/bundleIdCapabilities
;;
(defun post-v1-bundleidcapabilities (&key params content basic-authorization)
  (rest-call "://" "/v1/bundleIdCapabilities" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/bundleIds
;;
(defun get-v1-bundleids (&key params content basic-authorization)
  (rest-call "://" "/v1/bundleIds" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/bundleIds
;;
(defun post-v1-bundleids (&key params content basic-authorization)
  (rest-call "://" "/v1/bundleIds" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/bundleIds/{id}
;;
(defun get-v1-bundleids (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/certificates
;;
(defun get-v1-certificates (&key params content basic-authorization)
  (rest-call "://" "/v1/certificates" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/certificates
;;
(defun post-v1-certificates (&key params content basic-authorization)
  (rest-call "://" "/v1/certificates" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/certificates/{id}
;;
(defun get-v1-certificates (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/devices
;;
(defun get-v1-devices (&key params content basic-authorization)
  (rest-call "://" "/v1/devices" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/devices
;;
(defun post-v1-devices (&key params content basic-authorization)
  (rest-call "://" "/v1/devices" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/devices/{id}
;;
(defun get-v1-devices (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/endUserLicenseAgreements
;;
(defun post-v1-enduserlicenseagreements (&key params content basic-authorization)
  (rest-call "://" "/v1/endUserLicenseAgreements" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/endUserLicenseAgreements/{id}
;;
(defun get-v1-enduserlicenseagreements (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/financeReports
;;
(defun get-v1-financereports (&key params content basic-authorization)
  (rest-call "://" "/v1/financeReports" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/idfaDeclarations
;;
(defun post-v1-idfadeclarations (&key params content basic-authorization)
  (rest-call "://" "/v1/idfaDeclarations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/inAppPurchases/{id}
;;
(defun get-v1-inapppurchases (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/preReleaseVersions
;;
(defun get-v1-prereleaseversions (&key params content basic-authorization)
  (rest-call "://" "/v1/preReleaseVersions" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/preReleaseVersions/{id}
;;
(defun get-v1-prereleaseversions (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/profiles
;;
(defun get-v1-profiles (&key params content basic-authorization)
  (rest-call "://" "/v1/profiles" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/profiles
;;
(defun post-v1-profiles (&key params content basic-authorization)
  (rest-call "://" "/v1/profiles" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/profiles/{id}
;;
(defun get-v1-profiles (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/routingAppCoverages
;;
(defun post-v1-routingappcoverages (&key params content basic-authorization)
  (rest-call "://" "/v1/routingAppCoverages" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/routingAppCoverages/{id}
;;
(defun get-v1-routingappcoverages (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/salesReports
;;
(defun get-v1-salesreports (&key params content basic-authorization)
  (rest-call "://" "/v1/salesReports" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/territories
;;
(defun get-v1-territories (&key params content basic-authorization)
  (rest-call "://" "/v1/territories" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/userInvitations
;;
(defun get-v1-userinvitations (&key params content basic-authorization)
  (rest-call "://" "/v1/userInvitations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/userInvitations
;;
(defun post-v1-userinvitations (&key params content basic-authorization)
  (rest-call "://" "/v1/userInvitations" :params params :content content
                            :basic-authorization basic-authorization
                            :method :post
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/userInvitations/{id}
;;
(defun get-v1-userinvitations (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/users
;;
(defun get-v1-users (&key params content basic-authorization)
  (rest-call "://" "/v1/users" :params params :content content
                            :basic-authorization basic-authorization
                            :method :get
                            :accept "application/json"
                            :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/users/{id}
;;
(defun get-v1-users (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appCategories/{id}/parent
;;
(defun get-v1-appcategories-parent (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appCategories/{id}/subcategories
;;
(defun get-v1-appcategories-subcategories (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appEncryptionDeclarations/{id}/app
;;
(defun get-v1-appencryptiondeclarations-app (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appEncryptionDeclarations/{id}/relationships/builds
;;
(defun post-v1-appencryptiondeclarations-relationships-builds (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appInfos/{id}/appInfoLocalizations
;;
(defun get-v1-appinfos-appinfolocalizations (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appInfos/{id}/primaryCategory
;;
(defun get-v1-appinfos-primarycategory (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appInfos/{id}/primarySubcategoryOne
;;
(defun get-v1-appinfos-primarysubcategoryone (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appInfos/{id}/primarySubcategoryTwo
;;
(defun get-v1-appinfos-primarysubcategorytwo (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appInfos/{id}/secondaryCategory
;;
(defun get-v1-appinfos-secondarycategory (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appInfos/{id}/secondarySubcategoryOne
;;
(defun get-v1-appinfos-secondarysubcategoryone (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appInfos/{id}/secondarySubcategoryTwo
;;
(defun get-v1-appinfos-secondarysubcategorytwo (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPreviewSets/{id}/relationships/appPreviews
;;
(defun get-v1-apppreviewsets-relationships-apppreviews (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPreviewSets/{id}/appPreviews
;;
(defun get-v1-apppreviewsets-apppreviews (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPricePoints/{id}/territory
;;
(defun get-v1-apppricepoints-territory (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appPriceTiers/{id}/pricePoints
;;
(defun get-v1-apppricetiers-pricepoints (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appScreenshotSets/{id}/relationships/appScreenshots
;;
(defun get-v1-appscreenshotsets-relationships-appscreenshots (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appScreenshotSets/{id}/appScreenshots
;;
(defun get-v1-appscreenshotsets-appscreenshots (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreReviewDetails/{id}/appStoreReviewAttachments
;;
(defun get-v1-appstorereviewdetails-appstorereviewattachments (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersionLocalizations/{id}/appPreviewSets
;;
(defun get-v1-appstoreversionlocalizations-apppreviewsets (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersionLocalizations/{id}/appScreenshotSets
;;
(defun get-v1-appstoreversionlocalizations-appscreenshotsets (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersions/{id}/ageRatingDeclaration
;;
(defun get-v1-appstoreversions-ageratingdeclaration (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersions/{id}/appStoreReviewDetail
;;
(defun get-v1-appstoreversions-appstorereviewdetail (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersions/{id}/appStoreVersionLocalizations
;;
(defun get-v1-appstoreversions-appstoreversionlocalizations (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersions/{id}/appStoreVersionPhasedRelease
;;
(defun get-v1-appstoreversions-appstoreversionphasedrelease (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersions/{id}/appStoreVersionSubmission
;;
(defun get-v1-appstoreversions-appstoreversionsubmission (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersions/{id}/relationships/build
;;
(defun get-v1-appstoreversions-relationships-build (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersions/{id}/build
;;
(defun get-v1-appstoreversions-build (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersions/{id}/idfaDeclaration
;;
(defun get-v1-appstoreversions-idfadeclaration (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/appStoreVersions/{id}/routingAppCoverage
;;
(defun get-v1-appstoreversions-routingappcoverage (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/appInfos
;;
(defun get-v1-apps-appinfos (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/appStoreVersions
;;
(defun get-v1-apps-appstoreversions (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/availableTerritories
;;
(defun get-v1-apps-availableterritories (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/betaAppLocalizations
;;
(defun get-v1-apps-betaapplocalizations (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/betaAppReviewDetail
;;
(defun get-v1-apps-betaappreviewdetail (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/betaGroups
;;
(defun get-v1-apps-betagroups (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/betaLicenseAgreement
;;
(defun get-v1-apps-betalicenseagreement (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/builds
;;
(defun get-v1-apps-builds (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/endUserLicenseAgreement
;;
(defun get-v1-apps-enduserlicenseagreement (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/gameCenterEnabledVersions
;;
(defun get-v1-apps-gamecenterenabledversions (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/inAppPurchases
;;
(defun get-v1-apps-inapppurchases (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/perfPowerMetrics
;;
(defun get-v1-apps-perfpowermetrics (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/preOrder
;;
(defun get-v1-apps-preorder (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/preReleaseVersions
;;
(defun get-v1-apps-prereleaseversions (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/apps/{id}/prices
;;
(defun get-v1-apps-prices (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaAppLocalizations/{id}/app
;;
(defun get-v1-betaapplocalizations-app (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaAppReviewDetails/{id}/app
;;
(defun get-v1-betaappreviewdetails-app (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaAppReviewSubmissions/{id}/build
;;
(defun get-v1-betaappreviewsubmissions-build (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaBuildLocalizations/{id}/build
;;
(defun get-v1-betabuildlocalizations-build (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaGroups/{id}/app
;;
(defun get-v1-betagroups-app (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaGroups/{id}/relationships/betaTesters
;;
(defun get-v1-betagroups-relationships-betatesters (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaGroups/{id}/relationships/betaTesters
;;
(defun post-v1-betagroups-relationships-betatesters (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaGroups/{id}/betaTesters
;;
(defun get-v1-betagroups-betatesters (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaGroups/{id}/relationships/builds
;;
(defun get-v1-betagroups-relationships-builds (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaGroups/{id}/relationships/builds
;;
(defun post-v1-betagroups-relationships-builds (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaGroups/{id}/builds
;;
(defun get-v1-betagroups-builds (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaLicenseAgreements/{id}/app
;;
(defun get-v1-betalicenseagreements-app (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesters/{id}/relationships/apps
;;
(defun get-v1-betatesters-relationships-apps (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesters/{id}/apps
;;
(defun get-v1-betatesters-apps (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesters/{id}/relationships/betaGroups
;;
(defun get-v1-betatesters-relationships-betagroups (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesters/{id}/relationships/betaGroups
;;
(defun post-v1-betatesters-relationships-betagroups (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesters/{id}/betaGroups
;;
(defun get-v1-betatesters-betagroups (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesters/{id}/relationships/builds
;;
(defun get-v1-betatesters-relationships-builds (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesters/{id}/relationships/builds
;;
(defun post-v1-betatesters-relationships-builds (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/betaTesters/{id}/builds
;;
(defun get-v1-betatesters-builds (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/buildBetaDetails/{id}/build
;;
(defun get-v1-buildbetadetails-build (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/app
;;
(defun get-v1-builds-app (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/relationships/appEncryptionDeclaration
;;
(defun get-v1-builds-relationships-appencryptiondeclaration (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/appEncryptionDeclaration
;;
(defun get-v1-builds-appencryptiondeclaration (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/appStoreVersion
;;
(defun get-v1-builds-appstoreversion (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/betaAppReviewSubmission
;;
(defun get-v1-builds-betaappreviewsubmission (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/betaBuildLocalizations
;;
(defun get-v1-builds-betabuildlocalizations (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/relationships/betaGroups
;;
(defun post-v1-builds-relationships-betagroups (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/buildBetaDetail
;;
(defun get-v1-builds-buildbetadetail (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/diagnosticSignatures
;;
(defun get-v1-builds-diagnosticsignatures (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/icons
;;
(defun get-v1-builds-icons (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/relationships/individualTesters
;;
(defun get-v1-builds-relationships-individualtesters (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/relationships/individualTesters
;;
(defun post-v1-builds-relationships-individualtesters (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/individualTesters
;;
(defun get-v1-builds-individualtesters (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/perfPowerMetrics
;;
(defun get-v1-builds-perfpowermetrics (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/builds/{id}/preReleaseVersion
;;
(defun get-v1-builds-prereleaseversion (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/bundleIds/{id}/app
;;
(defun get-v1-bundleids-app (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/bundleIds/{id}/bundleIdCapabilities
;;
(defun get-v1-bundleids-bundleidcapabilities (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/bundleIds/{id}/profiles
;;
(defun get-v1-bundleids-profiles (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/diagnosticSignatures/{id}/logs
;;
(defun get-v1-diagnosticsignatures-logs (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/endUserLicenseAgreements/{id}/territories
;;
(defun get-v1-enduserlicenseagreements-territories (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions
;;
(defun get-v1-gamecenterenabledversions-relationships-compatibleversions (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/gameCenterEnabledVersions/{id}/relationships/compatibleVersions
;;
(defun post-v1-gamecenterenabledversions-relationships-compatibleversions (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/gameCenterEnabledVersions/{id}/compatibleVersions
;;
(defun get-v1-gamecenterenabledversions-compatibleversions (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/preReleaseVersions/{id}/app
;;
(defun get-v1-prereleaseversions-app (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/preReleaseVersions/{id}/builds
;;
(defun get-v1-prereleaseversions-builds (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/profiles/{id}/bundleId
;;
(defun get-v1-profiles-bundleid (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/profiles/{id}/certificates
;;
(defun get-v1-profiles-certificates (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/profiles/{id}/devices
;;
(defun get-v1-profiles-devices (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/userInvitations/{id}/visibleApps
;;
(defun get-v1-userinvitations-visibleapps (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/users/{id}/relationships/visibleApps
;;
(defun get-v1-users-relationships-visibleapps (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/users/{id}/relationships/visibleApps
;;
(defun post-v1-users-relationships-visibleapps (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :post
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; NIL
;; * path-url : /v1/users/{id}/visibleApps
;;
(defun get-v1-users-visibleapps (path-url &key params content basic-authorization)
  (rest-call "://" path-url :params params :content content
                                              :basic-authorization basic-authorization
                                              :method :get
                                              :accept "application/json"
                                              :content-type "application/json"))
;;
;; (convert-json #'function "/path" content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t "failed - code : ~a" code))))