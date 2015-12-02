.class public Lcom/htc/camera/CameraThread;
.super Ljava/lang/Thread;
.source "CameraThread.java"

# interfaces
.implements Lcom/htc/camera/base/c;
.implements Lcom/htc/camera/component/au;
.implements Lcom/htc/camera/event/a;
.implements Lcom/htc/camera/t;


# static fields
.field public static final DEFAULT_SHUTTER_SOUND:I

.field public static final EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_DCF_INFO:Lcom/htc/camera/io/DCFInfo;

.field private static mExifDateTimeFormat:Ljava/text/DateFormat;


# instance fields
.field public HtcCallbackReceivedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/HtcCallbackEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final MINIMUN_CAMERA_REMAIN_SPACE:J

.field public autoFocusCanceledEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusFinishedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusStartedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusStartingEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraClosedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraClosingEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraOpenEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraOpenFailedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraOpeningEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraDeviceEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraType:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public captureCanceledEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureFailedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureRotation:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field public captureStartedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureStartingEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public captureStoppedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public deletingLatestMediaEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public exitingEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public firstPreviewFrameReceivedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraPreviewEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public flashMode:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field public hasEnoughInternalDataSpace:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public hasMovingObjects:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isContinuousAFSupported:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isDualLensHandCovered:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isEyeBlinked:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isHdrSuggested:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isLowlight:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isPreviewStarted:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isRecording:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isTakingPicture:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isVideoPauseSupported:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m3DFileFormat:Lcom/htc/camera/io/FileFormat;

.field private mAudioManager:Lcom/htc/camera/IAudioManager;

.field private mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

.field private mAutoSceneController:Lcom/htc/camera/IAutoSceneController;

.field private mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

.field private mCamController:Lcom/htc/camera/CameraController;

.field private mCameraActivity:Lcom/htc/camera/HTCCamera;

.field private mCameraDeviceManager:Lcom/htc/camera/v;

.field private mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

.field private mCanSetPreviewCallback:Z

.field private mCanStartPreview:Z

.field private mComponentFactory:Lcom/htc/camera/component/CameraThreadComponentFactory;

.field private mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

.field private volatile mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private volatile mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private final mEnable3DPreviewHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorCallback:Lcom/htc/camera/i;

.field private mErrorListener:Lcom/htc/camera/CameraThread$ErrorListener;

.field private mInfoListener:Lcom/htc/camera/CameraThread$InfoListener;

.field private volatile mInitialCameraType:Lcom/htc/camera/CameraType;

.field private mInitialMode:Lcom/htc/camera/CameraMode;

.field private mIsCaptureCanceledEventNeeded:Z

.field private mIsFirstFrameCached:Z

.field private mIsFirstPreviewStartAfterOpeningCamera:Z

.field private mIsFirstTimeToStartPreview:Z

.field private mIsGeoTaggingEnabled:Z

.field private mIsParamsPrepared:Z

.field private mIsPreviewCallbackSet:Z

.field private volatile mIsRunning:Z

.field private mIsShutterCallbackReceived:Z

.field private mIsVideoRecordingStarted:Z

.field private mJPEGQuality:Lcom/htc/camera/PictureQuality;

.field private final mJpegCallback:Lcom/htc/camera/k;

.field private final mJpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

.field private mJpegCallbackTimerHandle:Lcom/htc/camera/Handle;

.field private mJpegData:[B

.field private mLastCameraOpenFailedReason:Lcom/htc/camera/CameraOpenFailedReason;

.field private mLastMediaInfo:Lcom/htc/camera/media/MediaInfo;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Lcom/htc/camera/location/ILocationManager;

.field private mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

.field private final mMediaRecorderTimeoutCallback:Lcom/htc/camera/debug/b;

.field private mObjectStatusBarManager:Ljava/lang/Object;

.field private final mOneShotPreviewCallback:Lcom/htc/camera/l;

.field private final mOneShotPreviewCallbackHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mOpenCameraDirectlyWhenStart:Z

.field private volatile mOpenCameraEndProfTimer:Lcom/htc/camera/Handle;

.field private volatile mOpenCameraStartProfTimer:Lcom/htc/camera/Handle;

.field private mPendingCloseCamera:Z

.field private mPendingExit:Z

.field private mPendingModeChangeHandle:Lcom/htc/camera/CameraThread$ModeChangeHandle;

.field private volatile mPhotoCaptureHandler:Lcom/htc/camera/z;

.field private final mPostviewCallback:Lcom/htc/camera/k;

.field private final mPreCaptureAFDisableHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private mPreCaptureAFHandle:Lcom/htc/camera/Handle;

.field private final mPreviewCallback:Lcom/htc/camera/l;

.field private mPreviewCallbackDisableCounter:I

.field private mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

.field private mProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private final mPropertyOwnerKey:Ljava/lang/Object;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

.field private mRecordingStartSoundHandle:Lcom/htc/camera/Handle;

.field private mRecordingStartTime:J

.field private mRecordingStopSoundHandle:Lcom/htc/camera/Handle;

.field private mRecordingTimer:Lcom/htc/camera/StopWatch;

.field private mRecordingVideoFileFormat:Lcom/htc/camera/io/FileFormat;

.field private mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

.field private mRequestedFilePath:Lcom/htc/camera/io/Path;

.field private mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private mSettingsManager:Lcom/htc/camera/ISettingsManager;

.field private final mShutterCallback:Lcom/htc/camera/m;

.field private mShutterSoundHandle:Lcom/htc/camera/Handle;

.field private final mStartPreviewCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

.field private volatile mStartPreviewEndProfTimer:Lcom/htc/camera/Handle;

.field private volatile mStartPreviewStartProfTimer:Lcom/htc/camera/Handle;

.field private volatile mStartProfTimer:Lcom/htc/camera/Handle;

.field public mSyncObject:Ljava/lang/Object;

.field private mTimeoutController:Lcom/htc/camera/debug/a;

.field mUIHandler:Landroid/os/Handler;

.field private volatile mVideoCaptureHandler:Lcom/htc/camera/al;

.field private final mVideoSnapshotShutterCallback:Lcom/htc/camera/m;

.field private mViewfinder:Lcom/htc/camera/ui/IViewfinder;

.field private m_LatestFocusAreas:[Landroid/graphics/RectF;

.field private final m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

.field public mediaDeletedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mediaRecorderInfoCallbackEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaRecorderInfoEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mode:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field public modeChangeFailedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraModeChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public modeChangedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraModeChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public postviewImageRetrievedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/imaging/RawImageEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public preparingParamsAfterPreviewStartEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public preparingParamsBeforePreviewStartEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public preparingParamsBeforeRecording:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public preparingParamsBeforeTakingPictureEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewFrameRetrievedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/imaging/RawImageEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewOutputTarget:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public previewSize:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public previewStartFailedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraPreviewEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStartedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraPreviewEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStartingEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraPreviewEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStoppedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStoppingEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public recordingFailedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/RecordingFailedReason;",
            ">;>;"
        }
    .end annotation
.end field

.field public recordingState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;"
        }
    .end annotation
.end field

.field public requestCloseCameraEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CloseCameraRequestEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestDeleteLatestMediaEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/SingleHandlerEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestOpenCameraEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OpenCameraRequestEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public savingImageEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public shutterEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public storageSlot:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;"
        }
    .end annotation
.end field

.field public storageState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/io/StorageState;",
            ">;"
        }
    .end annotation
.end field

.field public takingPictureFailedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureFailedReason;",
            ">;>;"
        }
    .end annotation
.end field

.field public takingPictureState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;"
        }
    .end annotation
.end field

.field public videoThumbnailCreatedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/imaging/ThumbnailEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public zoomRange:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public zoomValue:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 152
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "MediaSaveFailed"

    const-class v2, Lcom/htc/camera/io/MediaSaveEventArgs;

    const-class v3, Lcom/htc/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;

    .line 153
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "MediaSaved"

    const-class v2, Lcom/htc/camera/io/MediaSaveEventArgs;

    const-class v3, Lcom/htc/camera/CameraThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    .line 321
    new-instance v0, Lcom/htc/camera/io/DCFInfo;

    const-string v1, "MEDIA"

    const-string v2, "VIDEO"

    const/4 v3, 0x0

    const-string v4, "counter_video"

    const/16 v5, 0x64

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/CameraThread;->VIDEO_DCF_INFO:Lcom/htc/camera/io/DCFInfo;

    .line 466
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isKDDI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070006

    :goto_0
    sput v0, Lcom/htc/camera/CameraThread;->DEFAULT_SHUTTER_SOUND:I

    .line 5612
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/CameraThread;->mExifDateTimeFormat:Ljava/text/DateFormat;

    return-void

    .line 466
    :cond_0
    const v0, 0x7f070005

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2983
    const-string v0, "Camera Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    .line 209
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->mObjectStatusBarManager:Ljava/lang/Object;

    .line 253
    iput-boolean v3, p0, Lcom/htc/camera/CameraThread;->mIsRunning:Z

    .line 257
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mInitialMode:Lcom/htc/camera/CameraMode;

    .line 264
    iput-boolean v3, p0, Lcom/htc/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    .line 265
    iput-boolean v3, p0, Lcom/htc/camera/CameraThread;->mIsFirstPreviewStartAfterOpeningCamera:Z

    .line 267
    iput-boolean v3, p0, Lcom/htc/camera/CameraThread;->mIsFirstFrameCached:Z

    .line 284
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFDisableHandles:Ljava/util/ArrayList;

    .line 288
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    .line 295
    new-instance v0, Lcom/htc/camera/StopWatch;

    invoke-direct {v0}, Lcom/htc/camera/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    .line 297
    iput-boolean v3, p0, Lcom/htc/camera/CameraThread;->mCanStartPreview:Z

    .line 299
    sget-object v0, Lcom/htc/camera/PictureQuality;->Super:Lcom/htc/camera/PictureQuality;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mJPEGQuality:Lcom/htc/camera/PictureQuality;

    .line 301
    new-instance v0, Lcom/htc/camera/media/MediaInfo;

    invoke-direct {v0}, Lcom/htc/camera/media/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mLastMediaInfo:Lcom/htc/camera/media/MediaInfo;

    .line 306
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->m3DFileFormat:Lcom/htc/camera/io/FileFormat;

    .line 308
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/htc/camera/CameraThread;->MINIMUN_CAMERA_REMAIN_SPACE:J

    .line 316
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->mJpegData:[B

    .line 350
    new-instance v0, Lcom/htc/camera/CameraThread$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$1;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mJpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 358
    new-instance v0, Lcom/htc/camera/CameraThread$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$2;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaRecorderTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 366
    new-instance v0, Lcom/htc/camera/CameraThread$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$3;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mStartPreviewCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 505
    new-instance v0, Lcom/htc/camera/CameraThread$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$6;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mJpegCallback:Lcom/htc/camera/k;

    .line 534
    new-instance v0, Lcom/htc/camera/CameraThread$7;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$7;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPostviewCallback:Lcom/htc/camera/k;

    .line 541
    new-instance v0, Lcom/htc/camera/CameraThread$8;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$8;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mShutterCallback:Lcom/htc/camera/m;

    .line 549
    new-instance v0, Lcom/htc/camera/CameraThread$9;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$9;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mVideoSnapshotShutterCallback:Lcom/htc/camera/m;

    .line 2978
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    .line 2980
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2995
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    .line 2997
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 2998
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    .line 3426
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    .line 3604
    new-instance v0, Lcom/htc/camera/CameraThread$ErrorCallback;

    invoke-direct {v0, p0, v2}, Lcom/htc/camera/CameraThread$ErrorCallback;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mErrorCallback:Lcom/htc/camera/i;

    .line 3606
    new-instance v0, Lcom/htc/camera/CameraThread$InfoListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/camera/CameraThread$InfoListener;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mInfoListener:Lcom/htc/camera/CameraThread$InfoListener;

    .line 3608
    new-instance v0, Lcom/htc/camera/CameraThread$ErrorListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/camera/CameraThread$ErrorListener;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mErrorListener:Lcom/htc/camera/CameraThread$ErrorListener;

    .line 4753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mOneShotPreviewCallbackHandles:Ljava/util/ArrayList;

    .line 4754
    new-instance v0, Lcom/htc/camera/CameraThread$22;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$22;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPreviewCallback:Lcom/htc/camera/l;

    .line 4764
    new-instance v0, Lcom/htc/camera/CameraThread$23;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$23;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mOneShotPreviewCallback:Lcom/htc/camera/l;

    .line 6137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mEnable3DPreviewHandles:Ljava/util/ArrayList;

    .line 2984
    check-cast p1, Lcom/htc/camera/HTCCamera;

    iput-object p1, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    .line 2985
    iput-object p2, p0, Lcom/htc/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2986
    return-void
.end method

.method private NeedToApplyAMR_NB()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3342
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 3354
    :goto_0
    return v0

    .line 3345
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 3346
    if-nez v0, :cond_1

    move v0, v1

    .line 3347
    goto :goto_0

    .line 3349
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/CameraStartMode;->MmsVideo:Lcom/htc/camera/CameraStartMode;

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/htc/camera/Resolution;->Video_QCIF:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v2}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isMMSneedAMRNB()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3352
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3354
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mProcessingDialogHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Z)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/CameraThread;->startVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/camera/CameraThread;->mProcessingDialogHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;ZZ)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/CameraThread;->stopVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/CameraThread;Lcom/htc/camera/FlashMode;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->setFlashModeInternal(Lcom/htc/camera/FlashMode;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->resetZoomInternal(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/CameraThread;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->setCaptureRotationInternal(Lcom/htc/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->playStopVideoRecordShutter()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->pauseVideoRecordingInternal()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->resumeVideoRecordingInternal()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->setupPreviewCallback()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/HTCCamera;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->clearPreviewCallback()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/camera/CameraThread;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/z;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPhotoCaptureHandler:Lcom/htc/camera/z;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->cancelTakingPictureInternal()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/camera/CameraThread;Lcom/htc/camera/io/StorageState;ZJ)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/CameraThread;->checkStorageStateInternal(Lcom/htc/camera/io/StorageState;ZJ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/camera/CameraThread;[B)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->onPreviewFrameRetrieved([B)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/CameraThread;[B)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->onOneShotPreviewFrameReceived([B)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->registerOneShotPreviewCallback(Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/camera/CameraThread;Lcom/htc/camera/io/StorageSlot;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->changeStorageSlotInternal(Lcom/htc/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$ModeChangeHandle;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->changeModeInternal(Lcom/htc/camera/CameraThread$ModeChangeHandle;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->disableVibrationInternal()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->enableVibrationInternal()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/camera/CameraThread;Lcom/htc/camera/RecordingLimitState;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->onRecordingLimitStateChanged(Lcom/htc/camera/RecordingLimitState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/camera/CameraThread;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->onAutoFocusCanceled(Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/camera/CameraThread;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->onAutoFocusFinished(Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/debug/a;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/camera/CameraThread;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->onMediaSaved(Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/camera/CameraThread;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/CameraThread;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;ZZ)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/CameraThread;->takePictureInternal(Lcom/htc/camera/CaptureHandle;ZZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->enable3DPreview(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/camera/CameraThread;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsShutterCallbackReceived:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/camera/CameraThread;Z)Z
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/camera/CameraThread;->mIsShutterCallbackReceived:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraPreviewStartResult;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/CameraThread;->startPreviewInternal(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)Lcom/htc/camera/CameraPreviewStartResult;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->startPreviewDirectlyInternal(Lcom/htc/camera/Handle;)Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Z
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/CameraThread;->openCameraInternal(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Z

    move-result v0

    return v0
.end method

.method private cancelTakingPictureInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5913
    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPictureInternal() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5915
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_0

    .line 5917
    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPictureInternal() - mCurrentPhotoCaptureHandle is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5960
    :goto_0
    return-void

    .line 5922
    :cond_0
    iput-boolean v2, p0, Lcom/htc/camera/CameraThread;->mIsCaptureCanceledEventNeeded:Z

    .line 5923
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPhotoCaptureHandler:Lcom/htc/camera/z;

    .line 5924
    if-eqz v0, :cond_3

    .line 5927
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/z;->cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5929
    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPictureInternal() - cancel success"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5930
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_1

    .line 5931
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5959
    :cond_1
    :goto_1
    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPictureInternal() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5934
    :cond_2
    :try_start_1
    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPictureInternal() - without cancel"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5937
    :catch_0
    move-exception v0

    .line 5939
    const-string v1, "CameraThread"

    const-string v2, "cancelTakingPictureInternal() - Cannot cancel taking picture"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5943
    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPictureInternal() - CameraThread stop timer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5945
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_4

    .line 5947
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 5948
    iput-object v3, p0, Lcom/htc/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/htc/camera/Handle;

    .line 5952
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-eqz v0, :cond_5

    .line 5953
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->cancelTakePicture()Z

    .line 5956
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {p0, v3, v0, v2}, Lcom/htc/camera/CameraThread;->handleCommonJpegCallback([BLcom/htc/camera/CameraController;Z)V

    goto :goto_1
.end method

.method private changeModeInternal(Lcom/htc/camera/CameraThread$ModeChangeHandle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5131
    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal("

    iget-object v2, p1, Lcom/htc/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/htc/camera/CameraMode;

    const-string v3, ") - start"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5132
    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5135
    iput-object v5, p0, Lcom/htc/camera/CameraThread;->mPendingModeChangeHandle:Lcom/htc/camera/CameraThread$ModeChangeHandle;

    .line 5138
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    iget-object v1, p1, Lcom/htc/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5140
    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal() - Change to same mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5141
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->modeChangedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraModeChangeEventArgs;

    iget-object v2, p1, Lcom/htc/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/htc/camera/CameraMode;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraModeChangeEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraMode;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 5176
    :goto_0
    return-void

    .line 5146
    :cond_0
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v1, p1, Lcom/htc/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5161
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5164
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5166
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->stopPreview()V

    .line 5167
    invoke-direct {p0, p1, v5}, Lcom/htc/camera/CameraThread;->startPreviewInternal(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraPreviewStartResult;

    .line 5173
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->modeChangedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraModeChangeEventArgs;

    iget-object v2, p1, Lcom/htc/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/htc/camera/CameraMode;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraModeChangeEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraMode;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 5175
    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal("

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    const-string v3, ") - end"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 5149
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_1

    .line 5150
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v0, v4, v4}, Lcom/htc/camera/CameraThread;->stopVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;ZZ)V

    goto :goto_1

    .line 5153
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isTakingPicture:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5155
    const-string v0, "CameraThread"

    const-string v1, "changeModeInternal() - Waiting for taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5156
    iput-object p1, p0, Lcom/htc/camera/CameraThread;->mPendingModeChangeHandle:Lcom/htc/camera/CameraThread$ModeChangeHandle;

    goto :goto_0

    .line 5170
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->invalidateCameraParameters()V

    goto :goto_2

    .line 5146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeStorageSlotInternal(Lcom/htc/camera/io/StorageSlot;)V
    .locals 3

    .prologue
    .line 4978
    if-nez p1, :cond_0

    .line 5001
    :goto_0
    return-void

    .line 4982
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isTakingPicture:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4984
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4987
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isRecording:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4989
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4992
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4994
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - Storage slot settings is locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4999
    :cond_3
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change storage slot to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5000
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkCanTakePicture()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3612
    .line 3613
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v3

    .line 3614
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageState;

    .line 3615
    sget-object v5, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-eq v0, v5, :cond_0

    .line 3617
    const-string v5, "CameraThread"

    const-string v6, "storage error"

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3618
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/htc/camera/CameraThread;->checkStorageStateInternal(Lcom/htc/camera/io/StorageState;ZJ)V

    .line 3621
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-eq v0, v3, :cond_2

    move v0, v1

    .line 3634
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/CameraStartMode;->ContactsPhoto:Lcom/htc/camera/CameraStartMode;

    if-ne v1, v3, :cond_1

    .line 3638
    :goto_1
    return v2

    .line 3624
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/htc/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    .line 3626
    sget-object v0, Lcom/htc/camera/io/StorageState;->Full:Lcom/htc/camera/io/StorageState;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/htc/camera/CameraThread;->checkStorageStateInternal(Lcom/htc/camera/io/StorageState;ZJ)V

    .line 3629
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-eq v0, v3, :cond_2

    move v0, v1

    .line 3630
    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private checkCanTakeRecorder()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3643
    .line 3644
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v3

    .line 3645
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageState;

    .line 3646
    sget-object v5, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-eq v0, v5, :cond_0

    .line 3648
    const-string v5, "CameraThread"

    const-string v6, "storage error"

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/htc/camera/CameraThread;->checkStorageStateInternal(Lcom/htc/camera/io/StorageState;ZJ)V

    .line 3652
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-eq v0, v3, :cond_2

    move v0, v1

    .line 3683
    :goto_0
    return v0

    .line 3657
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    invoke-virtual {v0, v3, v4, v1}, Lcom/htc/camera/IRecordingLimitController;->getRemainingRecordingDuration(JI)Lcom/htc/camera/Duration;

    move-result-object v0

    .line 3658
    if-nez v0, :cond_1

    .line 3660
    const-string v0, "CameraThread"

    const-string v2, "checkCanTakeRecorder() - remainingRecordingDuration is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3661
    goto :goto_0

    .line 3663
    :cond_1
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    .line 3665
    sget-object v0, Lcom/htc/camera/io/StorageState;->Full:Lcom/htc/camera/io/StorageState;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/htc/camera/CameraThread;->checkStorageStateInternal(Lcom/htc/camera/io/StorageState;ZJ)V

    .line 3666
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-eq v0, v3, :cond_2

    move v0, v1

    .line 3667
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private checkInternalDataSpace()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3902
    const-string v0, "CameraThread"

    const-string v2, "checkInternalDataSpace()"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3905
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3906
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 3907
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    .line 3908
    mul-long/2addr v2, v4

    .line 3909
    const-string v0, "CameraThread"

    const-string v4, "checkInternalDataSpace() - internal memory : "

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3910
    iget-object v4, p0, Lcom/htc/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/htc/camera/property/Property;

    iget-object v5, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/32 v6, 0x100000

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3917
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 3910
    goto :goto_0

    .line 3912
    :catch_0
    move-exception v0

    .line 3914
    const-string v2, "CameraThread"

    const-string v3, "checkInternalDataSpace() - Error checking internal storage"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3915
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkMediaQueueState()Z
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3378
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    invoke-interface {v0}, Lcom/htc/camera/io/IMediaFileWriter;->getMediaQueueCapacity()J

    move-result-wide v0

    .line 3381
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->getMediaQueueSize()J

    move-result-wide v4

    .line 3383
    const-string v6, "CameraThread"

    const-string v7, "checkImageQueueState() - size = %d/%d (%.2f%%)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v9, 0x2

    long-to-double v10, v4

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    long-to-double v12, v0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    move v0, v2

    .line 3388
    :goto_1
    return v0

    .line 3378
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    move v0, v3

    .line 3388
    goto :goto_1
.end method

.method private checkStorageStateInternal(Lcom/htc/camera/io/StorageState;ZJ)V
    .locals 6

    .prologue
    .line 3820
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal(initState = "

    const-string v3, ", checkSize = "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3823
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/io/StorageSlot;->INVALID:Lcom/htc/camera/io/StorageSlot;

    if-ne v0, v1, :cond_0

    .line 3825
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageStateInternal() - Storage slot is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->INVALID:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', try to find available storage slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3826
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    .line 3827
    if-eqz v0, :cond_4

    sget-object v1, Lcom/htc/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/htc/camera/io/StorageSlot;

    if-eq v0, v1, :cond_4

    .line 3829
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStorageStateInternal() - Use \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3830
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3840
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3842
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageStateInternal() - Storage slot \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported, toggle storage slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3843
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->toggleStorageSlot()V

    .line 3847
    :cond_1
    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->hasStorageTest()Lcom/htc/camera/io/StorageState;

    move-result-object v0

    .line 3850
    :goto_1
    if-eqz p2, :cond_d

    .line 3853
    sget-object v1, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-ne v0, v1, :cond_c

    invoke-direct {p0, p3, p4}, Lcom/htc/camera/CameraThread;->hasEnoughFreeSpace(J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 3854
    sget-object v0, Lcom/htc/camera/io/StorageState;->Full:Lcom/htc/camera/io/StorageState;

    move-object v1, v0

    .line 3857
    :goto_2
    sget-object v0, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-eq v1, v0, :cond_3

    .line 3859
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3863
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->toggleStorageSlot()V

    .line 3864
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->hasStorageTest()Lcom/htc/camera/io/StorageState;

    move-result-object v2

    .line 3867
    sget-object v0, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-ne v2, v0, :cond_a

    invoke-direct {p0, p3, p4}, Lcom/htc/camera/CameraThread;->hasEnoughFreeSpace(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3869
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/htc/camera/io/StorageState;->Full:Lcom/htc/camera/io/StorageState;

    invoke-virtual {v1, v0}, Lcom/htc/camera/io/StorageState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f080376

    move v1, v0

    .line 3873
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v3, Lcom/htc/camera/ak;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 3874
    if-eqz v0, :cond_2

    .line 3875
    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    :cond_2
    move-object v1, v2

    .line 3891
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3894
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;IJ)V

    .line 3895
    return-void

    .line 3832
    :cond_4
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3834
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageStateInternal() - Use \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3838
    :cond_5
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal() - Still no available storage slot"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, p1

    .line 3847
    goto/16 :goto_1

    .line 3869
    :cond_7
    const v0, 0x7f080377

    move v1, v0

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/htc/camera/io/StorageState;->Full:Lcom/htc/camera/io/StorageState;

    invoke-virtual {v1, v0}, Lcom/htc/camera/io/StorageState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f080379

    move v1, v0

    goto :goto_3

    :cond_9
    const v0, 0x7f08037a

    move v1, v0

    goto :goto_3

    .line 3880
    :cond_a
    const-string v0, "CameraThread"

    const-string v2, "checkStorageStateInternal() - Storage error, switch storage slot back"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3882
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->toggleStorageSlot()V

    goto :goto_4

    .line 3886
    :cond_b
    const-string v0, "CameraThread"

    const-string v2, "checkStorageStateInternal() - No storage slot to switch"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move-object v1, v0

    goto/16 :goto_2

    :cond_d
    move-object v1, v0

    goto :goto_4
.end method

.method private clearPreviewCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4857
    const-string v0, "CameraThread"

    const-string v1, "clearPreviewCallback() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4860
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-nez v0, :cond_0

    .line 4862
    const-string v0, "CameraThread"

    const-string v1, "No camera device to clear preview call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4872
    :goto_0
    return-void

    .line 4867
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->setOneShotPreviewCallback(Lcom/htc/camera/l;)V

    .line 4868
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->setPreviewCallbackWithBuffer(Lcom/htc/camera/l;)V

    .line 4869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsPreviewCallbackSet:Z

    .line 4871
    const-string v0, "CameraThread"

    const-string v1, "clearPreviewCallback() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disableVibrationInternal()V
    .locals 0

    .prologue
    .line 5416
    return-void
.end method

.method private enable3DPreview(Lcom/htc/camera/Handle;)V
    .locals 3

    .prologue
    .line 6164
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable3DPreview() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6165
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mEnable3DPreviewHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6166
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mEnable3DPreviewHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6167
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->invalidateCameraParameters()V

    .line 6168
    :cond_0
    return-void
.end method

.method private enableVibrationInternal()V
    .locals 0

    .prologue
    .line 5455
    return-void
.end method

.method private getVideoEncoder(Lcom/htc/camera/Resolution;)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 2931
    sget-object v1, Lcom/htc/camera/Resolution;->Video_QCIF:Lcom/htc/camera/Resolution;

    invoke-virtual {p1, v1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/camera/Resolution;->Video_QCIF_Service:Lcom/htc/camera/Resolution;

    invoke-virtual {p1, v1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2933
    :cond_0
    const-string v1, "H263"

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->getMMSVideoEncoder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2943
    :cond_1
    :goto_0
    return v0

    .line 2935
    :cond_2
    sget-object v1, Lcom/htc/camera/Resolution;->Video_720p:Lcom/htc/camera/Resolution;

    invoke-virtual {p1, v1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/htc/camera/Resolution;->Video_720p_Online:Lcom/htc/camera/Resolution;

    invoke-virtual {p1, v1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2941
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->notSupportH264()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2942
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private hasEnoughFreeSpace(J)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3783
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v2, v3, :cond_2

    .line 3784
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 3792
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3784
    goto :goto_0

    .line 3786
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mRecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    invoke-virtual {v2, p1, p2, v1}, Lcom/htc/camera/IRecordingLimitController;->getRemainingRecordingDuration(JI)Lcom/htc/camera/Duration;

    move-result-object v2

    .line 3787
    if-nez v2, :cond_3

    .line 3788
    const-string v0, "CameraThread"

    const-string v2, "remainingRecordingDuration is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3789
    goto :goto_0

    .line 3792
    :cond_3
    invoke-virtual {v2}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private hasStorageTest()Lcom/htc/camera/io/StorageState;
    .locals 3

    .prologue
    .line 3749
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    .line 3750
    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v1

    .line 3751
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3753
    const-string v0, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3754
    sget-object v0, Lcom/htc/camera/io/StorageState;->ReadOnly:Lcom/htc/camera/io/StorageState;

    .line 3773
    :goto_0
    return-object v0

    .line 3755
    :cond_0
    const-string v0, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3756
    sget-object v0, Lcom/htc/camera/io/StorageState;->Shared:Lcom/htc/camera/io/StorageState;

    goto :goto_0

    .line 3758
    :cond_1
    sget-object v0, Lcom/htc/camera/io/StorageState;->NoStorage:Lcom/htc/camera/io/StorageState;

    goto :goto_0

    .line 3762
    :cond_2
    invoke-static {v0}, Lcom/htc/camera/io/DCFUtility;->isDcimDirectoryWritable(Lcom/htc/camera/io/StorageSlot;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3763
    sget-object v0, Lcom/htc/camera/io/StorageState;->ReadOnly:Lcom/htc/camera/io/StorageState;

    goto :goto_0

    .line 3766
    :cond_3
    sget-object v0, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3768
    :catch_0
    move-exception v0

    .line 3772
    const-string v1, "CameraThread"

    const-string v2, "cannot know storage state"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3773
    sget-object v0, Lcom/htc/camera/io/StorageState;->Unknown:Lcom/htc/camera/io/StorageState;

    goto :goto_0
.end method

.method private initializeStorageSlot()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3223
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3291
    :cond_0
    :goto_0
    return-void

    .line 3227
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getRequestedUri()Landroid/net/Uri;

    move-result-object v1

    .line 3228
    if-eqz v1, :cond_0

    .line 3230
    const-string v0, "CameraThread"

    const-string v2, "initializeStorageSlot() - Requested URI : "

    invoke-static {v0, v2, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3234
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3235
    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3241
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3242
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 3243
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3244
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 3258
    if-eqz v3, :cond_2

    .line 3259
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3260
    :cond_2
    if-eqz v0, :cond_3

    .line 3261
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3
    move-object v0, v1

    .line 3271
    :goto_1
    const-string v1, "CameraThread"

    const-string v2, "initializeStorageSlot() - Requested file path : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3274
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v1

    .line 3275
    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v1, v6

    .line 3277
    :cond_4
    if-nez v1, :cond_5

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    iget-object v3, v3, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3280
    sget-object v1, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    .line 3282
    :cond_5
    if-nez v1, :cond_d

    .line 3284
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeStorageSlot() - Cannot find storage slot for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3247
    :cond_6
    :try_start_3
    const-string v2, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeStorageSlot() - No file path related to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3258
    if-eqz v3, :cond_7

    .line 3259
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3260
    :cond_7
    if-eqz v0, :cond_0

    .line 3261
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 3251
    :catch_0
    move-exception v0

    move-object v2, v6

    .line 3253
    :goto_2
    :try_start_4
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeStorageSlot() - Fail to query file path for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 3258
    if-eqz v2, :cond_8

    .line 3259
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3260
    :cond_8
    if-eqz v6, :cond_0

    .line 3261
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 3258
    :catchall_0
    move-exception v0

    move-object v3, v6

    :goto_3
    if-eqz v3, :cond_9

    .line 3259
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3260
    :cond_9
    if-eqz v6, :cond_a

    .line 3261
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    :cond_a
    throw v0

    .line 3264
    :cond_b
    const-string v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3265
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 3268
    :cond_c
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeStorageSlot() - Unknown URI scheme : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3288
    :cond_d
    const-string v2, "CameraThread"

    const-string v3, "initializeStorageSlot() - Storage slot is \'"

    const-string v4, "\'"

    invoke-static {v2, v3, v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3289
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3290
    new-instance v1, Lcom/htc/camera/io/Path;

    invoke-direct {v1, v0}, Lcom/htc/camera/io/Path;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/camera/CameraThread;->mRequestedFilePath:Lcom/htc/camera/io/Path;

    goto/16 :goto_0

    .line 3258
    :catchall_1
    move-exception v1

    move-object v3, v6

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 3251
    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v6

    move-object v6, v0

    move-object v0, v7

    goto/16 :goto_2

    :catch_2
    move-exception v2

    move-object v6, v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_2
.end method

.method private isMMSRecording()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3359
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 3369
    :goto_0
    return v0

    .line 3362
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 3363
    if-nez v0, :cond_1

    move v0, v1

    .line 3364
    goto :goto_0

    .line 3366
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/CameraStartMode;->MmsVideo:Lcom/htc/camera/CameraStartMode;

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/htc/camera/Resolution;->Video_QCIF:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v2}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3367
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3369
    goto :goto_0
.end method

.method private linkToOptionalServiceComponents()V
    .locals 3

    .prologue
    .line 5513
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5516
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    .line 5517
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_2

    .line 5519
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraThread$31;

    invoke-direct {v1, p0}, Lcom/htc/camera/CameraThread$31;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 5527
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraThread$32;

    invoke-direct {v1, p0}, Lcom/htc/camera/CameraThread$32;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 5540
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/htc/camera/IAutoSceneController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoSceneController;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mAutoSceneController:Lcom/htc/camera/IAutoSceneController;

    .line 5541
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAutoSceneController:Lcom/htc/camera/IAutoSceneController;

    if-nez v0, :cond_0

    .line 5542
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAutoSceneController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5545
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/htc/camera/location/ILocationManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/location/ILocationManager;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mLocationManager:Lcom/htc/camera/location/ILocationManager;

    .line 5546
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mLocationManager:Lcom/htc/camera/location/ILocationManager;

    if-nez v0, :cond_1

    .line 5547
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find ILocationManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5550
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/htc/camera/io/IMediaFileWriter;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/IMediaFileWriter;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    .line 5551
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_3

    .line 5553
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    sget-object v1, Lcom/htc/camera/io/IMediaFileWriter;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/CameraThread$33;

    invoke-direct {v2, p0}, Lcom/htc/camera/CameraThread$33;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/io/IMediaFileWriter;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 5561
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    sget-object v1, Lcom/htc/camera/io/IMediaFileWriter;->EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/CameraThread$34;

    invoke-direct {v2, p0}, Lcom/htc/camera/CameraThread$34;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/io/IMediaFileWriter;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 5572
    :goto_1
    return-void

    .line 5537
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5571
    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IMediaFileWriter interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private linkToRequiredServiceComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5462
    const-string v0, "CameraThread"

    const-string v2, "linkToRequiredServiceComponents()"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5465
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/htc/camera/v;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/v;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraDeviceManager:Lcom/htc/camera/v;

    .line 5466
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraDeviceManager:Lcom/htc/camera/v;

    if-nez v0, :cond_0

    .line 5468
    const-string v0, "CameraThread"

    const-string v2, "linkToRequiredServiceComponents() - No ICameraDeviceManager interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 5505
    :goto_0
    return v0

    .line 5473
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 5474
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_1

    .line 5476
    const-string v0, "CameraThread"

    const-string v2, "linkToRequiredServiceComponents() - No ICaptureResolutionManager interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 5477
    goto :goto_0

    .line 5481
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/htc/camera/IRecordingLimitController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRecordingLimitController;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    .line 5482
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    if-eqz v0, :cond_3

    .line 5484
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    iget-object v0, v0, Lcom/htc/camera/IRecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/CameraThread$30;

    invoke-direct {v1, p0}, Lcom/htc/camera/CameraThread$30;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 5500
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/htc/camera/IAudioManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    .line 5501
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-nez v0, :cond_2

    .line 5502
    const-string v0, "CameraThread"

    const-string v1, "linkToRequiredServiceComponents() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5505
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 5495
    :cond_3
    const-string v0, "CameraThread"

    const-string v2, "linkToRequiredServiceComponents() - No IRecordingLimitController interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 5496
    goto :goto_0
.end method

.method private onAutoFocusCanceled(Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 3

    .prologue
    .line 5967
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5983
    :cond_0
    :goto_0
    return-void

    .line 5970
    :cond_1
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    if-ne v0, v1, :cond_0

    .line 5973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    .line 5976
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    .line 5980
    const-string v0, "CameraThread"

    const-string v1, "onAutoFocusCanceled() - Take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5981
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/CameraThread;->takePictureInternal(Lcom/htc/camera/CaptureHandle;ZZ)V

    goto :goto_0
.end method

.method private onAutoFocusFinished(Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 3

    .prologue
    .line 5991
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6011
    :cond_0
    :goto_0
    return-void

    .line 5995
    :cond_1
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    .line 5998
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    if-ne v0, v1, :cond_0

    .line 6001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    .line 6004
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    .line 6008
    const-string v0, "CameraThread"

    const-string v1, "onAutoFocusFinished() - Take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6009
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/CameraThread;->takePictureInternal(Lcom/htc/camera/CaptureHandle;ZZ)V

    goto :goto_0
.end method

.method private onMediaSaved(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 1

    .prologue
    .line 5099
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/htc/camera/media/MediaInfo;->clone()Lcom/htc/camera/media/MediaInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mLastMediaInfo:Lcom/htc/camera/media/MediaInfo;

    .line 5100
    sget-object v0, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/CameraThread;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 5101
    return-void

    .line 5099
    :cond_0
    new-instance v0, Lcom/htc/camera/media/MediaInfo;

    invoke-direct {v0}, Lcom/htc/camera/media/MediaInfo;-><init>()V

    goto :goto_0
.end method

.method private onOneShotPreviewFrameReceived([B)V
    .locals 4

    .prologue
    .line 4788
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mOneShotPreviewCallbackHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4789
    if-lez v0, :cond_0

    .line 4791
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mOneShotPreviewCallbackHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 4792
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mOneShotPreviewCallbackHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4793
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 4795
    aget-object v0, v2, v1

    check-cast v0, Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;

    .line 4796
    iget-object v3, v0, Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;->callback:Lcom/htc/camera/o;

    invoke-interface {v3, p0, v0, p1}, Lcom/htc/camera/o;->onPreviewFrameReceived(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;[B)V

    .line 4793
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4799
    :cond_0
    return-void
.end method

.method private onPreviewFrameRetrieved([B)V
    .locals 5

    .prologue
    .line 4779
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    .line 4780
    if-nez v0, :cond_0

    .line 4785
    :goto_0
    return-void

    .line 4782
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v1}, Lcom/htc/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4783
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/imaging/RawImageEventArgs;

    sget-object v3, Lcom/htc/camera/imaging/PixelFormat;->Yvu420Sp:Lcom/htc/camera/imaging/PixelFormat;

    iget v4, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-direct {v2, p1, v3, v4, v0}, Lcom/htc/camera/imaging/RawImageEventArgs;-><init>([BLcom/htc/camera/imaging/PixelFormat;II)V

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 4784
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->onOneShotPreviewFrameReceived([B)V

    goto :goto_0
.end method

.method private onRecordingLimitStateChanged(Lcom/htc/camera/RecordingLimitState;)V
    .locals 3

    .prologue
    .line 3539
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingLimitStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3542
    sget-object v0, Lcom/htc/camera/RecordingLimitState;->None:Lcom/htc/camera/RecordingLimitState;

    if-ne p1, v0, :cond_0

    .line 3566
    :goto_0
    return-void

    .line 3544
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3546
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingLimitStateChanged() - Current recording state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3551
    :cond_1
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingLimitState:[I

    invoke-virtual {p1}, Lcom/htc/camera/RecordingLimitState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3565
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/CameraThread;->stopVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;ZZ)V

    goto :goto_0

    .line 3551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private openCameraInternal(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 778
    const-string v1, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-boolean v1, p2, Lcom/htc/camera/CameraType;->isSupported:Z

    if-nez v1, :cond_0

    .line 783
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera() - Camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->cameraOpenFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CameraDeviceEventArgs;

    sget-object v3, Lcom/htc/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/htc/camera/CameraOpenFailedReason;

    invoke-direct {v2, p1, p2, v3}, Lcom/htc/camera/CameraDeviceEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraOpenFailedReason;)V

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 873
    :goto_0
    return v0

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-eqz v1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, p2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraDeviceEventArgs;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-direct {v1, p1, v3}, Lcom/htc/camera/CameraDeviceEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraController;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    move v0, v2

    .line 794
    goto :goto_0

    .line 796
    :cond_1
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera() - Trying to open camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', but camera \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is already open"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->cameraOpenFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CameraDeviceEventArgs;

    sget-object v3, Lcom/htc/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/htc/camera/CameraOpenFailedReason;

    invoke-direct {v2, p1, p2, v3}, Lcom/htc/camera/CameraDeviceEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraOpenFailedReason;)V

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0

    .line 801
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->cameraOpeningEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/CameraDeviceEventArgs;

    invoke-direct {v3, p1, p2}, Lcom/htc/camera/CameraDeviceEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)V

    invoke-virtual {v1, p0, v3}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 804
    const-string v1, "CameraThread.OpenCamera.Start"

    invoke-static {v1}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/CameraThread;->mOpenCameraStartProfTimer:Lcom/htc/camera/Handle;

    .line 805
    new-instance v1, Lcom/htc/camera/Reference;

    invoke-direct {v1}, Lcom/htc/camera/Reference;-><init>()V

    .line 806
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCameraDeviceManager:Lcom/htc/camera/v;

    invoke-virtual {v3, p2, v1}, Lcom/htc/camera/v;->openCamera(Lcom/htc/camera/CameraType;Lcom/htc/camera/Reference;)Lcom/htc/camera/CameraOpenFailedReason;

    move-result-object v3

    .line 807
    const-string v4, "CameraThread.OpenCamera.End"

    invoke-static {v4}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/camera/CameraThread;->mOpenCameraEndProfTimer:Lcom/htc/camera/Handle;

    .line 808
    iget-object v4, p0, Lcom/htc/camera/CameraThread;->mOpenCameraStartProfTimer:Lcom/htc/camera/Handle;

    iget-object v5, p0, Lcom/htc/camera/CameraThread;->mOpenCameraEndProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v4, v5}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 810
    if-eqz v3, :cond_3

    .line 812
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->cameraOpenFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CameraDeviceEventArgs;

    invoke-direct {v2, p1, p2, v3}, Lcom/htc/camera/CameraDeviceEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraOpenFailedReason;)V

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 815
    :cond_3
    iget-object v0, v1, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraController;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    .line 818
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mErrorCallback:Lcom/htc/camera/i;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setErrorCallback(Lcom/htc/camera/i;)V

    .line 821
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 824
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    const-string v1, "taking-picture-zoom"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/htc/camera/CameraController$SettingInfo;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Lcom/htc/camera/CameraController$SettingInfo;->getMin()I

    move-result v1

    .line 826
    invoke-virtual {v0}, Lcom/htc/camera/CameraController$SettingInfo;->getMax()I

    move-result v3

    .line 829
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->zoomRange:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Range;

    .line 830
    new-instance v4, Lcom/htc/camera/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 831
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->zoomRange:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 834
    if-eqz v0, :cond_6

    .line 836
    invoke-virtual {v0, v4}, Lcom/htc/camera/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 838
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v3, v1

    int-to-double v5, v1

    iget-object v1, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    int-to-double v0, v0

    div-double/2addr v5, v0

    .line 839
    iget-object v0, v4, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v4, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    int-to-double v0, v0

    mul-double/2addr v0, v5

    double-to-int v1, v0

    iget-object v0, v4, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 840
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 847
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v3}, Lcom/htc/camera/CameraController;->isPictureCAFSupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 850
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setAntibanding(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_5

    .line 854
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const-string v1, "CAMERA_FORCE_RECORD=true"

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 857
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraDeviceEventArgs;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-direct {v1, p1, v3}, Lcom/htc/camera/CameraDeviceEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraController;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 867
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->setupParamsBeforeStartingPreview(Lcom/htc/camera/Handle;)V

    .line 868
    iput-boolean v2, p0, Lcom/htc/camera/CameraThread;->mIsParamsPrepared:Z

    .line 872
    const-string v0, "CameraThread"

    const-string v1, "openCamera() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 873
    goto/16 :goto_0

    .line 844
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v3, v4, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private final pauseVideoRecordingInternal()V
    .locals 4

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2835
    const/4 v0, 0x0

    .line 2837
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingState;->Pausing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2839
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    if-eqz v1, :cond_0

    .line 2841
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v1, v2, v3}, Lcom/htc/camera/al;->pauseVideoRecording(Lcom/htc/camera/CaptureHandle;Landroid/media/MediaRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2843
    const-string v1, "CameraThread"

    const-string v2, "pauseVideoRecordingInternal() - Video recording process is handled by \'"

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    check-cast v0, Lcom/htc/camera/component/Component;

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2844
    const/4 v0, 0x1

    .line 2847
    :cond_0
    if-nez v0, :cond_1

    .line 2849
    const-string v0, "CameraThread"

    const-string v1, "pauseVideoRecordingInternal() - Use default pause recording process"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-static {v0}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->b(Landroid/media/MediaRecorder;)V

    .line 2853
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 2855
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2861
    :goto_0
    const-string v0, "CameraThread"

    const-string v1, "pauseVideoRecordingInternal()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    :goto_1
    return-void

    .line 2856
    :catch_0
    move-exception v0

    .line 2858
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2859
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseVideoRecordingInternal() - video recording paused fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2864
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "pauseVideoRecordingInternal() - video recording is not in Started state"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private playStopVideoRecordShutter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2045
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070014

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/htc/camera/Handle;

    .line 2047
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1, v2, v2}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 2048
    return-void
.end method

.method private raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V
    .locals 2

    .prologue
    .line 5579
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {v1, p1, p2}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 5580
    return-void
.end method

.method private raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;TTEventArgs;)V"
        }
    .end annotation

    .prologue
    .line 6340
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 6341
    return-void
.end method

.method private registerOneShotPreviewCallback(Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;)V
    .locals 2

    .prologue
    .line 4909
    const-string v0, "CameraThread"

    const-string v1, "registerOneShotPreviewCallback() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4911
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mOneShotPreviewCallbackHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4912
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsPreviewCallbackSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mOneShotPreviewCallbackHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4913
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->setupPreviewCallback()V

    .line 4914
    :cond_0
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2948
    const-string v0, "CameraThread"

    const-string v1, "releaseMediaRecorder()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 2951
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2956
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2961
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2966
    :goto_2
    iput-object v3, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 2970
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_1

    .line 2971
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const-string v1, "CAMCORDER_MODE=OFF"

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 2972
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2975
    :cond_1
    return-void

    .line 2952
    :catch_0
    move-exception v0

    .line 2953
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.setOnInfoListener(null - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2957
    :catch_1
    move-exception v0

    .line 2958
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2962
    :catch_2
    move-exception v0

    .line 2963
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.release() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private resetZoomInternal(Z)V
    .locals 3

    .prologue
    .line 4445
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    if-nez v0, :cond_0

    .line 4475
    :goto_0
    return-void

    .line 4449
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->zoomRange:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Range;

    .line 4450
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 4452
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "resetZoom() - Cannot get zoom range"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4458
    :cond_2
    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4460
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4461
    iget-object v1, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 4462
    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 4470
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-eqz v0, :cond_3

    .line 4471
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setZoom(I)V

    .line 4472
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 4474
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4463
    :cond_4
    iget-object v1, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v2, v1, :cond_6

    .line 4464
    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 4467
    :cond_5
    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method private final resumeVideoRecordingInternal()V
    .locals 4

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2891
    const/4 v0, 0x0

    .line 2893
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2895
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    if-eqz v1, :cond_0

    .line 2897
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v1, v2, v3}, Lcom/htc/camera/al;->resumeVideoRecording(Lcom/htc/camera/CaptureHandle;Landroid/media/MediaRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2899
    const-string v1, "CameraThread"

    const-string v2, "resumeVideoRecordingInternal() - Video recording process is handled by \'"

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    check-cast v0, Lcom/htc/camera/component/Component;

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2900
    const/4 v0, 0x1

    .line 2903
    :cond_0
    if-nez v0, :cond_1

    .line 2905
    const-string v0, "CameraThread"

    const-string v1, "resumeVideoRecordingInternal() - Use default resume recording process"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-static {v0}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->c(Landroid/media/MediaRecorder;)V

    .line 2909
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->start()V

    .line 2911
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2917
    :goto_0
    const-string v0, "CameraThread"

    const-string v1, "resumeVideoRecordingInternal()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    :goto_1
    return-void

    .line 2912
    :catch_0
    move-exception v0

    .line 2914
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2915
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeVideoRecordingInternal() - video recording resume failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2920
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "resumeVideoRecordingInternal() - video recording is not in Paused state"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCaptureRotationInternal(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 3

    .prologue
    .line 5305
    const-string v0, "CameraThread"

    const-string v1, "setCaptureRotationInternal("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5306
    if-nez p1, :cond_0

    .line 5307
    sget-object p1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    .line 5308
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5309
    return-void
.end method

.method private setFirstFrameCacheStateInternal(Z)V
    .locals 4

    .prologue
    .line 5270
    const-string v0, "CameraThread"

    const-string v1, "setFirstFrameCacheStateInternal("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5273
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsFirstFrameCached:Z

    if-ne v0, p1, :cond_1

    .line 5288
    :cond_0
    :goto_0
    return-void

    .line 5277
    :cond_1
    iput-boolean p1, p0, Lcom/htc/camera/CameraThread;->mIsFirstFrameCached:Z

    .line 5279
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5283
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-eqz v0, :cond_0

    .line 5286
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private setFlashModeInternal(Lcom/htc/camera/FlashMode;)V
    .locals 3

    .prologue
    .line 5227
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->flashMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5230
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x2725

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5232
    const-string v0, "CameraThread"

    const-string v1, "setFlashModeInternal() - Other set flash mode message behind, skip"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5247
    :goto_0
    return-void

    .line 5237
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-nez v0, :cond_1

    .line 5239
    const-string v0, "CameraThread"

    const-string v1, "setFlashModeInternal() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5244
    :cond_1
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashModeInternal() - Set flash mode to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5245
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget-object v1, p1, Lcom/htc/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 5246
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private setHWSoundEffect(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 5361
    const-string v0, "CameraThread"

    const-string v1, "setHWSoundEffect("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5363
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_1

    .line 5365
    const-string v0, "active_ap=Camcorder;dolby_srs_eq="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5366
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, p1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 5372
    :goto_0
    return-void

    .line 5368
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active_ap=Camcorder;dolby_srs_eq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 5371
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "setHWSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupParamsBeforeStartingPreview(Lcom/htc/camera/Handle;)V
    .locals 10

    .prologue
    const/16 v9, 0x500

    const/16 v8, 0x2d0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 904
    const-string v0, "CameraThread"

    const-string v1, "setupParamsBeforeStartingPreview - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-nez v0, :cond_0

    .line 909
    const-string v0, "CameraThread"

    const-string v1, "setupParamsBeforeStartingPreview - No camera device"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :goto_0
    return-void

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    .line 916
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    const-string v3, "capture-mode-values"

    invoke-virtual {v1, v3}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 917
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 921
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    const-string v3, "capture-mode"

    const-string v5, "zsl"

    invoke-virtual {v1, v3, v5}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->flashMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/FlashMode;

    iget-object v1, v1, Lcom/htc/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/htc/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 934
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v1, v3, :cond_8

    .line 937
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    const-string v3, "cam-mode"

    invoke-virtual {v1, v3, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 938
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraController;->setRecordingHint(Z)V

    .line 941
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->isVideoStabilizationSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 943
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, v1, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    .line 944
    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v3, :cond_6

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v3}, Lcom/htc/camera/CameraController;->isOisSupported()Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, v1, Lcom/htc/camera/Resolution;->width:I

    sget-object v5, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v5, v5, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    sget-object v6, Lcom/htc/camera/Resolution;->Video_720p:Lcom/htc/camera/Resolution;

    iget v6, v6, Lcom/htc/camera/Resolution;->width:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v3, v5, :cond_6

    .line 947
    :goto_2
    if-eqz v2, :cond_10

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canSelectVideoStabilization()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 949
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v3, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/CameraSettings;

    .line 950
    if-eqz v2, :cond_7

    sget-object v3, Lcom/htc/camera/Resolution;->Video_QVGA:Lcom/htc/camera/Resolution;

    invoke-virtual {v1, v3}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->isMmsVideo()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v2, Lcom/htc/camera/CameraSettings;->isVideoStabilizationEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 953
    :goto_3
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videoStabilization : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v2, v1}, Lcom/htc/camera/CameraController;->setVideoStabilization(Z)V

    .line 988
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, v1, Lcom/htc/camera/ICaptureResolutionManager;->photoPreviewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/imaging/Size;

    .line 989
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/htc/camera/ICaptureResolutionManager;->videoPreviewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/imaging/Size;

    .line 992
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v3, v3, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/camera/Resolution;

    .line 993
    if-eqz v3, :cond_3

    .line 995
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lcom/htc/camera/Resolution;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v3, Lcom/htc/camera/Resolution;->height:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 996
    iget-object v5, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    const-string v6, "video-size"

    invoke-virtual {v5, v6, v3}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCameraParameter(\'video-size\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\')"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :cond_3
    sget-object v5, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/camera/CameraMode;

    invoke-virtual {v3}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 1070
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupParamsBeforeStartingPreview() - Unknown camera mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :goto_5
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    const-string v2, "taking-picture-zoom"

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/htc/camera/CameraController$SettingInfo;

    move-result-object v1

    .line 1076
    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportSameFeaturesForAllCameras()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1077
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setZoom(I)V

    .line 1082
    :goto_6
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraParamsSetupEventArgs;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraParamsSetupEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraController;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1085
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getPreviewSizeParameter()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1086
    new-instance v1, Lcom/htc/camera/imaging/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 1087
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1090
    const-string v0, "CameraThread"

    const-string v1, "setupParamsBeforeStartingPreview - Set parameters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1093
    const-string v0, "CameraThread"

    const-string v1, "setupParamsBeforeStartingPreview - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 924
    :cond_5
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    const-string v3, "capture-mode"

    const-string v5, "normal"

    invoke-virtual {v1, v3, v5}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move v2, v4

    .line 944
    goto/16 :goto_2

    :cond_7
    move v1, v4

    .line 950
    goto/16 :goto_3

    .line 962
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    const-string v2, "cam-mode"

    invoke-virtual {v1, v2, v4}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 964
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1, v4}, Lcom/htc/camera/CameraController;->setRecordingHint(Z)V

    goto/16 :goto_4

    .line 1005
    :pswitch_0
    if-eqz v1, :cond_a

    .line 1008
    const-string v2, "CameraThread"

    const-string v3, "setupParamsBeforeStartingPreview() - Preview size (photo) is "

    iget v4, v1, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " x "

    iget v6, v1, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1009
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget v3, v1, Lcom/htc/camera/imaging/Size;->width:I

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 1012
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, v1, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    .line 1013
    if-eqz v1, :cond_9

    .line 1015
    const-string v2, "CameraThread"

    const-string v3, "setupParamsBeforeStartingPreview() - Photo resolution is "

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1016
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/CameraController;->setPictureSizeParameter(II)V

    goto/16 :goto_5

    .line 1019
    :cond_9
    const-string v1, "CameraThread"

    const-string v2, "setupParamsBeforeStartingPreview() - No photo resolution"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1022
    :cond_a
    const-string v1, "CameraThread"

    const-string v2, "setupParamsBeforeStartingPreview() - No photo preview size"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1027
    :pswitch_1
    if-eqz v2, :cond_e

    .line 1030
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, v1, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->isFullHDVideo()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1031
    const-string v1, "CameraThread"

    const-string v2, "setupParamsBeforeStartingPreview() - Preview size (video) is "

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, " x "

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v2, v3, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1032
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1, v9, v8}, Lcom/htc/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 1038
    :goto_7
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, v1, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    .line 1039
    const-string v2, "CameraThread"

    const-string v3, "setupParamsBeforeStartingPreview() - Videosnapshot, video size: "

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1041
    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v2

    .line 1042
    new-instance v3, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    invoke-direct {v3, v5, v1}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 1044
    sget-object v1, Lcom/htc/camera/AspectRatio;->Unknown:Lcom/htc/camera/AspectRatio;

    .line 1046
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 1048
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_d

    .line 1050
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v6, v1}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v1

    .line 1051
    invoke-virtual {v1, v2}, Lcom/htc/camera/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1052
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Lcom/htc/camera/imaging/Size;->width:I

    if-le v1, v6, :cond_b

    .line 1053
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 1054
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v3, Lcom/htc/camera/imaging/Size;->height:I

    .line 1048
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1034
    :cond_c
    const-string v1, "CameraThread"

    const-string v3, "setupParamsBeforeStartingPreview() - Preview size (video) is "

    iget v5, v2, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, " x "

    iget v7, v2, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v3, v5, v6, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1035
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget v3, v2, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, v2, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v1, v3, v2}, Lcom/htc/camera/CameraController;->setPreviewSizeParameter(II)V

    goto/16 :goto_7

    .line 1060
    :cond_d
    const-string v1, "CameraThread"

    const-string v2, "setupParamsBeforeStartingPreview() - Videosnapshot, expected photo size: "

    iget v4, v3, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " x "

    iget v6, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v2, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1061
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget v2, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/CameraController;->setPictureSizeParameter(II)V

    goto/16 :goto_5

    .line 1066
    :cond_e
    const-string v1, "CameraThread"

    const-string v2, "setupParamsBeforeStartingPreview() - No video preview size"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1079
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1}, Lcom/htc/camera/CameraController$SettingInfo;->getMin()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setZoom(I)V

    goto/16 :goto_6

    :cond_10
    move v1, v2

    goto/16 :goto_3

    .line 1001
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupPreviewCallback()V
    .locals 3

    .prologue
    .line 4806
    const-string v0, "CameraThread"

    const-string v1, "setupPreviewCallback() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4809
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-nez v0, :cond_0

    .line 4811
    const-string v0, "CameraThread"

    const-string v1, "setupPreviewCallback() - No camera device to setup preview call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4850
    :goto_0
    return-void

    .line 4814
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mCanSetPreviewCallback:Z

    if-nez v0, :cond_1

    .line 4816
    const-string v0, "CameraThread"

    const-string v1, "setupPreviewCallback() - Cannot set preview call-back due to current state"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4819
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0}, Lcom/htc/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mOneShotPreviewCallbackHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 4821
    const-string v0, "CameraThread"

    const-string v1, "setupPreviewCallback() - No handlers for receiving preview frame"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4826
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0}, Lcom/htc/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4829
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    .line 4830
    if-nez v0, :cond_3

    .line 4832
    const-string v0, "CameraThread"

    const-string v1, "setupPreviewCallback() - Cannot get preview size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4837
    :cond_3
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    mul-int/lit8 v1, v1, 0xc

    div-int/lit8 v1, v1, 0x8

    .line 4840
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Lcom/htc/camera/CameraController;->addCallbackBuffer([B)V

    .line 4843
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPreviewCallback:Lcom/htc/camera/l;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setPreviewCallbackWithBuffer(Lcom/htc/camera/l;)V

    .line 4844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsPreviewCallbackSet:Z

    .line 4849
    :goto_1
    const-string v0, "CameraThread"

    const-string v1, "setupPreviewCallback() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4847
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mOneShotPreviewCallback:Lcom/htc/camera/l;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setOneShotPreviewCallback(Lcom/htc/camera/l;)V

    goto :goto_1
.end method

.method private startPreviewDirectlyInternal(Lcom/htc/camera/Handle;)Lcom/htc/camera/CameraPreviewStartResult;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1353
    const-string v0, "CameraThread"

    const-string v1, "startPreviewDirectlyInternal() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const-string v0, "CameraThread"

    const-string v1, "startPreviewDirectlyInternal() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1357
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-nez v0, :cond_0

    .line 1359
    const-string v0, "CameraThread"

    const-string v1, "startPreviewDirectlyInternal() - No camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1361
    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    .line 1508
    :goto_0
    return-object v1

    .line 1363
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mCanStartPreview:Z

    if-nez v0, :cond_1

    .line 1365
    const-string v0, "CameraThread"

    const-string v1, "startPreviewDirectlyInternal() - Cannot start preview, CanStartPreview = False"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1367
    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    goto :goto_0

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1371
    const-string v0, "CameraThread"

    const-string v1, "startPreviewDirectlyInternal() - Already previewing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1373
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_2

    .line 1374
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->firstPreviewFrameReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1375
    :cond_2
    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    goto :goto_0

    .line 1379
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/io/StorageState;->Full:Lcom/htc/camera/io/StorageState;

    if-ne v0, v1, :cond_4

    .line 1380
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1383
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    invoke-direct {v1, p1, v10}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1385
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1387
    const-string v0, "CameraThread"

    const-string v1, "startPreviewDirectlyInternal() - Already previewing in previewStarting event"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1389
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_5

    .line 1390
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->firstPreviewFrameReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1391
    :cond_5
    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1398
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1401
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mEnable3DPreviewHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 1403
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewOutputTarget:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1404
    instance-of v1, v0, Lcom/htc/camera/CameraPreviewAdapter;

    if-eqz v1, :cond_f

    .line 1405
    check-cast v0, Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->isReleased()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v7

    .line 1411
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 1413
    const-string v0, "CameraThread.StartPreview.Start"

    invoke-static {v0}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mStartPreviewStartProfTimer:Lcom/htc/camera/Handle;

    .line 1415
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    if-eqz v0, :cond_7

    .line 1416
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getOnCreateProfTimer()Lcom/htc/camera/Handle;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mStartPreviewStartProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 1417
    :cond_7
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsFirstPreviewStartAfterOpeningCamera:Z

    if-eqz v0, :cond_8

    .line 1419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsFirstPreviewStartAfterOpeningCamera:Z

    .line 1420
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mOpenCameraEndProfTimer:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mStartPreviewStartProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 1421
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getOnPreviewSurfaceCreatedProfTimer()Lcom/htc/camera/Handle;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mStartPreviewStartProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 1424
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->isDriverPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHtcDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1426
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "startPreview driver callback"

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/htc/camera/CameraThread;->mStartPreviewCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v8

    .line 1432
    :goto_2
    :try_start_2
    const-string v0, "CameraThread"

    const-string v2, "startPreviewDirectlyInternal() - mCameraDevice.startPreview() - start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->startPreview()V

    .line 1434
    const-string v0, "CameraThread"

    const-string v2, "startPreviewDirectlyInternal() - mCameraDevice.startPreview() - end"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const-string v0, "CameraThread.StartPreview.End"

    invoke-static {v0}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mStartPreviewEndProfTimer:Lcom/htc/camera/Handle;

    .line 1437
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mStartPreviewStartProfTimer:Lcom/htc/camera/Handle;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mStartPreviewEndProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v2}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 1439
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1440
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    .line 1447
    :goto_3
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v2, v1

    move-object v1, v0

    .line 1459
    :goto_4
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    if-eqz v0, :cond_9

    .line 1462
    iput-boolean v8, p0, Lcom/htc/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    .line 1465
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    invoke-virtual {v0, v8}, Lcom/htc/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    .line 1466
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentFactory:Lcom/htc/camera/component/CameraThreadComponentFactory;

    sget-object v3, Lcom/htc/camera/component/ComponentCategory;->Normal:Lcom/htc/camera/component/ComponentCategory;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/htc/camera/component/ComponentCategory;)I

    .line 1467
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    invoke-virtual {v0, v7}, Lcom/htc/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    .line 1470
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->linkToOptionalServiceComponents()V

    .line 1474
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1476
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v4, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v3, p1, v4}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v3}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1477
    if-eqz v2, :cond_a

    .line 1478
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->firstPreviewFrameReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v3, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v2, p1, v3}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1479
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1480
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1481
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1487
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v2, 0x2713

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1489
    iput-boolean v7, p0, Lcom/htc/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 1490
    iget v0, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-gtz v0, :cond_c

    .line 1491
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->setupPreviewCallback()V

    .line 1495
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_d

    .line 1496
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    sget v2, Lcom/htc/camera/CameraThread;->DEFAULT_SHUTTER_SOUND:I

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    .line 1499
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v2, :cond_15

    .line 1501
    const-string v0, "[ANALYTIC_com.htc.camera]"

    const-string v2, "[camera_preview]complete"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    :goto_6
    const-string v0, "CameraThread"

    const-string v2, "startPreviewDirectlyInternal() - end"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move v0, v8

    .line 1405
    goto/16 :goto_1

    :cond_f
    move v0, v7

    .line 1407
    goto/16 :goto_1

    :cond_10
    move v0, v7

    .line 1410
    goto/16 :goto_1

    :cond_11
    move v1, v7

    .line 1430
    goto/16 :goto_2

    .line 1444
    :cond_12
    :try_start_3
    const-string v0, "CameraThread"

    const-string v1, "startPreviewDirectlyInternal() - Preview resource is unavailable"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v8

    goto/16 :goto_3

    .line 1447
    :catchall_0
    move-exception v0

    move v1, v8

    :goto_7
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 1449
    :catch_0
    move-exception v0

    .line 1451
    :goto_8
    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - Start preview failed"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1452
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->UnknownError:Lcom/htc/camera/CameraPreviewStartResult;

    .line 1453
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v2, :cond_13

    .line 1454
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1455
    :cond_13
    iput-object v10, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    move v2, v1

    move-object v1, v0

    goto/16 :goto_4

    .line 1484
    :cond_14
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CameraPreviewEventArgs;

    invoke-direct {v2, p1, v1}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto/16 :goto_5

    .line 1504
    :cond_15
    const-string v0, "[ANALYTIC_com.htc.camera]"

    const-string v2, "[camcorder_preview]complete"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1449
    :catch_1
    move-exception v0

    move v1, v8

    goto :goto_8

    .line 1447
    :catchall_1
    move-exception v0

    goto :goto_7
.end method

.method private startPreviewInternal(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraPreviewStartResult;
    .locals 9

    .prologue
    const/16 v8, 0x3a98

    .line 1121
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1124
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - Preview is already started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1128
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->firstPreviewFrameReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1130
    :cond_0
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    .line 1326
    :goto_0
    return-object v0

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/io/StorageState;->Full:Lcom/htc/camera/io/StorageState;

    if-ne v0, v1, :cond_2

    .line 1135
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1138
    :cond_2
    if-nez p2, :cond_5

    .line 1139
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    move-object p2, v0

    .line 1147
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-nez v0, :cond_6

    .line 1149
    invoke-virtual {p0, p2}, Lcom/htc/camera/CameraThread;->openCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 1150
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1152
    :cond_4
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewInternal mLastCameraOpenFailedReason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mLastCameraOpenFailedReason:Lcom/htc/camera/CameraOpenFailedReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraOpenFailedReason:[I

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mLastCameraOpenFailedReason:Lcom/htc/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1199
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - Cannot open camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1201
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/htc/camera/CameraPreviewStartResult;

    goto :goto_0

    .line 1140
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_3

    .line 1142
    const-string v0, "CameraThread"

    const-string v1, "Start preview with different camera, close previous camera first"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    goto :goto_1

    .line 1157
    :pswitch_0
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - Cannot get camera token"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1159
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/htc/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1163
    :pswitch_1
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - LowPowerRestrict3D"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1165
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/htc/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1169
    :pswitch_2
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - LowPowerDualModeCalling"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1171
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/htc/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1175
    :pswitch_3
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - CameraResourceOccupy"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1177
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/htc/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1181
    :pswitch_4
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - CameraInNoMem"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1183
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/htc/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1187
    :pswitch_5
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - CameraHWOpenFail"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1189
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/htc/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1193
    :pswitch_6
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - CameraPolicyDisabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1195
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/htc/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1210
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-nez v0, :cond_7

    .line 1212
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ui/IViewfinder;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IViewfinder;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    .line 1213
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-nez v0, :cond_7

    .line 1215
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - No IViewfinder interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1217
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    goto/16 :goto_0

    .line 1222
    :cond_7
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsParamsPrepared:Z

    if-nez v0, :cond_8

    .line 1223
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->setupParamsBeforeStartingPreview(Lcom/htc/camera/Handle;)V

    .line 1231
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1234
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1236
    const-string v0, "CameraThread"

    const-string v2, "startPreviewInternal() - Preview resource is unavailable"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v3, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v2, p1, v3}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1238
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    monitor-exit v1

    goto/16 :goto_0

    .line 1301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1226
    :cond_8
    const-string v0, "CameraThread"

    const-string v1, "startPreviewInternal() - No need to setup parameters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsParamsPrepared:Z

    goto :goto_2

    .line 1245
    :cond_9
    :try_start_1
    iget v0, p2, Lcom/htc/camera/CameraType;->orientation:I

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iget v2, v2, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    rsub-int v2, v2, 0x168

    sub-int/2addr v0, v2

    .line 1246
    invoke-virtual {p2}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1247
    add-int/lit16 v0, v0, 0xb4

    .line 1248
    :cond_a
    if-gez v0, :cond_d

    .line 1249
    add-int/lit16 v0, v0, 0x168

    .line 1252
    :goto_3
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CameraController;->setDisplayOrientation(I)V

    .line 1255
    const/4 v0, 0x0

    .line 1256
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mEnable3DPreviewHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    instance-of v2, v2, Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v2, :cond_c

    .line 1258
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1261
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    check-cast v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    sget-object v4, Lcom/htc/camera/ui/IOpenGLViewfinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v4}, Lcom/htc/camera/ui/IOpenGLViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraPreviewAdapter;

    .line 1262
    if-eqz v0, :cond_e

    .line 1269
    :cond_b
    if-nez v0, :cond_c

    .line 1270
    const-string v2, "CameraThread"

    const-string v3, "startPreviewInternal() - Cannot get preview adapter in 100 ms, use SurfaceHolder"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :cond_c
    const-string v2, "CameraThread"

    const-string v3, "startPreviewInternal() - Set preview display"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    if-eqz v0, :cond_f

    .line 1277
    const-string v2, "CameraThread"

    const-string v3, "startPreviewInternal() - Use SurfaceTexture"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CameraController;->setPreviewAdapter(Lcom/htc/camera/CameraPreviewAdapter;)V

    .line 1279
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->previewOutputTarget:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1301
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1304
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->startPreviewDirectlyInternal(Lcom/htc/camera/Handle;)Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v0

    .line 1307
    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    if-ne v0, v1, :cond_13

    .line 1310
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canChangeFrameRate()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->isMMSRecording()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1311
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1, v8, v8}, Lcom/htc/camera/CameraController;->setPreviewFpsRange(II)V

    .line 1315
    :goto_6
    new-instance v1, Lcom/htc/camera/CameraParamsSetupEventArgs;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CameraParamsSetupEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraController;)V

    .line 1316
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1317
    invoke-virtual {v1}, Lcom/htc/camera/CameraParamsSetupEventArgs;->isParameterChanged()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1318
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1325
    :goto_7
    const-string v1, "CameraThread"

    const-string v2, "startPreviewInternal() - End"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1251
    :cond_d
    :try_start_3
    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_3

    .line 1264
    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0x5f5e100

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 1265
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1295
    :catch_0
    move-exception v0

    .line 1297
    :try_start_4
    const-string v2, "CameraThread"

    const-string v3, "startPreviewInternal() - Cannot setup preview parameters"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1298
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v3, Lcom/htc/camera/CameraPreviewStartResult;->UnknownError:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v2, p1, v3}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1299
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->UnknownError:Lcom/htc/camera/CameraPreviewStartResult;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1281
    :cond_f
    :try_start_5
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    instance-of v0, v0, Lcom/htc/camera/ui/ISurfaceHolderViewfinder;

    if-eqz v0, :cond_10

    .line 1283
    const-string v0, "CameraThread"

    const-string v2, "startPreviewInternal() - Use SurfaceHolder"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    check-cast v0, Lcom/htc/camera/ui/ISurfaceHolderViewfinder;

    sget-object v2, Lcom/htc/camera/ui/ISurfaceHolderViewfinder;->PROPERTY_PREVIEW_SURFACE_HOLDER:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/ui/ISurfaceHolderViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 1285
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CameraController;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1286
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->previewOutputTarget:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1290
    :cond_10
    const-string v0, "CameraThread"

    const-string v2, "startPreviewInternal() - No preview target"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v3, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v2, p1, v3}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1292
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1313
    :cond_11
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    const/4 v2, 0x1

    const v3, 0x30d40

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/CameraController;->setPreviewFpsRange(II)V

    goto/16 :goto_6

    .line 1320
    :cond_12
    const-string v1, "CameraThread"

    const-string v2, "startPreviewInternal() - Camera parameters is not changed, no need to set again"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1323
    :cond_13
    const-string v1, "CameraThread"

    const-string v2, "startPreviewInternal() - Cannot start preview, no need to set parameters"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private startVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;Z)V
    .locals 13

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2157
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Handle : \'"

    iget-object v2, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2161
    if-nez p2, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2165
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoRecordingInternal() - Invalid state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    .line 2809
    :goto_0
    return-void

    .line 2172
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2174
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoRecordingInternal() - Invalid state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 2181
    :cond_1
    if-nez p2, :cond_3

    .line 2184
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->checkCanTakeRecorder()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2186
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Storage error"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->StorageError:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 2192
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->checkInternalDataSpace()V

    .line 2193
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2195
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Low internal data space"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->LowInternalDataSpace:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 2222
    :cond_3
    iput-object p1, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 2223
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2224
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 2227
    :cond_4
    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_8

    .line 2230
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_5

    .line 2231
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070015

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/htc/camera/Handle;

    .line 2232
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1, v8, v8}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 2235
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_7

    .line 2237
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x273c

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread$MainHandler;->removeMessages(I)V

    .line 2238
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x273d

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2240
    const-wide/16 v0, 0x12c

    .line 2241
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v3}, Lcom/htc/camera/IAudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2242
    const-wide/16 v3, 0x5dc

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->getCamcorderStartOffset()J

    move-result-wide v0

    sub-long v0, v3, v0

    .line 2245
    :cond_6
    const-string v3, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - delayTime: "

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2246
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/htc/camera/CameraThread$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2250
    :cond_7
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - No camera handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 2258
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->checkOwnAudioResourceProcess()Lcom/htc/camera/IAudioManager$ProcessType;

    move-result-object v0

    .line 2259
    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->None:Lcom/htc/camera/IAudioManager$ProcessType;

    if-eq v0, v1, :cond_9

    .line 2261
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v1}, Lcom/htc/camera/IAudioManager;->forceReleaseAudioResource()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2263
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x277e

    invoke-static {v0, v1, v8, v8, v9}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2279
    :cond_9
    if-nez p2, :cond_a

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_a

    .line 2280
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - mRecorder != null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->releaseMediaRecorder()V

    .line 2283
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_b

    .line 2284
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 2290
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-nez v0, :cond_f

    .line 2291
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Camera is closed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 2266
    :cond_c
    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->Kineto_SmartWifi:Lcom/htc/camera/IAudioManager$ProcessType;

    if-ne v0, v1, :cond_d

    .line 2267
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->WifiCalling:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    .line 2273
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2268
    :cond_d
    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->Other_HightPriority_Process:Lcom/htc/camera/IAudioManager$ProcessType;

    if-ne v0, v1, :cond_e

    .line 2269
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->NoAudioResource:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto :goto_1

    .line 2271
    :cond_e
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto :goto_1

    .line 2299
    :cond_f
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_10

    .line 2300
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const-string v1, "CAMCORDER_MODE=ON"

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 2305
    :cond_10
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->disableVibration()V

    .line 2308
    new-instance v6, Lcom/htc/camera/MediaRecorderParameters;

    invoke-direct {v6}, Lcom/htc/camera/MediaRecorderParameters;-><init>()V

    .line 2310
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setCamera(Landroid/hardware/Camera;)V

    .line 2313
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2316
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2318
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Preview resource is unavailable"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2320
    :try_start_2
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->releaseMediaRecorder()V

    .line 2321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 2322
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2323
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    .line 2324
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 2800
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_11

    .line 2801
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v8}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2803
    :cond_11
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    goto/16 :goto_0

    .line 2342
    :cond_12
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2344
    :try_start_4
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->is3DCamera()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2345
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Mpeg4For3D:Lcom/htc/camera/io/FileFormat;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/htc/camera/io/FileFormat;

    .line 2353
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    .line 2354
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRequestedFilePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_13

    .line 2356
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRequestedFilePath:Lcom/htc/camera/io/Path;

    iget-object v0, v0, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->createDirectories(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2358
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRequestedFilePath:Lcom/htc/camera/io/Path;

    iget-object v0, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/camera/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2359
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/htc/camera/io/FileFormat;

    iget-object v1, v1, Lcom/htc/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2361
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Use requested file path"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRequestedFilePath:Lcom/htc/camera/io/Path;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    .line 2370
    :cond_13
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    if-nez v0, :cond_49

    .line 2372
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-static {v0}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    .line 2373
    new-instance v4, Lcom/htc/camera/Reference;

    invoke-direct {v4}, Lcom/htc/camera/Reference;-><init>()V

    .line 2374
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    .line 2375
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v2, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Settings;

    sget-object v2, Lcom/htc/camera/CameraThread;->VIDEO_DCF_INFO:Lcom/htc/camera/io/DCFInfo;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/htc/camera/io/FileFormat;

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2383
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Cannot find available video file location, please check the storage card"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Camera app finished"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->releaseMediaRecorder()V

    .line 2386
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 2791
    :catch_0
    move-exception v0

    move v7, v8

    .line 2793
    :goto_4
    :try_start_5
    const-string v1, "CameraThread"

    const-string v2, "Fait to start recording"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 2797
    if-eqz v7, :cond_15

    .line 2800
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_14

    .line 2801
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v8}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2803
    :cond_14
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    .line 2808
    :cond_15
    :goto_5
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2342
    :catchall_0
    move-exception v0

    move v1, v8

    :goto_6
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2791
    :catch_1
    move-exception v0

    move v7, v1

    goto :goto_4

    .line 2346
    :cond_16
    :try_start_8
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->isMMSRecording()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2347
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Mpeg4:Lcom/htc/camera/io/FileFormat;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/htc/camera/io/FileFormat;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_2

    .line 2797
    :catchall_1
    move-exception v0

    move v7, v8

    :goto_7
    if-eqz v7, :cond_18

    .line 2800
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v1, :cond_17

    .line 2801
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v1, v8}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2803
    :cond_17
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    :cond_18
    throw v0

    .line 2349
    :cond_19
    :try_start_9
    sget-object v0, Lcom/htc/camera/io/FileFormat;->ThreeGPP:Lcom/htc/camera/io/FileFormat;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/htc/camera/io/FileFormat;

    goto/16 :goto_2

    .line 2365
    :cond_1a
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVideoRecordingInternal() - Format mismatch, requested file name extension is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', but actual format is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/htc/camera/io/FileFormat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2368
    :cond_1b
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoRecordingInternal() - Fail to create directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mRequestedFilePath:Lcom/htc/camera/io/Path;

    iget-object v2, v2, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2389
    :cond_1c
    new-instance v3, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    .line 2390
    new-instance v2, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    .line 2391
    new-instance v0, Lcom/htc/camera/io/DCFPath;

    sget-object v4, Lcom/htc/camera/CameraThread;->VIDEO_DCF_INFO:Lcom/htc/camera/io/DCFInfo;

    invoke-static {v4, v3}, Lcom/htc/camera/io/DCFUtility;->getDirectoryName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/htc/camera/CameraThread;->VIDEO_DCF_INFO:Lcom/htc/camera/io/DCFInfo;

    iget-object v5, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/htc/camera/io/FileFormat;

    invoke-static {v4, v2, v5}, Lcom/htc/camera/io/DCFUtility;->getFileName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/htc/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    move-object v11, v2

    .line 2398
    :goto_8
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoRecordingInternal() - Save video: default directory name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    iget-object v2, v2, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", default file name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    iget-object v2, v2, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/htc/camera/ac;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponents(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 2404
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_48

    .line 2406
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ac;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2408
    :try_start_a
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    invoke-interface {v0, v6, v3}, Lcom/htc/camera/ac;->setupMediaRecorder(Lcom/htc/camera/MediaRecorderParameters;Lcom/htc/camera/io/Path;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2410
    const-string v1, "CameraThread"

    const-string v2, "prepare mediaRecorder parameter, it is handled by \'"

    check-cast v0, Lcom/htc/camera/component/Component;

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move v0, v7

    .line 2426
    :goto_a
    if-nez v0, :cond_30

    .line 2428
    :try_start_b
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Use default prepare mediaRecorder process"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iget v1, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    .line 2431
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    iget v2, v0, Lcom/htc/camera/CameraType;->orientation:I

    .line 2432
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2433
    add-int/2addr v1, v2

    .line 2437
    :goto_b
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->is3DCamera()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2439
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - set rotation landscape while 3D video mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 2443
    :goto_c
    rem-int/lit16 v0, v0, 0x168

    .line 2445
    if-gez v0, :cond_1d

    .line 2446
    add-int/lit16 v0, v0, 0x168

    .line 2448
    :cond_1d
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVideoRecordingInternal() - set rotation, mCaptureRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2452
    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOrientationHint(I)V

    .line 2455
    :cond_1e
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v1, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 2456
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canSelectStereoAudioRecording()Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/htc/camera/CameraSettings;->isStereoRecordingEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_1f
    move v2, v7

    .line 2458
    :goto_d
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canSelectRecordWithAudio()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_RECORD_WITH_AUDIO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_20
    move v1, v7

    .line 2459
    :goto_e
    if-eqz v1, :cond_21

    .line 2462
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2464
    if-eqz v2, :cond_29

    .line 2466
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v3, v0}, Lcom/htc/camera/CameraThread;->setSoundEffect(ZLcom/htc/camera/rotate/UIRotation;)V

    .line 2467
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableSoundEffect()V

    .line 2468
    const-string v0, "CameraThread"

    const-string v3, "startVideoRecording() - Enable stereo recording"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    :goto_f
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSource(I)V

    .line 2486
    :cond_21
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSource(I)V

    .line 2488
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2489
    sget v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$OutputFormat;->MPEG_4_PAUSEABLE:I

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_2b

    .line 2491
    sget v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$OutputFormat;->MPEG_4_PAUSEABLE:I

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOutputFormat(I)V

    .line 2492
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2505
    :goto_10
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOutputFile(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2510
    :try_start_c
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoBitRate:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2511
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Video bit rate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoEncodingBitRate(I)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2522
    :goto_11
    :try_start_d
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    .line 2523
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - Maximum video duration : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->isInfinite()Z

    move-result v3

    if-nez v3, :cond_22

    .line 2525
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setMaxDuration(I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2535
    :cond_22
    :goto_12
    :try_start_e
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2536
    const-string v0, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startVideoRecordingInternal() - Maximum video file size : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    invoke-virtual {v6, v3, v4}, Lcom/htc/camera/MediaRecorderParameters;->setMaxFileSize(J)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2545
    :goto_13
    :try_start_f
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2546
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->getMMSVideoFrameRate()I

    move-result v0

    .line 2552
    :goto_14
    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoFrameRate(I)V

    .line 2553
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - setVideoFrameRate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 2557
    if-nez v0, :cond_2e

    .line 2559
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - No video resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 2561
    :try_start_10
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 2562
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->releaseMediaRecorder()V

    .line 2563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 2564
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2565
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 2800
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_23

    .line 2801
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v8}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2803
    :cond_23
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    goto/16 :goto_0

    .line 2414
    :catch_2
    move-exception v0

    .line 2416
    :try_start_11
    const-string v1, "CameraThread"

    const-string v2, "prepare mediaRecorder parameter fail"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2418
    :try_start_12
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->releaseMediaRecorder()V

    .line 2419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 2420
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2421
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 2800
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_24

    .line 2801
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v8}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2803
    :cond_24
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    goto/16 :goto_0

    .line 2404
    :cond_25
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_9

    .line 2435
    :cond_26
    sub-int v1, v2, v1

    goto/16 :goto_b

    :cond_27
    move v2, v8

    .line 2456
    goto/16 :goto_d

    :cond_28
    move v1, v8

    .line 2458
    goto/16 :goto_e

    .line 2472
    :cond_29
    const/4 v3, 0x0

    :try_start_13
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v3, v0}, Lcom/htc/camera/CameraThread;->setSoundEffect(ZLcom/htc/camera/rotate/UIRotation;)V

    .line 2473
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableSoundEffect()V

    .line 2474
    const-string v0, "CameraThread"

    const-string v3, "startVideoRecording() - Disable stereo recording"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 2479
    :cond_2a
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v3, v0}, Lcom/htc/camera/CameraThread;->setSoundEffect(ZLcom/htc/camera/rotate/UIRotation;)V

    .line 2480
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableSoundEffect()V

    .line 2481
    const-string v0, "CameraThread"

    const-string v3, "startVideoRecording() - Disable stereo recording"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 2496
    :cond_2b
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOutputFormat(I)V

    .line 2497
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 2501
    :cond_2c
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOutputFormat(I)V

    .line 2502
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 2514
    :catch_3
    move-exception v0

    .line 2516
    const-string v3, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Cannot set video bit rate"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 2527
    :catch_4
    move-exception v0

    .line 2529
    const-string v3, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Cannot set maximum video file size"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 2539
    :catch_5
    move-exception v0

    .line 2541
    const-string v3, "CameraThread"

    const-string v4, "startVideoRecordingInternal() - Cannot set maximum video file size"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 2548
    :cond_2d
    const/16 v0, 0x1e

    goto/16 :goto_14

    .line 2569
    :cond_2e
    new-instance v3, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    invoke-virtual {v6, v3}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSize(Lcom/htc/camera/imaging/Size;)V

    .line 2571
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordingInternal() - setVideoSize: width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    invoke-direct {p0, v0}, Lcom/htc/camera/CameraThread;->getVideoEncoder(Lcom/htc/camera/Resolution;)I

    move-result v3

    .line 2576
    const-string v4, "CameraThread"

    const-string v5, "startVideoRecordingInternal() - Video encoder : "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4, v5, v10}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2577
    invoke-virtual {v6, v3}, Lcom/htc/camera/MediaRecorderParameters;->setVideoEncoder(I)V

    .line 2581
    if-eqz v1, :cond_30

    .line 2584
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->IsEqualOrAbove720p()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2585
    const v0, 0x2ee00

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioEncodingBitRate(I)V

    .line 2586
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2587
    const v0, 0xbb80

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSamplingRate(I)V

    .line 2590
    :goto_15
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->setBackgroundDataSetting(Z)V

    .line 2604
    :cond_2f
    :goto_16
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v0

    if-ne v0, v7, :cond_38

    .line 2606
    const-string v0, "CameraThread"

    const-string v1, "AMR_NB"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioEncoder(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 2625
    :cond_30
    :goto_17
    :try_start_14
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->preparingParamsBeforeRecording:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-direct {v1, v2, v3, v6}, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;-><init>(Lcom/htc/camera/Handle;Landroid/media/MediaRecorder;Lcom/htc/camera/MediaRecorderParameters;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 2638
    :try_start_15
    invoke-virtual {v6}, Lcom/htc/camera/MediaRecorderParameters;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 2641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 2642
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->clearPreviewCallback()V

    .line 2643
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->unlock()V

    .line 2645
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - start video recording: unlock camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    :cond_31
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->doSetMediaRecorderParameters(Landroid/media/MediaRecorder;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 2652
    :try_start_16
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 2664
    :try_start_17
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->restart()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 2667
    :try_start_18
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/htc/camera/al;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponents(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 2670
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mInfoListener:Lcom/htc/camera/CameraThread$InfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2671
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mErrorListener:Lcom/htc/camera/CameraThread$ErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2673
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 2676
    :try_start_19
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2678
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Preview resource is unavailable"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 2680
    :try_start_1a
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->releaseMediaRecorder()V

    .line 2681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 2682
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2683
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    .line 2684
    monitor-exit v12
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 2800
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_32

    .line 2801
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v8}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2803
    :cond_32
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    goto/16 :goto_0

    .line 2589
    :cond_33
    const v0, 0xac44

    :try_start_1b
    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSamplingRate(I)V

    goto/16 :goto_15

    .line 2592
    :cond_34
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2594
    sget-object v1, Lcom/htc/camera/Resolution;->Video_QHD:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    sget-object v1, Lcom/htc/camera/Resolution;->Video_WVGA:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2595
    :cond_35
    const v0, 0x17700

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioEncodingBitRate(I)V

    .line 2598
    :goto_18
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2599
    const v0, 0xbb80

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSamplingRate(I)V

    goto/16 :goto_16

    .line 2597
    :cond_36
    const v0, 0xfa00

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioEncodingBitRate(I)V

    goto :goto_18

    .line 2601
    :cond_37
    const v0, 0xac44

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSamplingRate(I)V

    goto/16 :goto_16

    .line 2609
    :cond_38
    const-string v0, "CameraThread"

    const-string v1, "AAC"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    if-eqz v2, :cond_39

    .line 2613
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioChannels(I)V

    .line 2619
    :goto_19
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioEncoder(I)V

    goto/16 :goto_17

    .line 2617
    :cond_39
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioChannels(I)V

    goto :goto_19

    .line 2626
    :catch_6
    move-exception v0

    .line 2628
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVideoRecordingInternal() - recorder prepare failed for preparingParamsBeforeRecording : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 2630
    :try_start_1c
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 2631
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->releaseMediaRecorder()V

    .line 2632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 2633
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2634
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 2800
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_3a

    .line 2801
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v8}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2803
    :cond_3a
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    goto/16 :goto_0

    .line 2653
    :catch_7
    move-exception v0

    .line 2654
    :try_start_1d
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoRecordingInternal() - recorder prepare failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 2656
    :try_start_1e
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 2657
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->releaseMediaRecorder()V

    .line 2658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 2659
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2660
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 2800
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_3b

    .line 2801
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v8}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2803
    :cond_3b
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    goto/16 :goto_0

    .line 2691
    :cond_3c
    :try_start_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1a
    if-ltz v1, :cond_46

    .line 2693
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/al;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    .line 2694
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/camera/CameraThread;->mRecordingStartTime:J

    .line 2695
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v0, p1, v3}, Lcom/htc/camera/al;->startVideoRecording(Lcom/htc/camera/CaptureHandle;Landroid/media/MediaRecorder;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2697
    const-string v1, "CameraThread"

    const-string v2, "startVideoRecordingInternal() - Video recording process is handled by \'"

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    check-cast v0, Lcom/htc/camera/component/Component;

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 2701
    :try_start_20
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    invoke-interface {v0}, Lcom/htc/camera/al;->canPause()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_45

    .line 2702
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    move v10, v7

    .line 2706
    :goto_1b
    if-nez v10, :cond_44

    .line 2708
    :try_start_21
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Use default start recording process"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_41

    .line 2712
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "Start recording"

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/htc/camera/CameraThread;->mMediaRecorderTimeoutCallback:Lcom/htc/camera/debug/b;

    iget-object v5, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v6, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    move-result-object v1

    .line 2717
    :goto_1c
    const/4 v0, 0x0

    :try_start_22
    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    .line 2719
    const-string v0, "CameraThread"

    const-string v2, "startVideoRecordingInternal() - MediaRecorder.start() - Start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/camera/CameraThread;->mRecordingStartTime:J

    .line 2721
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 2722
    const-string v0, "CameraThread"

    const-string v2, "startVideoRecordingInternal() - MediaRecorder.start() - End"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 2725
    :try_start_23
    const-string v2, "CameraThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVideoRecordingInternal() - setHtcParameter CamD:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    iget v0, v0, Lcom/htc/camera/CameraType;->id:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const-string v3, "CamD"

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    iget v0, v0, Lcom/htc/camera/CameraType;->id:I

    invoke-static {v2, v3, v0}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->a(Landroid/media/MediaRecorder;Ljava/lang/String;I)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_9
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 2733
    :goto_1d
    :try_start_24
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_3d

    .line 2734
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 2739
    :cond_3d
    :try_start_25
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_3e

    if-nez v10, :cond_3e

    .line 2740
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 2742
    :cond_3e
    monitor-exit v12
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 2745
    :try_start_26
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsVideoRecordingStarted:Z

    .line 2750
    const-string v0, "[ANALYTIC_com.htc.camera]"

    const-string v1, "[record_video]complete"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 2772
    if-eqz v11, :cond_3f

    .line 2774
    :try_start_27
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v1, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 2775
    if-eqz v0, :cond_3f

    .line 2776
    const-string v1, "counter_video"

    iget v2, v11, Lcom/htc/camera/io/FileCounter;->mainCounter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2780
    :cond_3f
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isRecording:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    .line 2784
    :try_start_28
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Lock semaphore"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_8
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    goto/16 :goto_5

    .line 2786
    :catch_8
    move-exception v0

    .line 2787
    :try_start_29
    const-string v1, "CameraThread"

    const-string v2, "startVideoRecordingInternal() - Fail to lock semaphore"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    goto/16 :goto_5

    .line 2691
    :cond_40
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_1a

    :cond_41
    move-object v1, v9

    .line 2714
    goto/16 :goto_1c

    .line 2727
    :catch_9
    move-exception v0

    .line 2728
    :try_start_2a
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVideoRecordingInternal() - setHtcParameter CamD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    goto/16 :goto_1d

    .line 2739
    :catchall_2
    move-exception v0

    move v2, v10

    :goto_1e
    :try_start_2b
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v3, :cond_42

    if-nez v2, :cond_42

    .line 2740
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    invoke-virtual {v2, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    :cond_42
    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    .line 2742
    :catchall_3
    move-exception v0

    move v1, v8

    :goto_1f
    :try_start_2c
    monitor-exit v12
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    :try_start_2d
    throw v0
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_1
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    .line 2755
    :catch_a
    move-exception v0

    .line 2756
    :goto_20
    :try_start_2e
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVideoRecordingInternal() - recorder start failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v4}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_1
    .catchall {:try_start_2e .. :try_end_2e} :catchall_4

    .line 2759
    :try_start_2f
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->releaseMediaRecorder()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_c
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5

    .line 2761
    :try_start_30
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecordingInternal() - Reconnect camera device"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->reconnect()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_c
    .catchall {:try_start_30 .. :try_end_30} :catchall_5

    .line 2766
    :goto_21
    const/4 v0, 0x0

    :try_start_31
    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 2767
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2768
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_c
    .catchall {:try_start_31 .. :try_end_31} :catchall_5

    .line 2800
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_43

    .line 2801
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v8}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2803
    :cond_43
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    goto/16 :goto_0

    .line 2763
    :catch_b
    move-exception v0

    .line 2764
    :try_start_32
    const-string v1, "CameraThread"

    const-string v2, "startVideoRecordingInternal() - Camera reconnect exception."

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_c
    .catchall {:try_start_32 .. :try_end_32} :catchall_5

    goto :goto_21

    .line 2791
    :catch_c
    move-exception v0

    goto/16 :goto_4

    .line 2797
    :catchall_4
    move-exception v0

    move v7, v1

    goto/16 :goto_7

    :catchall_5
    move-exception v0

    goto/16 :goto_7

    .line 2755
    :catch_d
    move-exception v0

    move v1, v8

    goto :goto_20

    .line 2742
    :catchall_6
    move-exception v0

    move v1, v7

    goto :goto_1f

    :catchall_7
    move-exception v0

    goto :goto_1f

    .line 2739
    :catchall_8
    move-exception v0

    move-object v1, v9

    move v2, v8

    goto :goto_1e

    :catchall_9
    move-exception v0

    move-object v1, v9

    move v2, v7

    goto/16 :goto_1e

    :catchall_a
    move-exception v0

    move-object v1, v9

    move v2, v10

    goto/16 :goto_1e

    .line 2342
    :catchall_b
    move-exception v0

    move v1, v7

    goto/16 :goto_6

    :catchall_c
    move-exception v0

    goto/16 :goto_6

    :cond_44
    move-object v1, v9

    goto/16 :goto_1d

    :cond_45
    move v10, v7

    goto/16 :goto_1b

    :cond_46
    move v10, v8

    goto/16 :goto_1b

    :cond_47
    move v0, v1

    goto/16 :goto_c

    :cond_48
    move v0, v8

    goto/16 :goto_a

    :cond_49
    move-object v11, v9

    goto/16 :goto_8
.end method

.method private stopVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;ZZ)V
    .locals 12

    .prologue
    .line 1753
    if-nez p1, :cond_1

    .line 1755
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecordingInternal() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    :cond_0
    :goto_0
    return-void

    .line 1758
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_3

    .line 1760
    const-string v1, "CameraThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecordingInternal() - Invalid handle, current handle : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "null"

    goto :goto_1

    .line 1765
    :cond_3
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsVideoRecordingStarted:Z

    if-nez v0, :cond_4

    .line 1767
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1769
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecordingInternal() - stop video recording before recording started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x273d

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread$MainHandler;->removeMessages(I)V

    .line 1771
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1780
    :cond_4
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecordingInternal() - Handle : \'"

    iget-object v2, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1783
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsVideoRecordingStarted:Z

    if-eqz v0, :cond_6

    .line 1784
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/CameraThread;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    .line 1785
    const-wide/16 v2, 0x4b0

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    .line 1787
    const-wide/16 v2, 0x4b0

    sub-long v0, v2, v0

    .line 1788
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecordingInternal() - Recording duration is too short, stop recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms later"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v3, 0x273e

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1790
    if-nez p3, :cond_5

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/htc/camera/CameraThread$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1792
    :cond_5
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 1795
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    :cond_6
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1811
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1814
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1816
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v1, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 1817
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canSelectRecordWithAudio()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_RECORD_WITH_AUDIO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_7
    const/4 v0, 0x1

    .line 1818
    :goto_3
    if-eqz v0, :cond_8

    .line 1820
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->disableSoundEffect()V

    .line 1825
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_9

    .line 1826
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecordingInternal() - Cancel taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->cancelTakingPicture()V

    .line 1830
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1831
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 1832
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v2

    .line 1834
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecordingInternal() - CaptureDuration:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/htc/camera/effect/IVideoSceneController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IVideoSceneController;

    .line 1837
    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/htc/camera/effect/IVideoSceneController;->isSlowMotionEnable:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1839
    long-to-float v2, v2

    iget-object v1, v0, Lcom/htc/camera/effect/IVideoSceneController;->slowMotionSpeed:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-long v1, v1

    move-wide v2, v1

    .line 1842
    :cond_b
    const/4 v5, 0x1

    .line 1843
    const/4 v4, 0x0

    .line 1845
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1b

    .line 1849
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    if-eqz v1, :cond_1a

    .line 1851
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    iget-object v6, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v1, p1, v6}, Lcom/htc/camera/al;->stopVideoRecording(Lcom/htc/camera/CaptureHandle;Landroid/media/MediaRecorder;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1853
    const-string v6, "CameraThread"

    const-string v7, "stopVideoRecordingInternal() - Video recording process is handled by \'"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mVideoCaptureHandler:Lcom/htc/camera/al;

    check-cast v1, Lcom/htc/camera/component/Component;

    invoke-virtual {v1}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "\'"

    invoke-static {v6, v7, v1, v8}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1854
    const/4 v4, 0x1

    move v1, v4

    .line 1857
    :goto_4
    if-nez v1, :cond_c

    .line 1859
    :try_start_2
    const-string v4, "CameraThread"

    const-string v6, "stopVideoRecordingInternal() - Use default stop recording process"

    invoke-static {v4, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    iget-object v4, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    :cond_c
    move v4, v5

    .line 1876
    :goto_5
    iget-boolean v5, p0, Lcom/htc/camera/CameraThread;->mIsVideoRecordingStarted:Z

    if-eqz v5, :cond_d

    .line 1879
    :try_start_3
    iget-object v5, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v5}, Lcom/htc/camera/CameraController;->reconnect()V

    .line 1880
    const-string v5, "CameraThread"

    const-string v6, "stop video recording : reconnect camera device"

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1886
    :goto_6
    :try_start_4
    iget-object v5, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v5}, Lcom/htc/camera/CameraController;->stopPreview()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1892
    :cond_d
    :goto_7
    iget-object v5, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 1895
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->releaseMediaRecorder()V

    .line 1898
    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v5, :cond_e

    .line 1900
    iget-object v5, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v6, 0x273c

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1901
    const-wide/16 v6, 0x96

    .line 1902
    const-string v8, "CameraThread"

    const-string v9, "stopVideoRecordingInternal() - delayTime: "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1903
    iget-object v8, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    invoke-virtual {v8, v5, v6, v7}, Lcom/htc/camera/CameraThread$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1907
    :cond_e
    iget-boolean v5, p0, Lcom/htc/camera/CameraThread;->mIsVideoRecordingStarted:Z

    if-eqz v5, :cond_13

    .line 1909
    if-nez v4, :cond_f

    const-wide/16 v5, 0x1388

    cmp-long v5, v2, v5

    if-lez v5, :cond_17

    .line 1911
    :cond_f
    if-nez v4, :cond_10

    .line 1912
    const-string v4, "CameraThread"

    const-string v5, "stopVideoRecordingInternal() - RunTimeException happened, but its duration is more than 5 seconds, keep video"

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    :cond_10
    :try_start_5
    iget-object v4, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v4}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->MEDIA_TYPE_VIDEO:Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;

    invoke-static {v4, v5}, Lcom/htc/camera/imaging/ThumbnailUtility;->a(Ljava/lang/String;Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v4

    .line 1926
    :goto_8
    iget-object v5, p0, Lcom/htc/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/htc/camera/event/Event;

    new-instance v6, Lcom/htc/camera/imaging/ThumbnailEventArgs;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    invoke-direct {v6, v7, v8, v4}, Lcom/htc/camera/imaging/ThumbnailEventArgs;-><init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, p0, v6}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1927
    if-eqz v4, :cond_11

    .line 1929
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1934
    :cond_11
    if-nez v1, :cond_13

    .line 1936
    new-instance v4, Lcom/htc/camera/io/SaveVideoTask;

    invoke-direct {v4, p0}, Lcom/htc/camera/io/SaveVideoTask;-><init>(Lcom/htc/camera/CameraThread;)V

    .line 1937
    iput-object p1, v4, Lcom/htc/camera/io/SaveVideoTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1938
    iput-wide v2, v4, Lcom/htc/camera/io/SaveVideoTask;->duration:J

    .line 1939
    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/htc/camera/effect/IVideoSceneController;->isSlowMotionEnable:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_9
    iput-boolean v0, v4, Lcom/htc/camera/io/SaveVideoTask;->isSlowMotion:Z

    .line 1940
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRequestedFilePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRequestedFilePath:Lcom/htc/camera/io/Path;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v0, v2}, Lcom/htc/camera/io/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1942
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getRequestedUri()Landroid/net/Uri;

    move-result-object v0

    .line 1943
    const-string v2, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1944
    iput-object v0, v4, Lcom/htc/camera/io/SaveVideoTask;->existentContentUri:Landroid/net/Uri;

    .line 1946
    :cond_12
    invoke-virtual {p0, v4}, Lcom/htc/camera/CameraThread;->saveVideo(Lcom/htc/camera/io/SaveVideoTask;)V

    .line 1986
    :cond_13
    :goto_a
    if-nez v1, :cond_0

    .line 1987
    invoke-virtual {p0, p1}, Lcom/htc/camera/CameraThread;->endCaptureVideo(Lcom/htc/camera/CaptureHandle;)V

    goto/16 :goto_0

    .line 1775
    :cond_14
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecordingInternal() - Invalid state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1797
    :catch_0
    move-exception v0

    .line 1799
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecordingInternal() - Error occurs while trying to sleep"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1817
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1862
    :catch_1
    move-exception v1

    move-object v11, v1

    move v1, v4

    move-object v4, v11

    .line 1863
    :goto_b
    const-string v5, "CameraThread"

    const-string v6, "mRecorder.stop() - Runtime exception caught"

    invoke-static {v5, v6, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1864
    const/4 v4, 0x0

    .line 1868
    goto/16 :goto_5

    .line 1865
    :catch_2
    move-exception v1

    move-object v11, v1

    move v1, v4

    move-object v4, v11

    .line 1866
    :goto_c
    const-string v5, "CameraThread"

    const-string v6, "mRecorder.stop() - Throwable caught"

    invoke-static {v5, v6, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1867
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1881
    :catch_3
    move-exception v5

    .line 1882
    const-string v6, "CameraThread"

    const-string v7, "camera reconnect exception."

    invoke-static {v6, v7, v5}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1887
    :catch_4
    move-exception v5

    .line 1888
    const-string v6, "CameraThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stop preview exception."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1921
    :catch_5
    move-exception v4

    move-object v5, v4

    .line 1923
    const/4 v4, 0x0

    .line 1924
    const-string v6, "CameraThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot create video thumbnail for \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v8}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1939
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 1951
    :cond_17
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/htc/camera/ag;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ag;

    .line 1952
    if-eqz v0, :cond_19

    .line 1954
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    .line 1955
    new-instance v3, Lcom/htc/camera/CameraThread$14;

    invoke-direct {v3, p0, v2}, Lcom/htc/camera/CameraThread$14;-><init>(Lcom/htc/camera/CameraThread;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_18

    .line 1975
    const-string v0, "CameraThread"

    const-string v2, "stopVideoRecordingInternal() - Cannot delete failed video file in background thread"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    :cond_18
    :goto_d
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->DurationTooShort:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto/16 :goto_a

    .line 1979
    :cond_19
    const-string v0, "CameraThread"

    const-string v2, "stopVideoRecordingInternal() - No ISharedBackgroundWorker interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1865
    :catch_6
    move-exception v4

    goto/16 :goto_c

    .line 1862
    :catch_7
    move-exception v4

    goto/16 :goto_b

    :cond_1a
    move v1, v4

    goto/16 :goto_4

    :cond_1b
    move v1, v4

    move v4, v5

    goto/16 :goto_5
.end method

.method private takePicture()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 560
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "JPEG call-back"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/CameraThread;->mJpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/htc/camera/Handle;

    .line 569
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsShutterCallbackReceived:Z

    .line 572
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mShutterCallback:Lcom/htc/camera/m;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPostviewCallback:Lcom/htc/camera/k;

    :goto_1
    iget-object v4, p0, Lcom/htc/camera/CameraThread;->mJpegCallback:Lcom/htc/camera/k;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_2
    return-void

    .line 563
    :cond_0
    iput-object v6, p0, Lcom/htc/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    :cond_1
    move-object v0, v6

    .line 574
    goto :goto_1

    .line 584
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mVideoSnapshotShutterCallback:Lcom/htc/camera/m;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mJpegCallback:Lcom/htc/camera/k;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 587
    :catch_0
    move-exception v0

    .line 589
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v1, :cond_3

    .line 591
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 592
    iput-object v6, p0, Lcom/htc/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/htc/camera/Handle;

    .line 594
    :cond_3
    throw v0
.end method

.method private takePictureInternal(Lcom/htc/camera/CaptureHandle;ZZ)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5636
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePictureInternal(checkStorage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFocusLocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5637
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Handle : \'"

    iget-object v2, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5640
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-nez v0, :cond_0

    .line 5642
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Camera is closed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5643
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    .line 5886
    :goto_0
    return-void

    .line 5646
    :cond_0
    if-nez p3, :cond_1

    .line 5648
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5650
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePictureInternal() - Current taking picture state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5651
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 5657
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5659
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePictureInternal() - Current taking picture state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5660
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 5666
    :cond_2
    if-eqz p2, :cond_3

    .line 5668
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Check storage"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5669
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->checkCanTakePicture()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5671
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - No available storage space"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5672
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->StorageError:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto :goto_0

    .line 5678
    :cond_3
    if-nez p3, :cond_4

    .line 5680
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->checkInternalDataSpace()V

    .line 5681
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5683
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Low internal data space"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5684
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->LowInternalDataSpace:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 5690
    :cond_4
    if-nez p3, :cond_5

    .line 5692
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->checkMediaQueueState()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5694
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Image queue is full"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5695
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->ImageQueueIsFull:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 5701
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_6

    .line 5702
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    sget v1, Lcom/htc/camera/CameraThread;->DEFAULT_SHUTTER_SOUND:I

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    .line 5705
    :cond_6
    sget-object v1, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5727
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePictureInternal() - Current recording state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5728
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 5709
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5711
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Camera Mode is still video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5712
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 5718
    :pswitch_1
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportSameFeaturesForAllCameras()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5720
    :cond_7
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Video snapshot is not supported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5721
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    .line 5724
    :cond_8
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Taking picture during video recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5734
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 5736
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Start preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5737
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->startPreviewSilently()Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    if-ne v0, v1, :cond_b

    .line 5739
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v1, v6

    .line 5753
    :goto_1
    iput-boolean v7, p0, Lcom/htc/camera/CameraThread;->mCanStartPreview:Z

    .line 5754
    iput-object p1, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 5755
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5756
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {v2, p1}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v0, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 5759
    :cond_a
    if-nez p3, :cond_e

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 5761
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsFirstFrameCached:Z

    if-nez v0, :cond_e

    if-nez v1, :cond_e

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_e

    .line 5763
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Auto-focusing before taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5764
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    if-eqz v0, :cond_d

    .line 5765
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IAutoFocusController;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 5744
    :cond_b
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Cannot start preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5745
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto/16 :goto_0

    :cond_c
    move v1, v7

    .line 5750
    goto :goto_1

    .line 5767
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0, v1, v8}, Lcom/htc/camera/IAutoFocusController;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 5773
    :cond_e
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5776
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    iget v0, v0, Lcom/htc/camera/CameraType;->id:I

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setJpegQuality(I)V

    .line 5779
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iget v1, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    .line 5780
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->is3DCamera()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5782
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5783
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    iget v0, v0, Lcom/htc/camera/CameraType;->orientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 5792
    :goto_2
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePictureInternal() - Set rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5793
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setRotation(I)V

    .line 5796
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v1, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 5797
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mLocationManager:Lcom/htc/camera/location/ILocationManager;

    if-eqz v1, :cond_16

    .line 5799
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mLocationManager:Lcom/htc/camera/location/ILocationManager;

    iget-object v1, v1, Lcom/htc/camera/location/ILocationManager;->location:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    iput-object v1, p0, Lcom/htc/camera/CameraThread;->mLocation:Landroid/location/Location;

    .line 5800
    if-eqz v0, :cond_15

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v6

    :goto_3
    iput-boolean v1, p0, Lcom/htc/camera/CameraThread;->mIsGeoTaggingEnabled:Z

    .line 5801
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraController;->setLocation(Landroid/location/Location;)V

    .line 5816
    :goto_4
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5817
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->enableReview()V

    .line 5822
    :goto_5
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportSaveMirrorImage()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5823
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isSaveMirrorImageEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v6

    .line 5824
    :goto_6
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    const-string v2, "save_mirror"

    if-eqz v0, :cond_19

    const-string v0, "true"

    :goto_7
    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 5828
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0}, Lcom/htc/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5830
    new-instance v0, Lcom/htc/camera/CameraParamsSetupEventArgs;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-direct {v0, p1, v1}, Lcom/htc/camera/CameraParamsSetupEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraController;)V

    .line 5831
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 5835
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 5838
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5842
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/htc/camera/z;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponents(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 5844
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8
    if-ltz v1, :cond_11

    .line 5846
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/z;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPhotoCaptureHandler:Lcom/htc/camera/z;

    .line 5847
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPhotoCaptureHandler:Lcom/htc/camera/z;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-interface {v0, p1, v3}, Lcom/htc/camera/z;->takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5849
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Taking picture process is handled by \'"

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPhotoCaptureHandler:Lcom/htc/camera/z;

    check-cast v0, Lcom/htc/camera/component/Component;

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v7, v6

    .line 5854
    :cond_11
    if-nez v7, :cond_12

    .line 5856
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Use default taking picture process"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPhotoCaptureHandler:Lcom/htc/camera/z;

    .line 5858
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->takePicture()V

    .line 5862
    :cond_12
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5863
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5885
    :goto_9
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5785
    :cond_13
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    iget v0, v0, Lcom/htc/camera/CameraType;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_2

    .line 5789
    :cond_14
    const-string v0, "CameraThread"

    const-string v1, "takePictureInternal() - Set rotation landscape while 3D photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 5790
    goto/16 :goto_2

    :cond_15
    move v1, v7

    .line 5800
    goto/16 :goto_3

    .line 5805
    :cond_16
    iput-object v8, p0, Lcom/htc/camera/CameraThread;->mLocation:Landroid/location/Location;

    .line 5806
    iput-boolean v7, p0, Lcom/htc/camera/CameraThread;->mIsGeoTaggingEnabled:Z

    .line 5807
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - No ILocationManager interface to get current location"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5819
    :cond_17
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->disableReview()V

    goto/16 :goto_5

    :cond_18
    move v0, v7

    .line 5823
    goto/16 :goto_6

    .line 5824
    :cond_19
    const-string v0, "false"

    goto/16 :goto_7

    .line 5844
    :cond_1a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_8

    .line 5866
    :cond_1b
    :try_start_1
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePictureInternal() - takingPictureState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mPhotoCaptureHandler:Lcom/htc/camera/z;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    .line 5870
    :catch_0
    move-exception v0

    .line 5872
    const-string v1, "CameraThread"

    const-string v2, "takePictureInternal() - Cannot take picture"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5875
    iput-boolean v6, p0, Lcom/htc/camera/CameraThread;->mCanStartPreview:Z

    .line 5876
    iput-object v8, p0, Lcom/htc/camera/CameraThread;->mPhotoCaptureHandler:Lcom/htc/camera/z;

    .line 5877
    iput-object v8, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 5878
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5881
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto :goto_9

    .line 5705
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private final threadAccessCheck()V
    .locals 2

    .prologue
    .line 4678
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4679
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4680
    :cond_0
    return-void
.end method

.method private toggleStorageSlot()V
    .locals 4

    .prologue
    .line 3925
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3927
    const-string v0, "CameraThread"

    const-string v1, "toggleStorageSlot() - Storage slot settings is locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3957
    :goto_0
    return-void

    .line 3930
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3932
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3934
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleStorageSlot() - Change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3935
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3939
    :cond_1
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleStorageSlot() - No storage card slot, change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->INVALID:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3940
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->INVALID:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3945
    :cond_2
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    .line 3946
    if-eqz v0, :cond_3

    .line 3948
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStorageSlot() - Change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3949
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3953
    :cond_3
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleStorageSlot() - No internal memory slot, change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->INVALID:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3954
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->INVALID:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public IsEqualOrAbove720p()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3325
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 3337
    :goto_0
    return v0

    .line 3328
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 3329
    if-nez v0, :cond_1

    move v0, v1

    .line 3330
    goto :goto_0

    .line 3332
    :cond_1
    sget-object v3, Lcom/htc/camera/Resolution;->Video_720p:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/htc/camera/Resolution;->Video_720p_Online:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    .line 3333
    goto :goto_0

    .line 3334
    :cond_3
    sget-object v3, Lcom/htc/camera/Resolution;->Video_1080p:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/htc/camera/Resolution;->Video_1080p_Online:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    .line 3335
    goto :goto_0

    :cond_5
    move v0, v1

    .line 3337
    goto :goto_0
.end method

.method public addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 6263
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    if-nez v0, :cond_0

    .line 6264
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6265
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 6266
    return-void
.end method

.method public addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 6285
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    if-nez v0, :cond_0

    .line 6286
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6287
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 6288
    return-void
.end method

.method public final bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<*>;",
            "Lcom/htc/camera/property/Property",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 5185
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 5188
    if-nez p1, :cond_0

    .line 5190
    const-string v0, "source"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 5191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5193
    :cond_0
    if-nez p2, :cond_1

    .line 5195
    const-string v0, "target"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 5196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5198
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/htc/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5200
    const-string v0, "CameraThread"

    const-string v1, "bindProperty() - Cannot bind from CameraThread\'s property"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5203
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/htc/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5205
    const-string v0, "CameraThread"

    const-string v1, "bindProperty() - Can only bind to CameraThread\'s property"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5210
    :cond_3
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5211
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 5212
    return-void
.end method

.method public calculatePicturesRemaining()J
    .locals 2

    .prologue
    .line 3688
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public calculatePicturesRemaining(J)J
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 3691
    const-string v0, "CameraThread"

    const-string v1, "calculatePicturesRemaining() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3697
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    .line 3698
    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->getFreeSpace()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    sub-long/2addr v6, v8

    sub-long v8, v6, p1

    .line 3702
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v6, Lcom/htc/camera/ad;

    invoke-virtual {v1, v6}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponents(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v6, v2

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/ad;

    .line 3704
    invoke-interface {v1, v0, v8, v9}, Lcom/htc/camera/ad;->estimateRemainingPhotoCount(Lcom/htc/camera/io/StorageSlot;J)J

    move-result-wide v6

    .line 3705
    cmp-long v1, v6, v4

    if-ltz v1, :cond_0

    move-wide v0, v6

    .line 3710
    :goto_0
    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 3712
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 3714
    if-eqz v0, :cond_2

    .line 3715
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mJPEGQuality:Lcom/htc/camera/PictureQuality;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Resolution;->getEncodedPictureSize(Lcom/htc/camera/PictureQuality;)J

    move-result-wide v6

    .line 3721
    :goto_1
    cmp-long v1, v2, v6

    if-nez v1, :cond_3

    .line 3722
    const-string v1, "CameraThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getResolutionSize fail: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, p0, Lcom/htc/camera/CameraThread;->mJPEGQuality:Lcom/htc/camera/PictureQuality;

    iget-object v10, v10, Lcom/htc/camera/PictureQuality;->key:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3724
    const-wide/32 v0, 0x61a80

    .line 3726
    :goto_2
    div-long v0, v8, v0

    .line 3727
    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    .line 3731
    :cond_1
    const-string v4, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return freeshot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3739
    :goto_3
    const-string v2, "CameraThread"

    const-string v3, "calculatePicturesRemaining() - end"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3740
    return-wide v0

    .line 3718
    :cond_2
    :try_start_1
    const-string v1, "CameraThread"

    const-string v6, "calculatePicturesRemaining() - No photo resolution"

    invoke-static {v1, v6}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v6, v2

    .line 3719
    goto :goto_1

    .line 3733
    :catch_0
    move-exception v0

    .line 3734
    const-string v1, "CameraThread"

    const-string v4, "catch - calculatePicturesRemaining with exception: "

    invoke-static {v1, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3735
    const-string v0, "CameraThread"

    const-string v1, "return freeshot = -1"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    .line 3736
    goto :goto_3

    :cond_3
    move-wide v0, v6

    goto :goto_2

    :cond_4
    move-wide v0, v6

    goto/16 :goto_0
.end method

.method public final cancelOpeningCamera()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 882
    return-void
.end method

.method public final cancelStartingPreview()V
    .locals 2

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 1566
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x2712

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 1567
    return-void
.end method

.method public cancelTakingPicture()V
    .locals 2

    .prologue
    .line 5892
    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPicture() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5895
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5897
    new-instance v0, Lcom/htc/camera/CameraThread$36;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$36;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5910
    :goto_0
    const-string v0, "CameraThread"

    const-string v1, "cancelTakingPicture() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5911
    return-void

    .line 5907
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->cancelTakingPictureInternal()V

    goto :goto_0
.end method

.method public changeMode(Lcom/htc/camera/CameraMode;)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 5108
    const-string v0, "CameraThread"

    const-string v1, "changeMode("

    const-string v2, ") - start"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5111
    new-instance v0, Lcom/htc/camera/CameraThread$ModeChangeHandle;

    invoke-direct {v0, p1}, Lcom/htc/camera/CameraThread$ModeChangeHandle;-><init>(Lcom/htc/camera/CameraMode;)V

    .line 5112
    const-string v1, "CameraThread"

    const-string v2, "changeMode() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 5117
    new-instance v1, Lcom/htc/camera/CameraThread$26;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/CameraThread$26;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$ModeChangeHandle;)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5127
    :goto_0
    return-object v0

    .line 5126
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/camera/CameraThread;->changeModeInternal(Lcom/htc/camera/CameraThread$ModeChangeHandle;)V

    goto :goto_0
.end method

.method public changeStorageSlot(Lcom/htc/camera/io/StorageSlot;)V
    .locals 2

    .prologue
    .line 4957
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 4959
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_0

    .line 4961
    new-instance v0, Lcom/htc/camera/CameraThread$25;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/CameraThread$25;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/io/StorageSlot;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4974
    :goto_0
    return-void

    .line 4970
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlot() - no camera handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4973
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->changeStorageSlotInternal(Lcom/htc/camera/io/StorageSlot;)V

    goto :goto_0
.end method

.method public final changeZoom(I)V
    .locals 4

    .prologue
    .line 4482
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 4484
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeZoom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4487
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4488
    if-ne v0, p1, :cond_0

    .line 4570
    :goto_0
    return-void

    .line 4490
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-nez v0, :cond_1

    .line 4492
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4551
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraController;->setZoom(I)V

    .line 4552
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 4556
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4558
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeZoom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - end sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4560
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_3

    .line 4562
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeZoom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start async"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4564
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x2756

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 4566
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeZoom("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - end async"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4569
    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "Cannot change zoom because there is no handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final checkStorageState()V
    .locals 1

    .prologue
    .line 3801
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->checkStorageState(Z)V

    .line 3802
    return-void
.end method

.method public final checkStorageState(Z)V
    .locals 3

    .prologue
    .line 3805
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3807
    new-instance v0, Lcom/htc/camera/CameraThread$19;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/CameraThread$19;-><init>(Lcom/htc/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 3817
    :goto_0
    return-void

    .line 3816
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/htc/camera/CameraThread;->checkStorageStateInternal(Lcom/htc/camera/io/StorageState;ZJ)V

    goto :goto_0
.end method

.method public final closeCamera()V
    .locals 6

    .prologue
    const/16 v2, 0x273d

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3965
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3967
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Close camera asynchronuously"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x2713

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->c(Landroid/os/Handler;I)V

    .line 4097
    :goto_0
    return-void

    .line 3972
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3975
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3977
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Cancel video recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 3979
    iput-object v4, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 3980
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraThread$MainHandler;->removeMessages(I)V

    .line 3981
    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    .line 3982
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3986
    :cond_1
    monitor-enter p0

    .line 3988
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v0, :cond_2

    .line 3990
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Camera close is still pending, close camera later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3991
    monitor-exit p0

    goto :goto_0

    .line 4012
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3993
    :cond_2
    :try_start_1
    sget-object v1, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 4012
    :goto_1
    :pswitch_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4015
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_3

    .line 4016
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v0, v5, v3}, Lcom/htc/camera/CameraThread;->stopVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;ZZ)V

    .line 4019
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->stopPreview()V

    .line 4022
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->resetJpegData()V

    .line 4025
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-eqz v0, :cond_5

    .line 4026
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->releaseMediaRecorder()V

    .line 4029
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4030
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4032
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_4

    .line 4033
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const-string v1, "CAMERA_FORCE_RECORD=false"

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 4036
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraClosingEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 4038
    const-string v0, "CameraThread"

    const-string v1, "before release"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4040
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraDeviceManager:Lcom/htc/camera/v;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/v;->closeCamera(Lcom/htc/camera/CameraController;)V

    .line 4077
    const-string v0, "CameraThread"

    const-string v1, "after release"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4078
    iput-object v4, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    .line 4085
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraClosedEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 4087
    const-string v0, "CameraThread"

    const-string v1, "Release Camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4092
    :goto_2
    iput-boolean v3, p0, Lcom/htc/camera/CameraThread;->mIsFirstPreviewStartAfterOpeningCamera:Z

    .line 4093
    iput-boolean v5, p0, Lcom/htc/camera/CameraThread;->mIsParamsPrepared:Z

    .line 4094
    iput-boolean v3, p0, Lcom/htc/camera/CameraThread;->mCanStartPreview:Z

    .line 4096
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4000
    :pswitch_1
    :try_start_2
    const-string v0, "CameraThread"

    const-string v1, "closeCamera() - Cancel taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4001
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 4002
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/camera/CameraThread;->mCanStartPreview:Z

    .line 4003
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 4004
    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/CameraThread;->raiseCaptureFailedEvent(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 4089
    :cond_5
    const-string v0, "CameraThread"

    const-string v1, "mCameraDevice == null in close_camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3993
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final createPostViewImage([B)V
    .locals 0

    .prologue
    .line 4745
    return-void
.end method

.method public final deleteLatestMedia()V
    .locals 6

    .prologue
    .line 4577
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 4579
    const-string v0, "CameraThread"

    const-string v1, "deleteLatestMedia() - start sync"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4582
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->deletingLatestMediaEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 4585
    new-instance v0, Lcom/htc/camera/event/SingleHandlerEventArgs;

    invoke-direct {v0}, Lcom/htc/camera/event/SingleHandlerEventArgs;-><init>()V

    .line 4586
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 4589
    invoke-virtual {v0}, Lcom/htc/camera/event/SingleHandlerEventArgs;->isHandled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4591
    const-string v0, "CameraThread"

    const-string v1, "deleteLatestMedia() - Use default method to delete latest media"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4593
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    .line 4594
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mLastMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v4, v0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 4595
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mLastMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v5, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 4597
    if-nez v4, :cond_0

    .line 4599
    const-string v0, "CameraThread"

    const-string v1, "deleteLatestMedia() - No latest content URI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4671
    :goto_0
    return-void

    .line 4602
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRequestedFilePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getRequestedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4604
    const-string v0, "CameraThread"

    const-string v1, "deleteLatestMedia() - Latest content URI is requested from other AP, ingore deletion"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4608
    :cond_1
    new-instance v0, Lcom/htc/camera/CameraThread$20;

    const-string v2, "Default media deletion thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/CameraThread$20;-><init>(Lcom/htc/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Lcom/htc/camera/io/Path;)V

    .line 4638
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4640
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v1, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 4641
    if-eqz v0, :cond_2

    .line 4643
    sget-object v2, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4655
    :cond_2
    :goto_1
    const-string v0, "CameraThread"

    const-string v1, "deleteLatestMedia() - end sync"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4646
    :pswitch_0
    sget-object v1, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    invoke-static {v0, v1}, Lcom/htc/camera/io/DCFUtility;->restoreFileCounter(Lcom/htc/camera/Settings;Lcom/htc/camera/io/DCFInfo;)V

    goto :goto_1

    .line 4649
    :pswitch_1
    sget-object v1, Lcom/htc/camera/CameraThread;->VIDEO_DCF_INFO:Lcom/htc/camera/io/DCFInfo;

    invoke-static {v0, v1}, Lcom/htc/camera/io/DCFUtility;->restoreFileCounter(Lcom/htc/camera/Settings;Lcom/htc/camera/io/DCFInfo;)V

    goto :goto_1

    .line 4657
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_4

    .line 4659
    const-string v0, "CameraThread"

    const-string v1, "deleteLatestMedia() - start async"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4660
    new-instance v0, Lcom/htc/camera/CameraThread$21;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$21;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4667
    const-string v0, "CameraThread"

    const-string v1, "deleteLatestMedia() - end async"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4670
    :cond_4
    const-string v0, "CameraThread"

    const-string v1, "Cannot delete media because there is no handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final disable3DPreview(Lcom/htc/camera/Handle;)V
    .locals 3

    .prologue
    .line 6176
    if-nez p1, :cond_1

    .line 6178
    const-string v0, "CameraThread"

    const-string v1, "disable3DPreview() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6206
    :cond_0
    :goto_0
    return-void

    .line 6183
    :cond_1
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable3DPreview() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 6186
    const-string v0, "CameraThread"

    const-string v1, "disable3DPreview() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6187
    new-instance v0, Lcom/htc/camera/CameraThread$39;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/CameraThread$39;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6196
    const-string v0, "CameraThread"

    const-string v1, "disable3DPreview() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6202
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mEnable3DPreviewHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6203
    const-string v0, "CameraThread"

    const-string v1, "disable3DPreview() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6204
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mEnable3DPreviewHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6205
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->invalidateCameraParameters()V

    goto :goto_0
.end method

.method public final disablePreCaptureAutoFocus()Lcom/htc/camera/Handle;
    .locals 5

    .prologue
    .line 6018
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 6019
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "DisablePreCaptureAF"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 6020
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6021
    const-string v1, "CameraThread"

    const-string v2, "disablePreCaptureAutoFocus() - Handle : "

    const-string v3, ", handle count : "

    iget-object v4, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6022
    return-object v0
.end method

.method public final disableSoundEffect()V
    .locals 2

    .prologue
    .line 5325
    const-string v0, "CameraThread"

    const-string v1, "disableSoundEffect()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5326
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 5327
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 5328
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const-string v1, "active_ap=Camcorder;sound_effect_enable=off"

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 5331
    :goto_0
    return-void

    .line 5330
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "disableSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disableVibration()V
    .locals 1

    .prologue
    .line 5380
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5382
    new-instance v0, Lcom/htc/camera/CameraThread$28;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$28;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5393
    :goto_0
    return-void

    .line 5392
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->disableVibrationInternal()V

    goto :goto_0
.end method

.method public final enable3DPreview()Lcom/htc/camera/Handle;
    .locals 4

    .prologue
    .line 6140
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "3DPreview"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 6141
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable3DPreview() - Create handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 6144
    const-string v1, "CameraThread"

    const-string v2, "enable3DPreview() - Called from another thread"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6145
    new-instance v1, Lcom/htc/camera/CameraThread$38;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/CameraThread$38;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6154
    const-string v0, "CameraThread"

    const-string v1, "enable3DPreview() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6155
    const/4 v0, 0x0

    .line 6160
    :cond_0
    :goto_0
    return-object v0

    .line 6159
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/camera/CameraThread;->enable3DPreview(Lcom/htc/camera/Handle;)V

    goto :goto_0
.end method

.method public final enablePreCaptureAutoFocus(Lcom/htc/camera/Handle;)V
    .locals 4

    .prologue
    .line 6031
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 6034
    if-nez p1, :cond_0

    .line 6036
    const-string v0, "CameraThread"

    const-string v1, "enablePreCaptureAutoFocus() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6045
    :goto_0
    return-void

    .line 6041
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6042
    const-string v0, "CameraThread"

    const-string v1, "enablePreCaptureAutoFocus() - Handle : "

    const-string v2, ", handle count : "

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 6044
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "enablePreCaptureAutoFocus() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final enableSoundEffect()V
    .locals 2

    .prologue
    .line 5316
    const-string v0, "CameraThread"

    const-string v1, "enableSoundEffect()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5317
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 5318
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 5319
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const-string v1, "active_ap=Camcorder;sound_effect_enable=on"

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 5322
    :goto_0
    return-void

    .line 5321
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "enableSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableVibration()V
    .locals 1

    .prologue
    .line 5424
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5426
    new-instance v0, Lcom/htc/camera/CameraThread$29;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$29;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5437
    :goto_0
    return-void

    .line 5436
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->enableVibrationInternal()V

    goto :goto_0
.end method

.method public final endCaptureVideo(Lcom/htc/camera/CaptureHandle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2051
    const-string v0, "CameraThread"

    const-string v3, "endCaptureVideo() - start"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    if-nez p1, :cond_0

    .line 2056
    const-string v0, "CameraThread"

    const-string v1, "endCaptureVideo() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    :goto_0
    return-void

    .line 2061
    :cond_0
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v4, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    sget-object v5, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v5}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    :goto_1
    invoke-virtual {v3, v4, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2062
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureStoppedEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {v3, p1}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v0, p0, v3}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 2063
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isRecording:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2066
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsVideoRecordingStarted:Z

    if-eqz v0, :cond_1

    .line 2068
    const-string v0, "CameraThread"

    const-string v3, "endCaptureVideo() - Unlock semaphore"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2073
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    .line 2076
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v4, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsVideoRecordingStarted:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2077
    iput-boolean v2, p0, Lcom/htc/camera/CameraThread;->mIsVideoRecordingStarted:Z

    .line 2082
    monitor-enter p0

    .line 2084
    :try_start_0
    sget-object v3, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    move v1, v2

    .line 2101
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2102
    if-eqz v1, :cond_7

    .line 2103
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->exit()V

    .line 2107
    :cond_3
    :goto_4
    const-string v0, "CameraThread"

    const-string v1, "endCaptureVideo() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2061
    :cond_4
    sget-object v0, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    goto :goto_1

    :cond_5
    move v0, v2

    .line 2076
    goto :goto_2

    .line 2088
    :pswitch_0
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingExit:Z

    if-eqz v0, :cond_6

    .line 2091
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingExit:Z

    .line 2092
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingCloseCamera:Z

    goto :goto_3

    .line 2101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2094
    :cond_6
    :try_start_2
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v0, :cond_2

    .line 2097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingCloseCamera:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v1

    move v1, v2

    move v2, v6

    goto :goto_3

    .line 2104
    :cond_7
    if-eqz v2, :cond_3

    .line 2105
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    goto :goto_4

    .line 2084
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final endTakePicture(Lcom/htc/camera/CaptureHandle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4273
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4276
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 4279
    if-nez p1, :cond_0

    .line 4281
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    :goto_0
    return-void

    .line 4284
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - Handle : \'"

    iget-object v2, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    const-string v5, "]"

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4285
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq p1, v0, :cond_1

    .line 4287
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endTakePicture() - Invalid handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4292
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4295
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endTakePicture() - Current taking picture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4300
    :cond_2
    iput-boolean v7, p0, Lcom/htc/camera/CameraThread;->mCanStartPreview:Z

    .line 4301
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4303
    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - Take picture during recording, restore IsPreviewing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4304
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4329
    :cond_4
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsCaptureCanceledEventNeeded:Z

    if-eqz v0, :cond_5

    .line 4331
    iput-boolean v6, p0, Lcom/htc/camera/CameraThread;->mIsCaptureCanceledEventNeeded:Z

    .line 4332
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 4336
    :cond_5
    iput-object v8, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 4337
    iput-object v8, p0, Lcom/htc/camera/CameraThread;->mPhotoCaptureHandler:Lcom/htc/camera/z;

    .line 4338
    iput-object v8, p0, Lcom/htc/camera/CameraThread;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    .line 4339
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4340
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureStoppedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 4345
    monitor-enter p0

    .line 4347
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingExit:Z

    if-eqz v0, :cond_8

    .line 4350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingCloseCamera:Z

    .line 4351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingExit:Z

    move v0, v6

    move v6, v7

    .line 4358
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4359
    if-eqz v6, :cond_9

    .line 4360
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->exit()V

    .line 4365
    :cond_6
    :goto_2
    if-nez v6, :cond_7

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPendingModeChangeHandle:Lcom/htc/camera/CameraThread$ModeChangeHandle;

    if-eqz v0, :cond_7

    .line 4366
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPendingModeChangeHandle:Lcom/htc/camera/CameraThread$ModeChangeHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/CameraThread;->changeModeInternal(Lcom/htc/camera/CameraThread$ModeChangeHandle;)V

    .line 4368
    :cond_7
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4353
    :cond_8
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v0, :cond_a

    .line 4356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingCloseCamera:Z

    move v0, v7

    goto :goto_1

    .line 4358
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4361
    :cond_9
    if-eqz v0, :cond_6

    .line 4362
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    goto :goto_2

    :cond_a
    move v0, v6

    goto :goto_1
.end method

.method public final exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4116
    const-string v0, "CameraThread"

    const-string v1, "exit() - Exit camera thread asynchronously"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x2718

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->c(Landroid/os/Handler;I)V

    .line 4171
    :goto_0
    return-void

    .line 4121
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "exit() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4124
    monitor-enter p0

    .line 4127
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingExit:Z

    if-eqz v0, :cond_1

    .line 4129
    const-string v0, "CameraThread"

    const-string v1, "exit() - Thread exit is still pending, exit later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4130
    monitor-exit p0

    goto :goto_0

    .line 4141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4134
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    .line 4135
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingCloseCamera:Z

    if-eqz v0, :cond_2

    .line 4137
    const-string v0, "CameraThread"

    const-string v1, "exit() - Cannot close camera, exit later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingExit:Z

    .line 4139
    monitor-exit p0

    goto :goto_0

    .line 4141
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4144
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->exitingEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 4147
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraThreadComponentManager;->removeComponents()V

    .line 4148
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraThreadComponentManager;->release()V

    .line 4151
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 4154
    invoke-static {p0}, Lcom/htc/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 4157
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getThreadMonitor()Lcom/htc/camera/debug/ThreadMonitor;

    move-result-object v0

    .line 4158
    if-eqz v0, :cond_3

    .line 4159
    invoke-virtual {v0}, Lcom/htc/camera/debug/ThreadMonitor;->stopMonitorCurrentThread()V

    .line 4162
    :cond_3
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    .line 4163
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    .line 4164
    iput-object v2, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    .line 4167
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 4168
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread$MainHandler;->release()V

    .line 4170
    const-string v0, "CameraThread"

    const-string v1, "exit() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getCameraActivity()Lcom/htc/camera/HTCCamera;
    .locals 1

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    return-object v0
.end method

.method public getCameraController()Lcom/htc/camera/CameraController;
    .locals 1

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    return-object v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 4235
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentFactory()Lcom/htc/camera/component/CameraThreadComponentFactory;
    .locals 1

    .prologue
    .line 4219
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentFactory:Lcom/htc/camera/component/CameraThreadComponentFactory;

    return-object v0
.end method

.method public bridge synthetic getComponentFactory()Lcom/htc/camera/component/ComponentFactory;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->getComponentFactory()Lcom/htc/camera/component/CameraThreadComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;
    .locals 1

    .prologue
    .line 4227
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    return-object v0
.end method

.method public bridge synthetic getComponentManager()Lcom/htc/camera/component/ComponentManager;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public getJpegData()[B
    .locals 1

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mJpegData:[B

    return-object v0
.end method

.method public final getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 3321
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mLastMediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getLastMediaInfo()Lcom/htc/camera/media/MediaInfo;
    .locals 1

    .prologue
    .line 4687
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mLastMediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/htc/camera/media/MediaInfo;->clone()Lcom/htc/camera/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaQueueSize()J
    .locals 2

    .prologue
    .line 5046
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    invoke-interface {v0}, Lcom/htc/camera/io/IMediaFileWriter;->getMediaQueueSize()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 5038
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method public final getPendingFileSize()J
    .locals 2

    .prologue
    .line 5054
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->getMediaQueueSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 6296
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    if-nez v0, :cond_1

    .line 6298
    if-nez p1, :cond_0

    .line 6299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No prroperty key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6300
    :cond_0
    iget-object v0, p1, Lcom/htc/camera/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    .line 6302
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1}, Lcom/htc/camera/base/BaseObjectProxy;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getStartPreviewEndProfTimer()Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 6221
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mStartPreviewEndProfTimer:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method public final getStartProfTimer()Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 6229
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mStartProfTimer:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method public final handleCommonCallbackTimeout(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 6053
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 6055
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCommonCallbackTimeout() - Call-back \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6058
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->getDriverCallbackTimeoutHandlingPolicy()Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6132
    :cond_0
    :goto_0
    return-void

    .line 6062
    :pswitch_0
    const-string v0, "CameraThread"

    const-string v1, "handleCommonCallbackTimeout() - Ignore"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6068
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-eqz v0, :cond_0

    .line 6071
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6073
    const-string v0, "CameraThread"

    const-string v1, "handleCommonCallbackTimeout() - Cancel taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6074
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 6075
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6076
    if-eqz v0, :cond_2

    .line 6078
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/camera/CameraThread;->mCanStartPreview:Z

    .line 6079
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 6080
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CaptureEventArgs;

    sget-object v3, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v2, v0, v3}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 6087
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    new-instance v1, Lcom/htc/camera/CameraThread$37;

    invoke-direct {v1, p0}, Lcom/htc/camera/CameraThread$37;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 6106
    monitor-enter p0

    .line 6108
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mPendingExit:Z

    .line 6109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/camera/CameraThread;->mPendingExit:Z

    .line 6110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/camera/CameraThread;->mPendingCloseCamera:Z

    .line 6111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6112
    if-eqz v0, :cond_3

    .line 6114
    const-string v0, "CameraThread"

    const-string v1, "handleCommonCallbackTimeout() - Exit camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6115
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->exit()V

    goto :goto_0

    .line 6083
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "handleCommonCallbackTimeout() - No photo capture handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6119
    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "handleCommonCallbackTimeout() - Close camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6120
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    goto :goto_0

    .line 6128
    :pswitch_2
    const-string v0, "CameraThread"

    const-string v1, "handleCommonCallbackTimeout() - Throw exception to stop camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6129
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call-back \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6058
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final handleCommonJpegCallback([BLcom/htc/camera/CameraController;Z)V
    .locals 4

    .prologue
    .line 383
    const-string v0, "CameraThread"

    const-string v1, "handleCommonJpegCallback() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 389
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    new-instance v1, Lcom/htc/camera/CameraThread$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/CameraThread$4;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 407
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 408
    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 411
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 415
    :cond_0
    if-eqz p3, :cond_1

    .line 416
    const-string v0, "CameraThread"

    const-string v1, "handleCommonJpegCallback() - cancel save image task"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_0
    const-string v0, "CameraThread"

    const-string v1, "handleCommonJpegCallback() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void

    .line 417
    :cond_1
    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_3

    .line 418
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CaptureEventArgs;

    sget-object v3, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v2, v0, v3}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0

    .line 421
    :cond_3
    new-instance v1, Lcom/htc/camera/io/SaveImageTask;

    invoke-direct {v1, p0, v0, p1}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 422
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->is3DCamera()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput-object v0, v1, Lcom/htc/camera/io/SaveImageTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 423
    invoke-virtual {p0, v1}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    goto :goto_0

    .line 422
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->m3DFileFormat:Lcom/htc/camera/io/FileFormat;

    goto :goto_1
.end method

.method public final handleCommonPostviewCallback([BLcom/htc/camera/CameraController;)V
    .locals 2

    .prologue
    .line 434
    const-string v0, "CameraThread"

    const-string v1, "handleCommonPostviewCallback() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 436
    invoke-virtual {p0, p1}, Lcom/htc/camera/CameraThread;->createPostViewImage([B)V

    .line 437
    const-string v0, "CameraThread"

    const-string v1, "handleCommonPostviewCallback() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public handleCommonShutterCallback()V
    .locals 2

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 473
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->playShutterSound()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->raiseShutterEvent(Lcom/htc/camera/CaptureHandle;)V

    .line 480
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAutoSceneController:Lcom/htc/camera/IAutoSceneController;

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAutoSceneController:Lcom/htc/camera/IAutoSceneController;

    iget-object v0, v0, Lcom/htc/camera/IAutoSceneController;->isWdrScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    new-instance v1, Lcom/htc/camera/CameraThread$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/CameraThread$5;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 499
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "handleCommonShutterCallback - Cannot find IAutoSceneController."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final invalidateCameraParameters()V
    .locals 2

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 890
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsParamsPrepared:Z

    if-eqz v0, :cond_0

    .line 892
    const-string v0, "CameraThread"

    const-string v1, "invalidateCameraParameters()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsParamsPrepared:Z

    .line 894
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    const-string v0, "CameraThread"

    const-string v1, "invalidateCameraParameters() - Preview is already started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_0
    return-void
.end method

.method public final invokeAsync(Ljava/lang/Runnable;)Z
    .locals 2

    .prologue
    .line 5008
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5012
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_3

    .line 5014
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v3, 0x2774

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5015
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gtz v3, :cond_1

    .line 5017
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v2}, Lcom/htc/camera/CameraThread$MainHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5029
    :cond_0
    :goto_0
    return v0

    .line 5020
    :cond_1
    iget-object v3, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    invoke-virtual {v3, v2, p2, p3}, Lcom/htc/camera/CameraThread$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5022
    :cond_2
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 5023
    const-string v0, "CameraThread"

    const-string v2, "invokeAsync() - Fail to post to camera thread handler"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 5024
    goto :goto_0

    .line 5028
    :cond_3
    const-string v0, "CameraThread"

    const-string v2, "invokeAsync() - No camera thread handler"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 5029
    goto :goto_0
.end method

.method public final isShutterSoundNeeded()Z
    .locals 2

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v1, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 4179
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isShutterSoundEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final notifyTakingPictureFailed(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V
    .locals 3

    .prologue
    .line 4244
    if-nez p1, :cond_0

    .line 4246
    const-string v0, "CameraThread"

    const-string v1, "notifyTakingPictureFailed() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    :goto_0
    return-void

    .line 4249
    :cond_0
    if-nez p2, :cond_1

    .line 4250
    sget-object p2, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    .line 4253
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 4255
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTakingPictureFailed() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4258
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq p1, v0, :cond_2

    .line 4260
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTakingPictureFailed() - Invalid handle, current handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4265
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {v1, p1, p2}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5062
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraOpenFailedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_1

    .line 5063
    check-cast p3, Lcom/htc/camera/CameraDeviceEventArgs;

    iget-object v0, p3, Lcom/htc/camera/CameraDeviceEventArgs;->openFailedReason:Lcom/htc/camera/CameraOpenFailedReason;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mLastCameraOpenFailedReason:Lcom/htc/camera/CameraOpenFailedReason;

    .line 5092
    :cond_0
    :goto_0
    return-void

    .line 5064
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_0

    .line 5066
    check-cast p3, Lcom/htc/camera/HtcCallbackEventArgs;

    .line 5067
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->type:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 5069
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    if-ne v0, v2, :cond_4

    .line 5070
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isDualLensHandCovered:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5074
    :cond_2
    :goto_1
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->type:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 5076
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    iget v1, v1, Lcom/htc/camera/CameraType;->id:I

    if-ne v0, v1, :cond_5

    .line 5077
    const-string v0, "CameraThread"

    const-string v1, "front Camera Preview started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5081
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5083
    const-string v0, "CameraThread"

    const-string v1, "isPreviewStarted = false, ignore first preview frame Callback"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5071
    :cond_4
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    if-nez v0, :cond_2

    .line 5072
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isDualLensHandCovered:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 5078
    :cond_5
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iget v1, v1, Lcom/htc/camera/CameraType;->id:I

    if-ne v0, v1, :cond_3

    .line 5079
    const-string v0, "CameraThread"

    const-string v1, "Main Camera Preview started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5086
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_7

    .line 5087
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 5088
    :cond_7
    iput-object v3, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    .line 5089
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->firstPreviewFrameReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, v3, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto/16 :goto_0
.end method

.method public final openCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 757
    if-nez p1, :cond_0

    .line 759
    const-string v0, "cameraType"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 764
    :cond_0
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "Camera"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 767
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 769
    const-string v1, "CameraThread"

    const-string v2, "openCamera() - Open camera from another thread"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v2, 0x2710

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v5, v5, v3}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 774
    :goto_0
    return-object v0

    .line 773
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/htc/camera/CameraThread;->openCameraInternal(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Z

    goto :goto_0
.end method

.method public final pauseVideoRecording()V
    .locals 1

    .prologue
    .line 2816
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 2818
    new-instance v0, Lcom/htc/camera/CameraThread$16;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$16;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 2829
    :goto_0
    return-void

    .line 2828
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->pauseVideoRecordingInternal()V

    goto :goto_0
.end method

.method public final playShutterSound()V
    .locals 4

    .prologue
    .line 4188
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->hasAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 4197
    :goto_0
    return-void

    .line 4192
    :cond_0
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->playShutterSound(Z)V

    goto :goto_0

    .line 4195
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->playShutterSound(Z)V

    goto :goto_0
.end method

.method public final playShutterSound(Z)V
    .locals 3

    .prologue
    .line 4200
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->canDisableSystemShutterSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4202
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_3

    .line 4204
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 4205
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mAudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 4212
    :cond_1
    :goto_0
    return-void

    .line 4207
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "playShutterSound() - No shutter sound ID"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4210
    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "playShutterSound() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final raiseShutterEvent(Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 5587
    invoke-virtual {p0, p0, p1}, Lcom/htc/camera/CameraThread;->raiseShutterEvent(Ljava/lang/Object;Lcom/htc/camera/CaptureHandle;)V

    .line 5588
    return-void
.end method

.method public final raiseShutterEvent(Ljava/lang/Object;Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 5591
    if-nez p2, :cond_1

    .line 5593
    const-string v0, "captureHandle"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 5603
    :cond_0
    :goto_0
    return-void

    .line 5596
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq p2, v0, :cond_2

    .line 5598
    const-string v0, "CameraThread"

    const-string v1, "raiseShutterEvent() - Invalid capture handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5601
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->shutterEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0}, Lcom/htc/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5602
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->shutterEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {v1, p2}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0
.end method

.method public final registerOneShotPreviewCallback(Lcom/htc/camera/o;)Lcom/htc/camera/Handle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4880
    if-nez p1, :cond_0

    .line 4882
    const-string v1, "callback"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4905
    :goto_0
    return-object v0

    .line 4887
    :cond_0
    new-instance v1, Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;

    invoke-direct {v1, p1}, Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;-><init>(Lcom/htc/camera/o;)V

    .line 4888
    const-string v2, "CameraThread"

    const-string v3, "registerOneShotPreviewCallback() - Create handle : "

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4891
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 4892
    invoke-direct {p0, v1}, Lcom/htc/camera/CameraThread;->registerOneShotPreviewCallback(Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;)V

    :cond_1
    move-object v0, v1

    .line 4905
    goto :goto_0

    .line 4893
    :cond_2
    new-instance v2, Lcom/htc/camera/CameraThread$24;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/CameraThread$24;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$OneShotPreviewCallbackHandle;)V

    invoke-virtual {p0, v2}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4902
    const-string v1, "CameraThread"

    const-string v2, "registerOneShotPreviewCallback() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseCameraThread()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2989
    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    .line 2990
    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2991
    return-void
.end method

.method public removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 6274
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    if-nez v0, :cond_0

    .line 6275
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6276
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 6277
    return-void
.end method

.method public removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 6311
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    if-nez v0, :cond_0

    .line 6312
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6313
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 6314
    return-void
.end method

.method public resetJpegData()V
    .locals 1

    .prologue
    .line 3304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mJpegData:[B

    .line 3305
    return-void
.end method

.method public final resetZoom(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4437
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4438
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x2740

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 4441
    :goto_0
    return-void

    .line 4440
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->resetZoomInternal(Z)V

    goto :goto_0
.end method

.method public final restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 1575
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "RestartPreview"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 1576
    const-string v1, "CameraThread"

    const-string v2, "restartPreview() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1579
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 1581
    const-string v1, "CameraThread"

    const-string v2, "restartPreview() - Called from another thread"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    new-instance v1, Lcom/htc/camera/CameraThread$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/htc/camera/CameraThread$11;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/SessionHandle;Lcom/htc/camera/CameraType;)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1597
    :goto_0
    return-object v0

    .line 1594
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->stopPreview()V

    .line 1595
    invoke-direct {p0, v0, p1}, Lcom/htc/camera/CameraThread;->startPreviewInternal(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraPreviewStartResult;

    goto :goto_0
.end method

.method public final resumeVideoRecording()V
    .locals 1

    .prologue
    .line 2871
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 2873
    new-instance v0, Lcom/htc/camera/CameraThread$17;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$17;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 2885
    :goto_0
    return-void

    .line 2883
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->resumeVideoRecordingInternal()V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3005
    :try_start_0
    const-string v0, "CameraThread"

    const-string v1, "***** START *****"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    const-string v0, "CameraThread.Run"

    invoke-static {v0}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mStartProfTimer:Lcom/htc/camera/Handle;

    .line 3007
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getOnCreateProfTimer()Lcom/htc/camera/Handle;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mStartProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 3011
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3012
    new-instance v0, Lcom/htc/camera/CameraThread$MainHandler;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$MainHandler;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    .line 3015
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getThreadMonitor()Lcom/htc/camera/debug/ThreadMonitor;

    move-result-object v0

    .line 3016
    if-eqz v0, :cond_1

    .line 3017
    invoke-virtual {v0}, Lcom/htc/camera/debug/ThreadMonitor;->startMonitorCurrentThread()V

    .line 3020
    :cond_1
    new-instance v0, Lcom/htc/camera/base/BaseObjectProxy;

    const-string v1, "CameraThread"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/base/BaseObjectProxy;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    .line 3023
    const-string v0, "CameraThread.CameraType"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    .line 3024
    const-string v0, "CameraThread.CaptureRotation"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    .line 3025
    const-string v0, "CameraThread.FlashMode"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/FlashMode;->Auto:Lcom/htc/camera/FlashMode;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->flashMode:Lcom/htc/camera/property/Property;

    .line 3026
    const-string v0, "CameraThread.HasEnoughInternalDataSpace"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/htc/camera/property/Property;

    .line 3027
    const-string v0, "CameraThread.HasMovingObjects"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->hasMovingObjects:Lcom/htc/camera/property/Property;

    .line 3028
    const-string v0, "CameraThread.IsDualLensHandCovered"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->isDualLensHandCovered:Lcom/htc/camera/property/Property;

    .line 3029
    const-string v0, "CameraThread.IsEyeBlinked"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->isEyeBlinked:Lcom/htc/camera/property/Property;

    .line 3030
    const-string v0, "CameraThread.IsHdrSuggested"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->isHdrSuggested:Lcom/htc/camera/property/Property;

    .line 3031
    const-string v0, "CameraThread.IsLowlight"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->isLowlight:Lcom/htc/camera/property/Property;

    .line 3032
    const-string v0, "CameraThread.IsPreviewStarted"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    .line 3033
    const-string v0, "CameraThread.IsRecording"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->isRecording:Lcom/htc/camera/property/Property;

    .line 3034
    const-string v0, "CameraThread.IsTakingPicture"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->isTakingPicture:Lcom/htc/camera/property/Property;

    .line 3035
    const-string v0, "CameraThread.IsVideoPauseSupported"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    .line 3036
    const-string v0, "CameraThread.Mode"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mInitialMode:Lcom/htc/camera/CameraMode;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    .line 3037
    const-string v0, "CameraThread.PreviewOutputTarget"

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->previewOutputTarget:Lcom/htc/camera/property/Property;

    .line 3038
    const-string v0, "CameraThread.PreviewSize"

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    .line 3039
    const-string v0, "CameraThread.RecordingState"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    .line 3040
    const-string v0, "CameraThread.StorageSlot"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    .line 3041
    const-string v0, "CameraThread.StorageState"

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    .line 3042
    const-string v0, "CameraThread.SupportCAF"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    .line 3043
    const-string v0, "CameraThread.TakingPictureState"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    .line 3044
    const-string v0, "CameraThread.ZoomRange"

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->zoomRange:Lcom/htc/camera/property/Property;

    .line 3045
    const-string v0, "CameraThread.ZoomValue"

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    .line 3048
    const-string v0, "CameraThread.AutoFocusCanceled"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    .line 3049
    const-string v0, "CameraThread.AutoFocusFinished"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    .line 3050
    const-string v0, "CameraThread.AutoFocusStarted"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->autoFocusStartedEvent:Lcom/htc/camera/event/Event;

    .line 3051
    const-string v0, "CameraThread.AutoFocusStarting"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->autoFocusStartingEvent:Lcom/htc/camera/event/Event;

    .line 3052
    const-string v0, "CameraThread.CameraClosed"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->cameraClosedEvent:Lcom/htc/camera/event/Event;

    .line 3053
    const-string v0, "CameraThread.CameraClosing"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->cameraClosingEvent:Lcom/htc/camera/event/Event;

    .line 3054
    const-string v0, "CameraThread.CameraOpen"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    .line 3055
    const-string v0, "CameraThread.CameraOpenFailed"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->cameraOpenFailedEvent:Lcom/htc/camera/event/Event;

    .line 3056
    const-string v0, "CameraThread.CameraOpening"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->cameraOpeningEvent:Lcom/htc/camera/event/Event;

    .line 3057
    const-string v0, "CameraThread.CaptureCanceled"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->captureCanceledEvent:Lcom/htc/camera/event/Event;

    .line 3058
    const-string v0, "CameraThread.CaptureFailed"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    .line 3059
    const-string v0, "CameraThread.CaptureStarted"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->captureStartedEvent:Lcom/htc/camera/event/Event;

    .line 3060
    const-string v0, "CameraThread.CaptureStarting"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->captureStartingEvent:Lcom/htc/camera/event/Event;

    .line 3061
    const-string v0, "CameraThread.CaptureStopped"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->captureStoppedEvent:Lcom/htc/camera/event/Event;

    .line 3062
    const-string v0, "CameraThread.DeletingLatestMedia"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->deletingLatestMediaEvent:Lcom/htc/camera/event/Event;

    .line 3063
    const-string v0, "CameraThread.Exiting"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->exitingEvent:Lcom/htc/camera/event/Event;

    .line 3064
    const-string v0, "CameraThread.HtcCallbackReceived"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/htc/camera/event/Event;

    .line 3065
    const-string v0, "CameraThread.MediaDeleted"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    .line 3066
    const-string v0, "CameraThread.MediaRecorderInfoCallback"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mediaRecorderInfoCallbackEvent:Lcom/htc/camera/event/Event;

    .line 3067
    const-string v0, "CameraThread.ModeChanged"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->modeChangedEvent:Lcom/htc/camera/event/Event;

    .line 3068
    const-string v0, "CameraThread.ModeChangeFailed"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->modeChangeFailedEvent:Lcom/htc/camera/event/Event;

    .line 3069
    const-string v0, "CameraThread.PostviewImageRetrieved"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->postviewImageRetrievedEvent:Lcom/htc/camera/event/Event;

    .line 3070
    const-string v0, "CameraThread.PreparingParamsAfterPreviewStart"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/htc/camera/event/Event;

    .line 3071
    const-string v0, "CameraThread.PreparingParamsBeforePreviewStart"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/htc/camera/event/Event;

    .line 3072
    const-string v0, "CameraThread.PreparingParamsBeforeTakingPicture"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/htc/camera/event/Event;

    .line 3073
    const-string v0, "CameraThread.PreparingParamsBeforeRecording"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->preparingParamsBeforeRecording:Lcom/htc/camera/event/Event;

    .line 3074
    new-instance v0, Lcom/htc/camera/CameraThread$18;

    const-string v1, "CameraThread.PreviewFrameRetrieved"

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/camera/CameraThread$18;-><init>(Lcom/htc/camera/CameraThread;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/htc/camera/event/Event;

    .line 3108
    const-string v0, "CameraThread.PreviewStarted"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    .line 3109
    const-string v0, "CameraThread.PreviewStartFailed"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    .line 3110
    const-string v0, "CameraThread.PreviewStarting"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->previewStartingEvent:Lcom/htc/camera/event/Event;

    .line 3111
    const-string v0, "CameraThread.PreviewStopped"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->previewStoppedEvent:Lcom/htc/camera/event/Event;

    .line 3112
    const-string v0, "CameraThread.PreviewStopping"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->previewStoppingEvent:Lcom/htc/camera/event/Event;

    .line 3113
    const-string v0, "CameraThread.RecordingFailed"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->recordingFailedEvent:Lcom/htc/camera/event/Event;

    .line 3114
    const-string v0, "CameraThread.RequestCloseCamera"

    sget-object v1, Lcom/htc/camera/event/EventMode;->SingleHandler:Lcom/htc/camera/event/EventMode;

    invoke-static {p0, v0, v1}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->requestCloseCameraEvent:Lcom/htc/camera/event/Event;

    .line 3115
    const-string v0, "CameraThread.RequestDeleteLatestMedia"

    sget-object v1, Lcom/htc/camera/event/EventMode;->SingleHandler:Lcom/htc/camera/event/EventMode;

    invoke-static {p0, v0, v1}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/htc/camera/event/Event;

    .line 3116
    const-string v0, "CameraThread.RequestOpenCamera"

    sget-object v1, Lcom/htc/camera/event/EventMode;->SingleHandler:Lcom/htc/camera/event/EventMode;

    invoke-static {p0, v0, v1}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->requestOpenCameraEvent:Lcom/htc/camera/event/Event;

    .line 3117
    const-string v0, "CameraThread.SavingImage"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->savingImageEvent:Lcom/htc/camera/event/Event;

    .line 3118
    const-string v0, "CameraThread.Shutter"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->shutterEvent:Lcom/htc/camera/event/Event;

    .line 3119
    const-string v0, "CameraThread.TakingPictureFailed"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureFailedEvent:Lcom/htc/camera/event/Event;

    .line 3120
    const-string v0, "CameraThread.VideoThumbnailCreated"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/htc/camera/event/Event;

    .line 3121
    const-string v0, "CameraThread.FirstPreviewFrameReceivedEvent"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->firstPreviewFrameReceivedEvent:Lcom/htc/camera/event/Event;

    .line 3124
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isRecording:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 3125
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 3126
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 3127
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/htc/camera/event/Event;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->disableLogs(I)V

    .line 3128
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 3131
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraOpenFailedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, p0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 3132
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, p0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 3135
    new-instance v0, Lcom/htc/camera/component/CameraThreadComponentFactory;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CameraThreadComponentFactory;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentFactory:Lcom/htc/camera/component/CameraThreadComponentFactory;

    .line 3136
    new-instance v0, Lcom/htc/camera/component/CameraThreadComponentManager;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CameraThreadComponentManager;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    .line 3137
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentFactory:Lcom/htc/camera/component/CameraThreadComponentFactory;

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Launch:Lcom/htc/camera/component/ComponentCategory;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/htc/camera/component/ComponentCategory;)I

    .line 3138
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    .line 3141
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/htc/camera/ISettingsManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    .line 3142
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    if-nez v0, :cond_2

    .line 3144
    const-string v0, "CameraThread"

    const-string v1, "[Fatal] No ISettingsManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3193
    const-string v0, "CameraThread"

    const-string v1, "***** STOP *****"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3194
    iput-boolean v4, p0, Lcom/htc/camera/CameraThread;->mIsRunning:Z

    .line 3196
    :goto_0
    return-void

    .line 3149
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v3, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v3, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3152
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    .line 3153
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentFactory:Lcom/htc/camera/component/CameraThreadComponentFactory;

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Realtime:Lcom/htc/camera/component/ComponentCategory;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/htc/camera/component/ComponentCategory;)I

    .line 3156
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    .line 3159
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->linkToRequiredServiceComponents()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3161
    const-string v0, "CameraThread"

    const-string v1, "[Fatal] Some required interface is missing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3193
    const-string v0, "CameraThread"

    const-string v1, "***** STOP *****"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3194
    iput-boolean v4, p0, Lcom/htc/camera/CameraThread;->mIsRunning:Z

    goto :goto_0

    .line 3164
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mComponentManager:Lcom/htc/camera/component/CameraThreadComponentManager;

    const-class v1, Lcom/htc/camera/debug/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    .line 3165
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    if-nez v0, :cond_4

    .line 3166
    const-string v0, "CameraThread"

    const-string v1, "No IOperationTimeoutController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 3171
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2776

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3172
    const-string v0, "CameraThread"

    const-string v1, "Cannot notify UI that camera thread is running, because message cannot be sent"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3178
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mInitialCameraType:Lcom/htc/camera/CameraType;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mOpenCameraDirectlyWhenStart:Z

    if-eqz v0, :cond_6

    .line 3180
    const-string v0, "CameraThread"

    const-string v1, "Open camera first"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mInitialCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->openCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 3185
    :cond_6
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->initializeStorageSlot()V

    .line 3188
    const-string v0, "CameraThread"

    const-string v1, "Start looper"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3193
    const-string v0, "CameraThread"

    const-string v1, "***** STOP *****"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3194
    iput-boolean v4, p0, Lcom/htc/camera/CameraThread;->mIsRunning:Z

    goto/16 :goto_0

    .line 3175
    :cond_7
    :try_start_3
    const-string v0, "CameraThread"

    const-string v1, "Cannot notify UI that camera thread is running, because there is no UI handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3193
    :catchall_0
    move-exception v0

    const-string v1, "CameraThread"

    const-string v2, "***** STOP *****"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3194
    iput-boolean v4, p0, Lcom/htc/camera/CameraThread;->mIsRunning:Z

    throw v0
.end method

.method public final saveImage(Lcom/htc/camera/io/SaveImageTask;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4386
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 4389
    if-nez p1, :cond_0

    .line 4391
    const-string v0, "task"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4396
    :cond_0
    iget-object v0, p1, Lcom/htc/camera/io/SaveImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    if-nez v0, :cond_1

    .line 4397
    sget-object v0, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    iput-object v0, p1, Lcom/htc/camera/io/SaveImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 4398
    :cond_1
    iget-object v0, p1, Lcom/htc/camera/io/SaveImageTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    if-nez v0, :cond_2

    .line 4399
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iput-object v0, p1, Lcom/htc/camera/io/SaveImageTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 4400
    :cond_2
    iget-object v0, p1, Lcom/htc/camera/io/SaveImageTask;->gpsLocation:Landroid/location/Location;

    if-nez v0, :cond_3

    .line 4401
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mLocation:Landroid/location/Location;

    iput-object v0, p1, Lcom/htc/camera/io/SaveImageTask;->gpsLocation:Landroid/location/Location;

    .line 4402
    :cond_3
    iget-object v0, p1, Lcom/htc/camera/io/SaveImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    if-nez v0, :cond_4

    .line 4403
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    iput-object v0, p1, Lcom/htc/camera/io/SaveImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    .line 4404
    :cond_4
    iget-wide v2, p1, Lcom/htc/camera/io/SaveImageTask;->takenDateTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/htc/camera/io/SaveImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_5

    .line 4405
    iget-object v0, p1, Lcom/htc/camera/io/SaveImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->captureTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/htc/camera/io/SaveImageTask;->takenDateTime:J

    .line 4406
    :cond_5
    iget-boolean v0, p0, Lcom/htc/camera/CameraThread;->mIsGeoTaggingEnabled:Z

    iput-boolean v0, p1, Lcom/htc/camera/io/SaveImageTask;->isGeoTaggingEnabled:Z

    .line 4409
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    .line 4410
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/htc/camera/CameraStartMode;->SquarePhoto:Lcom/htc/camera/CameraStartMode;

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/htc/camera/CameraStartMode;->ContactsPhoto:Lcom/htc/camera/CameraStartMode;

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/htc/camera/CameraStartMode;->GenericServiceCamera:Lcom/htc/camera/CameraStartMode;

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/htc/camera/CameraStartMode;->WatchCompanionPhoto:Lcom/htc/camera/CameraStartMode;

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getRequestedUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4417
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraThread;->mJpegData:[B

    .line 4423
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_a

    .line 4425
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    invoke-interface {v0, p1}, Lcom/htc/camera/io/IMediaFileWriter;->saveMedia(Lcom/htc/camera/io/SaveMediaTask;)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    if-nez v0, :cond_7

    .line 4426
    const-string v0, "CameraThread"

    const-string v1, "saveImage() - Cannot save image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4430
    :cond_7
    :goto_2
    return-void

    :cond_8
    move-object v0, v1

    .line 4409
    goto :goto_0

    .line 4420
    :cond_9
    iput-object v1, p0, Lcom/htc/camera/CameraThread;->mJpegData:[B

    goto :goto_1

    .line 4429
    :cond_a
    const-string v0, "CameraThread"

    const-string v1, "saveImage() - No IMediaFileWriter interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final saveVideo(Lcom/htc/camera/io/SaveVideoTask;)V
    .locals 4

    .prologue
    .line 1606
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 1609
    if-nez p1, :cond_0

    .line 1611
    const-string v0, "task"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 1612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_7

    .line 1618
    iget-object v0, p1, Lcom/htc/camera/io/SaveVideoTask;->filePath:Lcom/htc/camera/io/Path;

    if-nez v0, :cond_1

    .line 1619
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFilePath:Lcom/htc/camera/io/Path;

    iput-object v0, p1, Lcom/htc/camera/io/SaveVideoTask;->filePath:Lcom/htc/camera/io/Path;

    .line 1620
    :cond_1
    iget-object v0, p1, Lcom/htc/camera/io/SaveVideoTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    if-nez v0, :cond_2

    .line 1621
    sget-object v0, Lcom/htc/camera/CameraThread;->VIDEO_DCF_INFO:Lcom/htc/camera/io/DCFInfo;

    iput-object v0, p1, Lcom/htc/camera/io/SaveVideoTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 1622
    :cond_2
    iget-wide v0, p1, Lcom/htc/camera/io/SaveVideoTask;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 1623
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/htc/camera/io/SaveVideoTask;->duration:J

    .line 1624
    :cond_3
    iget-object v0, p1, Lcom/htc/camera/io/SaveVideoTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    if-nez v0, :cond_4

    .line 1625
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/htc/camera/io/FileFormat;

    iput-object v0, p1, Lcom/htc/camera/io/SaveVideoTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 1626
    :cond_4
    iget-object v0, p1, Lcom/htc/camera/io/SaveVideoTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    if-nez v0, :cond_5

    .line 1627
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    iput-object v0, p1, Lcom/htc/camera/io/SaveVideoTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    .line 1631
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mMediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    invoke-interface {v0, p1}, Lcom/htc/camera/io/IMediaFileWriter;->saveMedia(Lcom/htc/camera/io/SaveMediaTask;)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1632
    const-string v0, "CameraThread"

    const-string v1, "saveVideo() - Cannot save video information"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    :cond_6
    :goto_0
    return-void

    .line 1635
    :cond_7
    const-string v0, "CameraThread"

    const-string v1, "saveVideo() - No IMediaFileWriter interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setCaptureRotation(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5295
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5297
    const-string v0, "CameraThread"

    const-string v1, "setCaptureRotation("

    const-string v2, ") - Called from another thread"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5298
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x2742

    invoke-static {v0, v1, v3, v3, p1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 5302
    :goto_0
    return-void

    .line 5301
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->setCaptureRotationInternal(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method public final setFirstFrameCacheState(Z)V
    .locals 1

    .prologue
    .line 5254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5256
    new-instance v0, Lcom/htc/camera/CameraThread$27;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/CameraThread$27;-><init>(Lcom/htc/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5267
    :goto_0
    return-void

    .line 5266
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V

    goto :goto_0
.end method

.method public setFlashMode(Lcom/htc/camera/FlashMode;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5219
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5220
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v1, 0x2725

    invoke-static {v0, v1, v2, v2, p1}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 5223
    :goto_0
    return-void

    .line 5222
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread;->setFlashModeInternal(Lcom/htc/camera/FlashMode;)V

    goto :goto_0
.end method

.method public final setIsVideoPauseSupported(Z)V
    .locals 3

    .prologue
    .line 6237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 6239
    const-string v0, "CameraThread"

    const-string v1, "setIsVideoPauseSupported() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6240
    new-instance v0, Lcom/htc/camera/CameraThread$40;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/CameraThread$40;-><init>(Lcom/htc/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6249
    const-string v0, "CameraThread"

    const-string v1, "setIsVideoPauseSupported() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6255
    :cond_0
    :goto_0
    return-void

    .line 6254
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setJpegData([B)V
    .locals 0

    .prologue
    .line 3300
    iput-object p1, p0, Lcom/htc/camera/CameraThread;->mJpegData:[B

    .line 3301
    return-void
.end method

.method public setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 6322
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    if-nez v0, :cond_0

    .line 6323
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6324
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setSoundEffect(ZLcom/htc/camera/rotate/UIRotation;)V
    .locals 6

    .prologue
    .line 5338
    const-string v0, "CameraThread"

    const-string v1, "setSoundEffect(hasEffect="

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ", rotation="

    const-string v5, ")"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5340
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 5341
    if-nez p1, :cond_0

    .line 5342
    const-string v0, "Mono"

    invoke-direct {p0, v0}, Lcom/htc/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    .line 5358
    :goto_0
    return-void

    .line 5345
    :cond_0
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5354
    const-string v0, "Portrait"

    invoke-direct {p0, v0}, Lcom/htc/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 5348
    :pswitch_0
    const-string v0, "Landscape_Left"

    invoke-direct {p0, v0}, Lcom/htc/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 5351
    :pswitch_1
    const-string v0, "Landscape_Right"

    invoke-direct {p0, v0}, Lcom/htc/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 5345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final start(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)V
    .locals 0

    .prologue
    .line 3203
    iput-object p1, p0, Lcom/htc/camera/CameraThread;->mInitialCameraType:Lcom/htc/camera/CameraType;

    .line 3204
    iput-object p2, p0, Lcom/htc/camera/CameraThread;->mInitialMode:Lcom/htc/camera/CameraMode;

    .line 3205
    iput-boolean p3, p0, Lcom/htc/camera/CameraThread;->mOpenCameraDirectlyWhenStart:Z

    .line 3206
    invoke-virtual {p0}, Lcom/htc/camera/CameraThread;->start()V

    .line 3207
    return-void
.end method

.method public startPreview()Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 1101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->startPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public startPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1106
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "StartPreview"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 1107
    const-string v1, "CameraThread"

    const-string v2, "startPreview() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 1112
    const-string v1, "CameraThread"

    const-string v2, "startPreview() - Start preview from another thread"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v2, 0x2711

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v5, v5, v3}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1117
    :goto_0
    return-object v0

    .line 1116
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/htc/camera/CameraThread;->startPreviewInternal(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraPreviewStartResult;

    goto :goto_0
.end method

.method public final startPreviewDirectly()Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 1335
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "StartPreview"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 1336
    const-string v1, "CameraThread"

    const-string v2, "startPreviewDirectly() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1339
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1340
    invoke-direct {p0, v0}, Lcom/htc/camera/CameraThread;->startPreviewDirectlyInternal(Lcom/htc/camera/Handle;)Lcom/htc/camera/CameraPreviewStartResult;

    .line 1349
    :goto_0
    return-object v0

    .line 1343
    :cond_0
    const-string v1, "CameraThread"

    const-string v2, "startPreviewDirectly() - Called from another thread"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_1

    .line 1345
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    const/16 v2, 0x2712

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1347
    :cond_1
    const-string v1, "CameraThread"

    const-string v2, "startPreviewDirectly() - No camera handler"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final startPreviewSilently()Lcom/htc/camera/CameraPreviewStartResult;
    .locals 1

    .prologue
    .line 1516
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->startPreviewSilently(Z)Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v0

    return-object v0
.end method

.method public final startPreviewSilently(Z)Lcom/htc/camera/CameraPreviewStartResult;
    .locals 4

    .prologue
    .line 1521
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->threadAccessCheck()V

    .line 1524
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    if-nez v0, :cond_0

    .line 1526
    const-string v0, "CameraThread"

    const-string v1, "startPreviewSilently() - Camera is not open"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    .line 1557
    :goto_0
    return-object v0

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1534
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1536
    const-string v0, "CameraThread"

    const-string v2, "startPreviewSilently() - Preview resource is unavailable"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    monitor-exit v1

    goto :goto_0

    .line 1554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1543
    :cond_1
    if-eqz p1, :cond_2

    .line 1544
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->stopPreview()V

    .line 1545
    :cond_2
    const-string v0, "CameraThread"

    const-string v2, "startPreviewSilently() - mCameraDevice.startPreview() - Start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->startPreview()V

    .line 1547
    const-string v0, "CameraThread"

    const-string v2, "startPreviewSilently() - mCameraDevice.startPreview() - End"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1554
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1557
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    goto :goto_0

    .line 1549
    :catch_0
    move-exception v0

    .line 1551
    :try_start_3
    const-string v2, "CameraThread"

    const-string v3, "startPreviewSilently() - Start preview failed"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1552
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->UnknownError:Lcom/htc/camera/CameraPreviewStartResult;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final startVideoRecording()Lcom/htc/camera/CaptureHandle;
    .locals 5

    .prologue
    .line 2123
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecording()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    new-instance v1, Lcom/htc/camera/CaptureHandle;

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-direct {v1, v2, v0}, Lcom/htc/camera/CaptureHandle;-><init>(Lcom/htc/camera/CameraMode;Lcom/htc/camera/CameraType;)V

    .line 2127
    const-string v0, "CameraThread"

    const-string v2, "startVideoRecording() - Create handle : \'"

    iget-object v3, v1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 2132
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_0

    .line 2134
    new-instance v0, Lcom/htc/camera/CameraThread$15;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/CameraThread$15;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :goto_0
    move-object v0, v1

    .line 2153
    :goto_1
    return-object v0

    .line 2145
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "startVideoRecording() - No camera handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    const/4 v0, 0x0

    goto :goto_1

    .line 2150
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/CameraThread;->startVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;Z)V

    goto :goto_0
.end method

.method public final stopPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1643
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 1645
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start sync"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1649
    iput-boolean v3, p0, Lcom/htc/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 1650
    invoke-direct {p0}, Lcom/htc/camera/CameraThread;->clearPreviewCallback()V

    .line 1653
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1654
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1657
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStoppingEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1658
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1661
    iput-object v4, p0, Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;

    .line 1664
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "before stopPreview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCamController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->stopPreview()V

    .line 1666
    const-string v0, "CameraThread"

    const-string v1, "after stopPreview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewStoppedEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1669
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1670
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->previewOutputTarget:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1672
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end sync"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    :goto_0
    return-void

    .line 1674
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_3

    .line 1676
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start async"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    new-instance v0, Lcom/htc/camera/CameraThread$12;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraThread$12;-><init>(Lcom/htc/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1684
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end async"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1687
    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "Cannot stop preview because there is no handler for camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final stopVideoRecording(Lcom/htc/camera/CaptureHandle;ZZ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1696
    if-nez p1, :cond_1

    .line 1698
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecording() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    const-string v0, "CameraThread"

    const-string v2, "stopVideoRecording() - Handle : \'"

    iget-object v3, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1705
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 1706
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_2

    const/4 v0, 0x1

    .line 1707
    :goto_1
    if-nez v0, :cond_4

    .line 1709
    iget-object v1, p0, Lcom/htc/camera/CameraThread;->mCameraHandler:Lcom/htc/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_3

    .line 1711
    const-string v1, "CameraThread"

    const-string v3, "stopVideoRecording() - Stop recording asynchronuously"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    new-instance v1, Lcom/htc/camera/CameraThread$13;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/htc/camera/CameraThread$13;-><init>(Lcom/htc/camera/CameraThread;Ljava/util/concurrent/Semaphore;Lcom/htc/camera/CaptureHandle;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1734
    :goto_2
    if-eqz p3, :cond_0

    if-nez v0, :cond_0

    .line 1736
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecording() - Wait for recording stop - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1740
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1741
    iget-object v0, p0, Lcom/htc/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    :goto_3
    const-string v0, "CameraThread"

    const-string v1, "stopVideoRecording() - Wait for recording stop - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1706
    goto :goto_1

    .line 1723
    :cond_3
    const-string v1, "CameraThread"

    const-string v3, "stopVideoRecording() - No camera thread handler"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    .line 1729
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1730
    invoke-direct {p0, p1, p2, v1}, Lcom/htc/camera/CameraThread;->stopVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;ZZ)V

    goto :goto_2

    .line 1743
    :catch_0
    move-exception v0

    .line 1745
    const-string v1, "CameraThread"

    const-string v2, "stopVideoRecording() - Wait for recording stop - interrupted"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public final takePicture(Z)Lcom/htc/camera/CaptureHandle;
    .locals 7

    .prologue
    .line 5615
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5618
    new-instance v6, Lcom/htc/camera/CaptureHandle;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    iget-object v0, p0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-direct {v6, v1, v0}, Lcom/htc/camera/CaptureHandle;-><init>(Lcom/htc/camera/CameraMode;Lcom/htc/camera/CameraType;)V

    .line 5619
    const-string v0, "CameraThread"

    const-string v1, "takePicture() - Handle : \'"

    iget-object v2, v6, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5622
    new-instance v0, Lcom/htc/camera/CameraThread$35;

    invoke-direct {v0, p0, v6, p1}, Lcom/htc/camera/CameraThread$35;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5632
    return-object v6
.end method
