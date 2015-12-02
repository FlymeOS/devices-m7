.class public Lcom/htc/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"


# static fields
.field private static final LIB_PATH_HUMAN_PROCESS:Ljava/lang/String;

.field private static final mActiveCameraControllers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/camera/CameraController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAntibanding:Ljava/lang/String;

.field private mAutoFocusCallback:Lcom/htc/camera/g;

.field private mAutoFocusCallbackAdapter:Landroid/hardware/Camera$AutoFocusCallback;

.field private mAutoFocusMoveCallback:Lcom/htc/camera/h;

.field private mAutoFocusMoveCallbackAdapter:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mAutoFocusSupported:Ljava/lang/Boolean;

.field private mBrightnessRange:Lcom/htc/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private volatile mCamera:Landroid/hardware/Camera;

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private final mCameraType:Lcom/htc/camera/CameraType;

.field private mCanDisableSystemShutterSound:Z

.field private mColorEffect:Ljava/lang/String;

.field private final mContiBurstSupportMode:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

.field private mContrastRange:Lcom/htc/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultBrightness:Ljava/lang/Integer;

.field private mDefaultContrast:Ljava/lang/Integer;

.field private mDefaultFlashMode:Ljava/lang/String;

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mDefaultSaturation:Ljava/lang/Integer;

.field private mDefaultSharpness:Ljava/lang/Integer;

.field private mDisplayOrientation:I

.field private mEmptyPostViewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mErrorCallback:Lcom/htc/camera/i;

.field private mErrorCallbackAdapter:Landroid/hardware/Camera$ErrorCallback;

.field private mExposureCompensation:Ljava/lang/Integer;

.field private mFaceDetectionListener:Lcom/htc/camera/j;

.field private mFaceDetectionListenerAdapter:Landroid/hardware/Camera$FaceDetectionListener;

.field private mFlashMode:Ljava/lang/String;

.field private mFocusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHtcCallback:Lcom/htc/camera/wrapper/a;

.field private mHtcWrapCamera:Lcom/htc/camera/wrapper/HtcWrapCamera;

.field private mInjectParam0:I

.field private mInjectParam1:I

.field private mIsAutoExposureLocked:Ljava/lang/Boolean;

.field private mIsAutoWhiteBalanceLocked:Ljava/lang/Boolean;

.field private volatile mIsDriverPreviewStarted:Z

.field private mIsDualCameraSupported:Ljava/lang/Boolean;

.field private volatile mIsFaceDetectionStarted:Z

.field private mIsFirstSetFlashRunPosted:Z

.field private final mIsLiveFaceBeautySupported:Z

.field private final mIsOisSupported:Z

.field private final mIsPhotoHDRSupported:Z

.field private mIsPictureCAFSupported:Ljava/lang/Boolean;

.field private mIsPictureSizeChanged:Z

.field private volatile mIsPreviewStarted:Z

.field private mIsReviewEnabled:Z

.field private mIsSetFlashRunPosted:Z

.field private final mIsSmartSceneDetectSupported:Z

.field private mIsSmileFromFaceSupport:Ljava/lang/Boolean;

.field private final mIsVideo1080p60fpsSupported:Z

.field private final mIsVideo720p60fpsSupported:Z

.field private final mIsVideoHDRSupported:Z

.field private final mIsVideoSlowMotionSupported:Z

.field private final mIsVideoStabilizationSupported:Z

.field private mIsViewAngleChanged:Z

.field private mJpegQuality:Ljava/lang/Integer;

.field private final mJpegThumbnailSize:Lcom/htc/camera/imaging/Size;

.field private mLocation:Landroid/location/Location;

.field private mManualFocusRange:Lcom/htc/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private final mModifiedParameters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOneShotPreviewCallback:Lcom/htc/camera/l;

.field private mOneShotPreviewCallbackAdapter:Landroid/hardware/Camera$PreviewCallback;

.field private final mOperationTimeoutCallback:Lcom/htc/camera/debug/b;

.field private final mPictureSize:Lcom/htc/camera/imaging/Size;

.field private mPinchZoom:Ljava/lang/Integer;

.field private mPreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

.field private mPreviewCallback:Lcom/htc/camera/l;

.field private mPreviewCallbackAdapter:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewFpsRange:Lcom/htc/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewSize:Lcom/htc/camera/imaging/Size;

.field private mPreviewSurface:Landroid/view/SurfaceHolder;

.field private mRecordingHint:Ljava/lang/Boolean;

.field private mRotation:Ljava/lang/Integer;

.field private mSaturationRange:Lcom/htc/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneMode:Ljava/lang/String;

.field private final mSetFlashRunnable:Ljava/lang/Runnable;

.field private mSharpnessRange:Lcom/htc/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mState:Lcom/htc/camera/CameraController$ControllerState;

.field private mSupportedAntibanding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFlashModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedSceneModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedWhiteBalance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeoutController:Lcom/htc/camera/debug/a;

.field private mVideoStabilization:Ljava/lang/Boolean;

.field private mWhiteBalance:Ljava/lang/String;

.field private mZoom:Ljava/lang/Integer;

.field private zoeSupportedStatus:Lcom/htc/camera/SupportState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    .line 265
    const-string v1, "libhtc_humanprocess.so"

    .line 266
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/lib"

    invoke-static {v2, v1}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/CameraController;->LIB_PATH_HUMAN_PROCESS:Ljava/lang/String;

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/camera/CameraController;->LIB_PATH_HUMAN_PROCESS:Ljava/lang/String;

    .line 274
    const-string v0, "CameraController"

    const-string v1, "Cannot find human process library"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/camera/CameraType;Lcom/htc/camera/debug/a;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v1, p0, Lcom/htc/camera/CameraController;->mInjectParam0:I

    .line 65
    iput v1, p0, Lcom/htc/camera/CameraController;->mInjectParam1:I

    .line 102
    iput-object v2, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 120
    sget-object v0, Lcom/htc/camera/CameraController$ControllerState;->Ready:Lcom/htc/camera/CameraController$ControllerState;

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    .line 122
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mModifiedParameters:Ljava/util/Hashtable;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCallbackBuffers:Ljava/util/ArrayList;

    .line 126
    iput-object v2, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    .line 127
    iput-boolean v1, p0, Lcom/htc/camera/CameraController;->mIsFirstSetFlashRunPosted:Z

    .line 128
    iput-boolean v1, p0, Lcom/htc/camera/CameraController;->mIsSetFlashRunPosted:Z

    .line 129
    new-instance v0, Lcom/htc/camera/CameraController$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraController$1;-><init>(Lcom/htc/camera/CameraController;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mSetFlashRunnable:Ljava/lang/Runnable;

    .line 2952
    new-instance v0, Lcom/htc/camera/CameraController$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraController$3;-><init>(Lcom/htc/camera/CameraController;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mOperationTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 283
    const-string v0, "CameraController"

    const-string v1, "[Create] "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    sget-object v1, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    monitor-enter v1

    .line 288
    :try_start_0
    sget-object v0, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 290
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate camera controller for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 293
    :cond_1
    :try_start_1
    sget-object v0, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 300
    iput-object p2, p0, Lcom/htc/camera/CameraController;->mTimeoutController:Lcom/htc/camera/debug/a;

    .line 301
    const-string v0, "Open camera"

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/htc/camera/Handle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 303
    :try_start_2
    invoke-static {p1}, Lcom/htc/camera/CameraController;->openCamera(Lcom/htc/camera/CameraType;)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 315
    :try_start_3
    invoke-direct {p0, v2}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    .line 318
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    .line 319
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    :try_start_4
    new-instance v0, Lcom/htc/camera/wrapper/HtcWrapCamera;

    invoke-direct {v0}, Lcom/htc/camera/wrapper/HtcWrapCamera;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mHtcWrapCamera:Lcom/htc/camera/wrapper/HtcWrapCamera;

    .line 327
    const-string v0, "Get camera parameters"

    const-wide/16 v1, 0x1388

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/htc/camera/Handle;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 330
    :try_start_5
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 331
    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/camera/imaging/Size;-><init>(Landroid/hardware/Camera$Size;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mPreviewSize:Lcom/htc/camera/imaging/Size;

    .line 332
    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/camera/imaging/Size;-><init>(Landroid/hardware/Camera$Size;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mPictureSize:Lcom/htc/camera/imaging/Size;

    .line 333
    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/camera/imaging/Size;-><init>(Landroid/hardware/Camera$Size;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mJpegThumbnailSize:Lcom/htc/camera/imaging/Size;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 337
    :try_start_6
    invoke-direct {p0, v1}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsSmartSceneDetectSupported:Z

    .line 350
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->supportOis()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsOisSupported:Z

    .line 355
    :goto_0
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->supportSlowMotion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideoSlowMotionSupported:Z

    .line 360
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->supportSmileFromFace()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mIsSmileFromFaceSupport:Ljava/lang/Boolean;

    .line 362
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->supportVideoStabilization()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideoStabilizationSupported:Z

    .line 367
    :goto_2
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->supportVideo720p60fps()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideo720p60fpsSupported:Z

    .line 372
    :goto_3
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->supportVideo1080p60fps()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideo1080p60fpsSupported:Z

    .line 377
    :goto_4
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->supportVideoHDR()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideoHDRSupported:Z

    .line 382
    :goto_5
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->supportPhotoHDR()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsPhotoHDRSupported:Z

    .line 387
    :goto_6
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->supportLiveFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsLiveFaceBeautySupported:Z

    .line 392
    :goto_7
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->checkZoeSupportedInternal()V

    .line 394
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->getDriverContiBurstSupportMode()Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mContiBurstSupportMode:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    .line 397
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHtcDevice()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mCanDisableSystemShutterSound:Z

    .line 400
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "sound-off"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 418
    :cond_2
    :goto_8
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->setSupportedList()V

    .line 421
    sget-object v0, Lcom/htc/camera/CameraController;->LIB_PATH_HUMAN_PROCESS:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 423
    const-string v0, "human-engine-lib-path"

    sget-object v1, Lcom/htc/camera/CameraController;->LIB_PATH_HUMAN_PROCESS:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 438
    :cond_3
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 307
    :try_start_7
    sget-object v3, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    invoke-virtual {v3, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 308
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    .line 309
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 315
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-direct {p0, v2}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 311
    :cond_4
    :try_start_9
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot open camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 337
    :catchall_2
    move-exception v0

    :try_start_a
    invoke-direct {p0, v1}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 427
    :catch_1
    move-exception v0

    .line 429
    const-string v1, "CameraController"

    const-string v2, "Fail to setup camera controller"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    sget-object v1, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    monitor-enter v1

    .line 432
    :try_start_b
    sget-object v2, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 433
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 434
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_5

    .line 435
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 436
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to setup camera controller"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 353
    :cond_6
    const/4 v0, 0x0

    :try_start_c
    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsOisSupported:Z

    goto/16 :goto_0

    .line 358
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideoSlowMotionSupported:Z

    goto/16 :goto_1

    .line 365
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideoStabilizationSupported:Z

    goto/16 :goto_2

    .line 370
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideo720p60fpsSupported:Z

    goto/16 :goto_3

    .line 375
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideo1080p60fpsSupported:Z

    goto/16 :goto_4

    .line 380
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideoHDRSupported:Z

    goto/16 :goto_5

    .line 385
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsPhotoHDRSupported:Z

    goto/16 :goto_6

    .line 390
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsLiveFaceBeautySupported:Z

    goto/16 :goto_7

    .line 405
    :cond_e
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 406
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    iget v1, v1, Lcom/htc/camera/CameraType;->id:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 407
    iget-boolean v0, v0, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mCanDisableSystemShutterSound:Z

    .line 408
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mCanDisableSystemShutterSound:Z

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    const-string v0, "CameraController"

    const-string v1, "Fail to disable system shutter sound"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mCanDisableSystemShutterSound:Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_8

    .line 433
    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0
.end method

.method static synthetic access$000(Lcom/htc/camera/CameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mFlashMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/CameraController;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSetFlashRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/CameraController;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/CameraController;)Lcom/htc/camera/g;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mAutoFocusCallback:Lcom/htc/camera/g;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/camera/CameraController;Lcom/htc/camera/g;)Lcom/htc/camera/g;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mAutoFocusCallback:Lcom/htc/camera/g;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/camera/CameraController;)Lcom/htc/camera/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mFaceDetectionListener:Lcom/htc/camera/j;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/CameraController;)Lcom/htc/camera/i;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mErrorCallback:Lcom/htc/camera/i;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/camera/CameraController;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/camera/CameraController;->mIsFirstSetFlashRunPosted:Z

    return p1
.end method

.method static synthetic access$402(Lcom/htc/camera/CameraController;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/camera/CameraController;->mIsSetFlashRunPosted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/camera/CameraController;)Lcom/htc/camera/h;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mAutoFocusMoveCallback:Lcom/htc/camera/h;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/CameraController;)Lcom/htc/camera/l;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mOneShotPreviewCallback:Lcom/htc/camera/l;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/CameraController;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCallbackBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/CameraController;)Lcom/htc/camera/l;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mPreviewCallback:Lcom/htc/camera/l;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/CameraController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkZoeSupportedInternal()V
    .locals 4

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/htc/camera/CameraController;->zoeSupportedStatus:Lcom/htc/camera/SupportState;

    if-eqz v0, :cond_1

    .line 2819
    :cond_0
    :goto_0
    return-void

    .line 2804
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_2

    .line 2805
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2808
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "zoe-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2809
    sget v1, Lcom/htc/lib3/media/HtcMediaRecorderUtils$OutputFormat;->ZOE_STORY:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    .line 2810
    const-string v0, "false"

    .line 2811
    :cond_3
    invoke-direct {p0, v0}, Lcom/htc/camera/CameraController;->parseSupportedStatus(Ljava/lang/String;)Lcom/htc/camera/SupportState;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/CameraController;->zoeSupportedStatus:Lcom/htc/camera/SupportState;

    .line 2814
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    sget-object v2, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v1, v2, :cond_0

    .line 2816
    new-instance v1, Lcom/htc/camera/CameraFeatureFile;

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-direct {v1, v2, v3}, Lcom/htc/camera/CameraFeatureFile;-><init>(Landroid/content/Context;Lcom/htc/camera/CameraType;)V

    .line 2817
    const-string v2, "zoe-supported"

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraFeatureFile;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDriverContiBurstSupportMode()Lcom/htc/camera/CameraController$ContiBurstSupportMode;
    .locals 2

    .prologue
    .line 2306
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHtcDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2307
    sget-object v0, Lcom/htc/camera/CameraController$ContiBurstSupportMode;->Take:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    .line 2320
    :goto_0
    return-object v0

    .line 2309
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 2310
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2313
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "contiburst-support-mode"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2317
    const-string v1, "take"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2318
    sget-object v0, Lcom/htc/camera/CameraController$ContiBurstSupportMode;->Take:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    goto :goto_0

    .line 2320
    :cond_2
    sget-object v0, Lcom/htc/camera/CameraController$ContiBurstSupportMode;->Auto:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    goto :goto_0
.end method

.method private isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2891
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static openCamera(Lcom/htc/camera/CameraType;)Landroid/hardware/Camera;
    .locals 3

    .prologue
    .line 557
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCamera("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget v0, p0, Lcom/htc/camera/CameraType;->id:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method private parseSupportedStatus(Ljava/lang/String;)Lcom/htc/camera/SupportState;
    .locals 1

    .prologue
    .line 2823
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2824
    sget-object v0, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    .line 2830
    :goto_0
    return-object v0

    .line 2825
    :cond_0
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2826
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    goto :goto_0

    .line 2827
    :cond_1
    const-string v0, "na"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2828
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_READY:Lcom/htc/camera/SupportState;

    goto :goto_0

    .line 2830
    :cond_2
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    goto :goto_0
.end method

.method private resumeCamera(Lcom/htc/camera/CameraType;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 637
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeCamera("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget-object v6, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    monitor-enter v6

    .line 641
    :try_start_0
    sget-object v0, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 643
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    move-object v5, v0

    .line 649
    :goto_0
    if-eqz v5, :cond_20

    .line 652
    sget-object v0, Lcom/htc/camera/CameraController$14;->$SwitchMap$com$htc$camera$CameraController$ControllerState:[I

    iget-object v1, v5, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    invoke-virtual {v1}, Lcom/htc/camera/CameraController$ControllerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 661
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeCamera() - Controller state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    monitor-exit v6

    .line 883
    :goto_1
    return-void

    .line 657
    :pswitch_0
    const-string v0, "CameraController"

    const-string v1, "resumeCamera() - Controller state is "

    iget-object v2, v5, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    const-string v3, ", resume preview state"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 658
    invoke-static {p1}, Lcom/htc/camera/CameraController;->resumePreview(Lcom/htc/camera/CameraType;)V

    .line 659
    monitor-exit v6

    goto :goto_1

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 666
    :pswitch_1
    :try_start_1
    const-string v0, "CameraController"

    const-string v1, "resumeCamera() - Open camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v0, "Open camera"

    const-wide/16 v7, 0x1388

    invoke-direct {p0, v0, v7, v8}, Lcom/htc/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/htc/camera/Handle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 670
    :try_start_2
    invoke-static {p1}, Lcom/htc/camera/CameraController;->openCamera(Lcom/htc/camera/CameraType;)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, v5, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 680
    :try_start_3
    invoke-direct {p0, v1}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    .line 684
    const-string v0, "CameraController"

    const-string v1, "resumeCamera() - Restore camera parameters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 688
    :try_start_4
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 689
    iput-object v3, v5, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 690
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mModifiedParameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 692
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 693
    instance-of v8, v1, Ljava/lang/Integer;

    if-eqz v8, :cond_18

    .line 694
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 699
    :catch_0
    move-exception v0

    .line 701
    :try_start_5
    const-string v1, "CameraController"

    const-string v3, "resumeCamera() - Fail to restore camera parameters"

    invoke-static {v1, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    .line 706
    :goto_3
    sget-object v0, Lcom/htc/camera/CameraController$ControllerState;->Ready:Lcom/htc/camera/CameraController$ControllerState;

    iput-object v0, v5, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    .line 709
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mErrorCallbackAdapter:Landroid/hardware/Camera$ErrorCallback;

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v3, v5, Lcom/htc/camera/CameraController;->mErrorCallbackAdapter:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 715
    :cond_1
    :try_start_6
    iget v0, v5, Lcom/htc/camera/CameraController;->mDisplayOrientation:I

    invoke-virtual {v5, v0}, Lcom/htc/camera/CameraController;->setDisplayOrientation(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 723
    :goto_4
    :try_start_7
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    if-eqz v0, :cond_2

    .line 725
    const-string v0, "CameraController"

    const-string v3, "resumeCamera() - Restore preview texture"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 728
    :try_start_8
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v5, v0}, Lcom/htc/camera/CameraController;->setPreviewAdapter(Lcom/htc/camera/CameraPreviewAdapter;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 737
    :cond_2
    :goto_5
    :try_start_9
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPreviewSurface:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 739
    const-string v0, "CameraController"

    const-string v3, "resumeCamera() - Restore preview surface"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 742
    :try_start_a
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPreviewSurface:Landroid/view/SurfaceHolder;

    invoke-virtual {v5, v0}, Lcom/htc/camera/CameraController;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 751
    :cond_3
    :goto_6
    if-eqz v1, :cond_16

    .line 754
    :try_start_b
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mAntibanding:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 755
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mAntibanding:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 758
    :cond_4
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mFocusAreas:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 759
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mFocusAreas:Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 760
    :cond_5
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 761
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 762
    :cond_6
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mMeteringAreas:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 763
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mMeteringAreas:Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 766
    :cond_7
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mColorEffect:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 767
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mColorEffect:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 770
    :cond_8
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mExposureCompensation:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 771
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mExposureCompensation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 774
    :cond_9
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mFlashMode:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 775
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/htc/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 778
    :cond_a
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mJpegQuality:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 779
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mJpegQuality:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 782
    :cond_b
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mIsAutoExposureLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 783
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mIsAutoExposureLocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 786
    :cond_c
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mIsAutoWhiteBalanceLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 787
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mIsAutoWhiteBalanceLocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 790
    :cond_d
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_e

    .line 791
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mLocation:Landroid/location/Location;

    invoke-virtual {v5, v0}, Lcom/htc/camera/CameraController;->setLocation(Landroid/location/Location;)V

    .line 794
    :cond_e
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPictureSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v3, v5, Lcom/htc/camera/CameraController;->mPictureSize:Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v1, v0, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 797
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPreviewFpsRange:Lcom/htc/camera/Range;

    if-eqz v0, :cond_f

    .line 798
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPreviewFpsRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPreviewFpsRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 801
    :cond_f
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPreviewSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v3, v5, Lcom/htc/camera/CameraController;->mPreviewSize:Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v1, v0, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 804
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mRecordingHint:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 805
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mRecordingHint:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 808
    :cond_10
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mRotation:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 809
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mRotation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 812
    :cond_11
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mSceneMode:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 813
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 816
    :cond_12
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mVideoStabilization:Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    .line 817
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mVideoStabilization:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 820
    :cond_13
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mWhiteBalance:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 821
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mWhiteBalance:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 824
    :cond_14
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPinchZoom:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 825
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mHtcWrapCamera:Lcom/htc/camera/wrapper/HtcWrapCamera;

    iget-object v3, v5, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v4, v5, Lcom/htc/camera/CameraController;->mPinchZoom:Ljava/lang/Integer;

    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/wrapper/HtcWrapCamera;->setPinchZoom(Landroid/hardware/Camera;Ljava/lang/Integer;)V

    .line 826
    :cond_15
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mZoom:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    .line 827
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mZoom:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 831
    :cond_16
    const-string v0, "CameraController"

    const-string v1, "resumeCamera() - Apply parameters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-virtual {v5}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 835
    iget-boolean v0, v5, Lcom/htc/camera/CameraController;->mIsPreviewStarted:Z

    if-eqz v0, :cond_17

    .line 837
    const-string v0, "CameraController"

    const-string v1, "resumeCamera() - Restart preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-virtual {v5}, Lcom/htc/camera/CameraController;->startPreview()V

    .line 842
    :cond_17
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mCallbackBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 843
    if-lez v3, :cond_1b

    .line 845
    const-string v0, "CameraController"

    const-string v1, "resumeCamera() - Setup call-back buffers"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 846
    :goto_7
    if-ge v1, v3, :cond_1b

    .line 847
    iget-object v2, v5, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v0, v5, Lcom/htc/camera/CameraController;->mCallbackBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 846
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 672
    :catch_1
    move-exception v0

    .line 674
    :try_start_c
    const-string v2, "CameraController"

    const-string v3, "resumeCamera() - Fail to open camera"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 675
    sget-object v0, Lcom/htc/camera/CameraController$ControllerState;->Error:Lcom/htc/camera/CameraController$ControllerState;

    iput-object v0, v5, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 680
    :try_start_d
    invoke-direct {p0, v1}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    .line 676
    monitor-exit v6

    goto/16 :goto_1

    .line 680
    :catchall_1
    move-exception v0

    invoke-direct {p0, v1}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 696
    :cond_18
    :try_start_e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v3, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    :cond_19
    move-object v1, v4

    goto :goto_8

    :cond_1a
    move-object v1, v3

    .line 703
    goto/16 :goto_3

    .line 717
    :catch_2
    move-exception v0

    .line 719
    :try_start_f
    const-string v3, "CameraController"

    const-string v4, "resumeCamera() - Fail to restore preview orientation"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 730
    :catch_3
    move-exception v0

    .line 732
    const-string v3, "CameraController"

    const-string v4, "resumeCamera() - Fail to restore preview texture"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 744
    :catch_4
    move-exception v0

    .line 746
    const-string v3, "CameraController"

    const-string v4, "resumeCamera() - Fail to restore preview surface"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 849
    :cond_1b
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPreviewCallback:Lcom/htc/camera/l;

    if-eqz v0, :cond_1c

    .line 851
    const-string v0, "CameraController"

    const-string v1, "resumeCamera() - Setup preview call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPreviewCallback:Lcom/htc/camera/l;

    invoke-virtual {v5, v0}, Lcom/htc/camera/CameraController;->setPreviewCallbackWithBuffer(Lcom/htc/camera/l;)V

    .line 854
    :cond_1c
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mOneShotPreviewCallback:Lcom/htc/camera/l;

    if-eqz v0, :cond_1d

    .line 856
    const-string v0, "CameraController"

    const-string v1, "resumeCamera() - Setup one-shot preview call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mPreviewCallback:Lcom/htc/camera/l;

    invoke-virtual {v5, v0}, Lcom/htc/camera/CameraController;->setOneShotPreviewCallback(Lcom/htc/camera/l;)V

    .line 861
    :cond_1d
    iget-boolean v0, v5, Lcom/htc/camera/CameraController;->mIsFaceDetectionStarted:Z

    if-eqz v0, :cond_1e

    .line 863
    const-string v0, "CameraController"

    const-string v1, "resumeCamera() - Restart face detection"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/htc/camera/CameraController;->mIsFaceDetectionStarted:Z

    .line 865
    invoke-virtual {v5}, Lcom/htc/camera/CameraController;->startFaceDetection()V

    .line 869
    :cond_1e
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mHtcCallback:Lcom/htc/camera/wrapper/a;

    if-eqz v0, :cond_1f

    .line 871
    const-string v0, "CameraController"

    const-string v1, "resumeCamera() - Setup HTC call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mHtcCallback:Lcom/htc/camera/wrapper/a;

    invoke-virtual {v5, v0}, Lcom/htc/camera/CameraController;->setHtcCallback(Lcom/htc/camera/wrapper/a;)V

    .line 875
    :cond_1f
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mAutoFocusMoveCallback:Lcom/htc/camera/h;

    if-eqz v0, :cond_20

    .line 877
    const-string v0, "CameraController"

    const-string v1, "resumeCamera() - Setup autoFocusMove call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v0, v5, Lcom/htc/camera/CameraController;->mAutoFocusMoveCallback:Lcom/htc/camera/h;

    invoke-virtual {v5, v0}, Lcom/htc/camera/CameraController;->setAutoFocusMoveCallback(Lcom/htc/camera/h;)V

    .line 882
    :cond_20
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    :cond_21
    move-object v5, v4

    goto/16 :goto_0

    .line 652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resumeFrontCameras()V
    .locals 1

    .prologue
    .line 898
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-direct {p0, v0}, Lcom/htc/camera/CameraController;->resumeCamera(Lcom/htc/camera/CameraType;)V

    .line 899
    sget-object v0, Lcom/htc/camera/CameraType;->Front3D:Lcom/htc/camera/CameraType;

    invoke-direct {p0, v0}, Lcom/htc/camera/CameraController;->resumeCamera(Lcom/htc/camera/CameraType;)V

    .line 900
    return-void
.end method

.method private static resumePreview(Lcom/htc/camera/CameraType;)V
    .locals 5

    .prologue
    .line 934
    sget-object v2, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    monitor-enter v2

    .line 936
    const/4 v1, 0x0

    .line 937
    :try_start_0
    sget-object v0, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 939
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v4

    if-ne v4, p0, :cond_0

    .line 945
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/htc/camera/CameraController;->mIsPreviewStarted:Z

    if-eqz v1, :cond_1

    .line 947
    const-string v1, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePreview("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->startPreview()V

    .line 950
    :cond_1
    monitor-exit v2

    .line 951
    return-void

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private setSupportedList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2835
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 2836
    const-string v0, "CameraController"

    const-string v1, "setSupportedList() - mCameraParameters = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    :cond_0
    :goto_0
    return-void

    .line 2841
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFlashModes:Ljava/util/List;

    .line 2842
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFlashModes:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFlashModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 2843
    :cond_2
    const-string v1, "CameraController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSupportedList() - Not support flash mode ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFlashModes:Ljava/util/List;

    if-eqz v0, :cond_c

    const-string v0, ", Size: 0"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultFlashMode:Ljava/lang/String;

    .line 2852
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFocusModes:Ljava/util/List;

    .line 2853
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFocusModes:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFocusModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 2855
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mAutoFocusSupported:Ljava/lang/Boolean;

    .line 2856
    const-string v0, "CameraController"

    const-string v1, "setSupportedList() - SupportedList.FocusModes == null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultFocusMode:Ljava/lang/String;

    .line 2869
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedWhiteBalance:Ljava/util/List;

    .line 2870
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedWhiteBalance:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedWhiteBalance:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 2871
    :cond_5
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSupportedList() - No supported white balance ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedEffects:Ljava/util/List;

    .line 2875
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedEffects:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 2876
    :cond_7
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSupportedList() - No supported effects ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedAntibanding:Ljava/util/List;

    .line 2880
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedAntibanding:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedAntibanding:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 2881
    :cond_9
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSupportedList() - No supported anti-banding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedSceneModes:Ljava/util/List;

    .line 2885
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedSceneModes:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedSceneModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2886
    :cond_b
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSupportedList() - No supported scene mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2843
    :cond_c
    const-string v0, ""

    goto/16 :goto_1

    .line 2858
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFocusModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_e

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFocusModes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFocusModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_10

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFocusModes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2860
    :cond_f
    const-string v0, "CameraController"

    const-string v1, "setSupportedList() - mAutoFocusSupported is false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mAutoFocusSupported:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 2863
    :cond_10
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mAutoFocusSupported:Ljava/lang/Boolean;

    .line 2864
    const-string v0, "CameraController"

    const-string v1, "setSupportedList() - mAutoFocusSupported is true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static startDriverPreview(Lcom/htc/camera/CameraController;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3112
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDriverPreview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - Camera.startPreview [Start]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3113
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 3114
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDriverPreview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - Camera.startPreview [End]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    iput-boolean v3, p0, Lcom/htc/camera/CameraController;->mIsDriverPreviewStarted:Z

    .line 3118
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    .line 3122
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mFaceDetectionListenerAdapter:Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 3123
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3133
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsFirstSetFlashRunPosted:Z

    if-nez v0, :cond_3

    .line 3135
    const-string v0, "CameraController"

    const-string v1, "startDriverPreview() - poast SetFlashRunnable [Start]"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 3137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    .line 3138
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsSetFlashRunPosted:Z

    if-nez v0, :cond_2

    .line 3139
    iput-boolean v3, p0, Lcom/htc/camera/CameraController;->mIsSetFlashRunPosted:Z

    .line 3140
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mSetFlashRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3141
    const-string v0, "CameraController"

    const-string v1, "startDriverPreview() - postDelayed mSetFlashRunnable"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    :cond_2
    const-string v0, "CameraController"

    const-string v1, "startDriverPreview() - poast SetFlashRunnable [End]"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    :cond_3
    return-void

    .line 3125
    :catch_0
    move-exception v0

    .line 3127
    const-string v1, "CameraController"

    const-string v2, "startDriverPreview() - Exception when set face detection"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startTimeoutTimer(Ljava/lang/String;J)Lcom/htc/camera/Handle;
    .locals 7

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mTimeoutController:Lcom/htc/camera/debug/a;

    invoke-virtual {v0}, Lcom/htc/camera/debug/a;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v5

    .line 2969
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v4, p0, Lcom/htc/camera/CameraController;->mOperationTimeoutCallback:Lcom/htc/camera/debug/b;

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 2971
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static stopDriverPreview(Lcom/htc/camera/CameraController;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3202
    const-string v0, "CameraController"

    const-string v1, "stopDriverPreview("

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3206
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3207
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mSetFlashRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3208
    :cond_0
    iput-boolean v4, p0, Lcom/htc/camera/CameraController;->mIsFirstSetFlashRunPosted:Z

    .line 3209
    iput-boolean v4, p0, Lcom/htc/camera/CameraController;->mIsSetFlashRunPosted:Z

    .line 3211
    const-string v0, "torch"

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3213
    const-string v0, "CameraController"

    const-string v1, "stopDriverPreview() - Change flash mode from torch to off"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 3216
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3217
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3222
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 3223
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 3224
    :cond_2
    iput-boolean v4, p0, Lcom/htc/camera/CameraController;->mIsDriverPreviewStarted:Z

    .line 3225
    return-void
.end method

.method private stopTimeoutTimer(Lcom/htc/camera/Handle;)V
    .locals 1

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 2980
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mTimeoutController:Lcom/htc/camera/debug/a;

    invoke-virtual {v0, p1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 2981
    :cond_0
    return-void
.end method

.method private supportLiveFaceBeauty()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2572
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2586
    :goto_0
    return v0

    .line 2575
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 2577
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2579
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "live-facebeauty-supported"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2580
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2581
    const/4 v0, 0x1

    goto :goto_0

    .line 2585
    :cond_2
    const-string v1, "CameraController"

    const-string v2, "Live FaceBeauty is not supported."

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private supportOis()Z
    .locals 2

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2694
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2697
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "ois_support"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2699
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2700
    const/4 v0, 0x1

    .line 2705
    :goto_0
    return v0

    .line 2704
    :cond_1
    const-string v0, "CameraController"

    const-string v1, "OIS is not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportPhotoHDR()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2592
    const-string v1, "hdr"

    invoke-virtual {p0, v1}, Lcom/htc/camera/CameraController;->isSceneModeSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2607
    :cond_0
    :goto_0
    return v0

    .line 2595
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_2

    .line 2596
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2599
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "hdr-supported"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2601
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2606
    const-string v0, "CameraController"

    const-string v1, "Photo HDR is not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportSlowMotion()Z
    .locals 2

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2614
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2617
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-slow-motion-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2619
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2620
    const/4 v0, 0x1

    .line 2625
    :goto_0
    return v0

    .line 2624
    :cond_1
    const-string v0, "CameraController"

    const-string v1, "Video slow motion is not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportSmileFromFace()Z
    .locals 4

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2632
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2635
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "smileinfo-byface-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2636
    const-string v1, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smileinfo-byface-supported:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private supportVideo1080p60fps()Z
    .locals 2

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2660
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2663
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-1080p60fps-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2665
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2666
    const/4 v0, 0x1

    .line 2671
    :goto_0
    return v0

    .line 2670
    :cond_1
    const-string v0, "CameraController"

    const-string v1, "Video 1080p 60fps is not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportVideo720p60fps()Z
    .locals 2

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2643
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2646
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-720p60fps-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2648
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2649
    const/4 v0, 0x1

    .line 2654
    :goto_0
    return v0

    .line 2653
    :cond_1
    const-string v0, "CameraController"

    const-string v1, "Video 720p 60fps is not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportVideoHDR()Z
    .locals 2

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2677
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2680
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-hdr-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2682
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2683
    const/4 v0, 0x1

    .line 2688
    :goto_0
    return v0

    .line 2687
    :cond_1
    const-string v0, "CameraController"

    const-string v1, "Video HDR is not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportVideoStabilization()Z
    .locals 2

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2730
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2737
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2739
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2740
    const/4 v0, 0x1

    .line 2745
    :goto_0
    return v0

    .line 2744
    :cond_1
    const-string v0, "CameraController"

    const-string v1, "Video Stabilization is not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private suspendCamera(Lcom/htc/camera/CameraType;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 566
    const-string v0, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "suspendCamera("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    sget-object v3, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    monitor-enter v3

    .line 570
    :try_start_0
    sget-object v0, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 572
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v5

    if-ne v5, p1, :cond_0

    move-object v2, v0

    .line 578
    :cond_1
    if-eqz v2, :cond_4

    .line 581
    sget-object v0, Lcom/htc/camera/CameraController$14;->$SwitchMap$com$htc$camera$CameraController$ControllerState:[I

    iget-object v4, v2, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    invoke-virtual {v4}, Lcom/htc/camera/CameraController$ControllerState;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 593
    const-string v0, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "suspendCamera() - Controller state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    monitor-exit v3

    move v0, v1

    .line 628
    :goto_0
    return v0

    .line 584
    :pswitch_0
    sget-object v0, Lcom/htc/camera/CameraController$ControllerState;->Suspended:Lcom/htc/camera/CameraController$ControllerState;

    iput-object v0, v2, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    .line 598
    iget-object v0, v2, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_2

    .line 600
    const-string v0, "CameraController"

    const-string v1, "suspendCamera() - Backup camera parameters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, v2, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, v2, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 605
    :cond_2
    iget-object v0, v2, Lcom/htc/camera/CameraController;->mAutoFocusCallback:Lcom/htc/camera/g;

    if-eqz v0, :cond_3

    .line 607
    const-string v0, "CameraController"

    const-string v1, "suspendCamera() - Cancel auto-focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, v2, Lcom/htc/camera/CameraController;->mAutoFocusCallback:Lcom/htc/camera/g;

    .line 609
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/htc/camera/CameraController;->mAutoFocusCallback:Lcom/htc/camera/g;

    .line 610
    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/g;->onAutoFocus(ZLcom/htc/camera/CameraController;)V

    .line 614
    :cond_3
    const-string v0, "Close camera"

    const-wide/16 v4, 0x1388

    invoke-direct {p0, v0, v4, v5}, Lcom/htc/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/htc/camera/Handle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 617
    :try_start_1
    const-string v0, "CameraController"

    const-string v4, "suspendCamera() - Close camera [start]"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, v2, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 619
    const-string v0, "CameraController"

    const-string v4, "suspendCamera() - Close camera [end]"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 623
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, v2, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    .line 624
    invoke-direct {p0, v1}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    .line 626
    const/4 v0, 0x1

    monitor-exit v3

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 587
    :pswitch_1
    :try_start_3
    const-string v0, "CameraController"

    const-string v2, "suspendCamera() - Camera is already suspended"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 590
    :pswitch_2
    const-string v0, "CameraController"

    const-string v2, "suspendCamera() - Camera is closed"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 623
    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    .line 624
    invoke-direct {p0, v1}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    .line 623
    throw v0

    .line 628
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private suspendFrontCameras()Z
    .locals 2

    .prologue
    .line 890
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-direct {p0, v0}, Lcom/htc/camera/CameraController;->suspendCamera(Lcom/htc/camera/CameraType;)Z

    move-result v0

    sget-object v1, Lcom/htc/camera/CameraType;->Front3D:Lcom/htc/camera/CameraType;

    invoke-direct {p0, v1}, Lcom/htc/camera/CameraController;->suspendCamera(Lcom/htc/camera/CameraType;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private throwIfClosed()V
    .locals 2

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    sget-object v1, Lcom/htc/camera/CameraController$ControllerState;->Closed:Lcom/htc/camera/CameraController$ControllerState;

    if-ne v0, v1, :cond_0

    .line 2998
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Controller state is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2999
    :cond_0
    return-void
.end method

.method private throwIfNotReady()V
    .locals 3

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    sget-object v1, Lcom/htc/camera/CameraController$ControllerState;->Ready:Lcom/htc/camera/CameraController$ControllerState;

    if-eq v0, v1, :cond_0

    .line 2989
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2990
    :cond_0
    return-void
.end method


# virtual methods
.method public final CastHtcFace(Landroid/hardware/Camera$Face;)Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;
    .locals 2

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    sget-object v1, Lcom/htc/camera/CameraController$ControllerState;->Closed:Lcom/htc/camera/CameraController$ControllerState;

    if-ne v0, v1, :cond_0

    .line 3638
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Controller is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3639
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHtcWrapCamera:Lcom/htc/camera/wrapper/HtcWrapCamera;

    if-eqz v0, :cond_1

    .line 3640
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHtcWrapCamera:Lcom/htc/camera/wrapper/HtcWrapCamera;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/wrapper/HtcWrapCamera;->CastHtcFace(Landroid/hardware/Camera;Landroid/hardware/Camera$Face;)Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;

    move-result-object v0

    .line 3642
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final addCallbackBuffer([B)V
    .locals 2

    .prologue
    .line 3232
    if-nez p1, :cond_0

    .line 3233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3234
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    sget-object v1, Lcom/htc/camera/CameraController$ControllerState;->Closed:Lcom/htc/camera/CameraController$ControllerState;

    if-ne v0, v1, :cond_1

    .line 3235
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Controller is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3236
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCallbackBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3237
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 3238
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 3239
    :cond_2
    return-void
.end method

.method public final autoFocus(Lcom/htc/camera/g;)V
    .locals 2

    .prologue
    .line 3471
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfNotReady()V

    .line 3474
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mAutoFocusCallbackAdapter:Landroid/hardware/Camera$AutoFocusCallback;

    if-nez v0, :cond_0

    .line 3476
    new-instance v0, Lcom/htc/camera/CameraController$11;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraController$11;-><init>(Lcom/htc/camera/CameraController;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mAutoFocusCallbackAdapter:Landroid/hardware/Camera$AutoFocusCallback;

    .line 3492
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsDriverPreviewStarted:Z

    if-eqz v0, :cond_2

    .line 3494
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mAutoFocusCallback:Lcom/htc/camera/g;

    .line 3495
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mAutoFocusCallbackAdapter:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3503
    :cond_1
    :goto_0
    return-void

    .line 3499
    :cond_2
    const-string v0, "CameraController"

    const-string v1, "autoFocus() - Preview is not actually started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    if-eqz p1, :cond_1

    .line 3501
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/htc/camera/g;->onAutoFocus(ZLcom/htc/camera/CameraController;)V

    goto :goto_0
.end method

.method public final canDisableSystemShutterSound()Z
    .locals 1

    .prologue
    .line 3662
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mCanDisableSystemShutterSound:Z

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 1

    .prologue
    .line 3510
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfNotReady()V

    .line 3511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mAutoFocusCallback:Lcom/htc/camera/g;

    .line 3512
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 3513
    return-void
.end method

.method public final cancelTakePicture()Z
    .locals 2

    .prologue
    .line 3422
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHtcDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3425
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 3426
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 3428
    const-string v0, "CameraController"

    const-string v1, "cancelTakePicture() - Camera is not open"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    const/4 v0, 0x1

    .line 3444
    :goto_0
    return v0

    .line 3443
    :cond_0
    const-string v0, "CameraController"

    const-string v1, "cancelTakePicture() - Cannot cancel capture on non-HTC device"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final close()V
    .locals 5

    .prologue
    .line 488
    sget-object v1, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    monitor-enter v1

    .line 490
    :try_start_0
    const-string v0, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    sget-object v2, Lcom/htc/camera/CameraController$ControllerState;->Closed:Lcom/htc/camera/CameraController$ControllerState;

    if-ne v0, v2, :cond_0

    .line 495
    const-string v0, "CameraController"

    const-string v2, "close() - Controller is already closed"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    monitor-exit v1

    .line 550
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 502
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->suspendFrontCameras()Z

    move-result v0

    .line 507
    :goto_1
    sget-object v2, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 510
    sget-object v2, Lcom/htc/camera/CameraController$ControllerState;->Closed:Lcom/htc/camera/CameraController$ControllerState;

    iput-object v2, p0, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    .line 513
    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 515
    const-string v2, "Close camera"

    const-wide/16 v3, 0x1388

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/htc/camera/Handle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 518
    :try_start_1
    const-string v3, "CameraController"

    const-string v4, "close() - Release camera [start]"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v3, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 520
    const-string v3, "CameraController"

    const-string v4, "close() - Release camera [end]"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 524
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    .line 525
    invoke-direct {p0, v2}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    .line 528
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/camera/CameraController;->mHtcWrapCamera:Lcom/htc/camera/wrapper/HtcWrapCamera;

    .line 531
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/camera/CameraController;->mAutoFocusCallback:Lcom/htc/camera/g;

    .line 532
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/camera/CameraController;->mErrorCallback:Lcom/htc/camera/i;

    .line 533
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/camera/CameraController;->mFaceDetectionListener:Lcom/htc/camera/j;

    .line 534
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/camera/CameraController;->mHtcCallback:Lcom/htc/camera/wrapper/a;

    .line 535
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/camera/CameraController;->mPreviewCallback:Lcom/htc/camera/l;

    .line 536
    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCallbackBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 537
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/camera/CameraController;->mAutoFocusMoveCallback:Lcom/htc/camera/h;

    .line 540
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/camera/CameraController;->mPreviewSurface:Landroid/view/SurfaceHolder;

    .line 541
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/camera/CameraController;->mPreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 544
    iget-object v2, p0, Lcom/htc/camera/CameraController;->mModifiedParameters:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 547
    if-eqz v0, :cond_2

    .line 548
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->resumeFrontCameras()V

    .line 549
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 504
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 524
    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    .line 525
    invoke-direct {p0, v2}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    .line 524
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final disableReview()V
    .locals 1

    .prologue
    .line 3461
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 3462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsReviewEnabled:Z

    .line 3463
    return-void
.end method

.method public doSetCameraParameters()V
    .locals 4

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 459
    :try_start_0
    const-string v0, "CameraController"

    const-string v1, "doSetCameraParameters("

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsPictureSizeChanged:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 473
    const-string v0, "CameraController"

    const-string v1, "setParameters exception"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final enableReview()V
    .locals 1

    .prologue
    .line 3452
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 3453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsReviewEnabled:Z

    .line 3454
    return-void
.end method

.method public getBrightnessRange()Lcom/htc/camera/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mBrightnessRange:Lcom/htc/camera/Range;

    if-nez v0, :cond_0

    .line 1940
    :try_start_0
    new-instance v0, Lcom/htc/camera/Range;

    invoke-virtual {p0}, Lcom/htc/camera/CameraController;->getMinExposureCompensation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/CameraController;->getMaxExposureCompensation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mBrightnessRange:Lcom/htc/camera/Range;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mBrightnessRange:Lcom/htc/camera/Range;

    return-object v0

    .line 1945
    :catch_0
    move-exception v0

    .line 1947
    const-string v1, "CameraController"

    const-string v2, "getBrightnessRange() - Cannot get brightness range, use default (-12, 12)"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1949
    new-instance v0, Lcom/htc/camera/Range;

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mBrightnessRange:Lcom/htc/camera/Range;

    goto :goto_0
.end method

.method public final getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public final getCameraType()Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    return-object v0
.end method

.method public final getContiBurstSupportMode()Lcom/htc/camera/CameraController$ContiBurstSupportMode;
    .locals 1

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mContiBurstSupportMode:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    return-object v0
.end method

.method public getContrastRange()Lcom/htc/camera/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mContrastRange:Lcom/htc/camera/Range;

    if-nez v0, :cond_0

    .line 1962
    :try_start_0
    new-instance v0, Lcom/htc/camera/Range;

    const-string v1, "contrast-min"

    invoke-virtual {p0, v1}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contrast-max"

    invoke-virtual {p0, v2}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mContrastRange:Lcom/htc/camera/Range;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1988
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mContrastRange:Lcom/htc/camera/Range;

    return-object v0

    .line 1967
    :catch_0
    move-exception v0

    .line 1969
    const-string v1, "CameraController"

    const-string v2, "getContrastRange() - try new parameters"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    :try_start_1
    new-instance v1, Lcom/htc/camera/Range;

    const-string v2, "min-contrast"

    invoke-virtual {p0, v2}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "max-contrast"

    invoke-virtual {p0, v3}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mContrastRange:Lcom/htc/camera/Range;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1979
    :catch_1
    move-exception v1

    .line 1981
    const-string v1, "CameraController"

    const-string v2, "getContrastRange() - Cannot get contrast range, use default (0, 10)"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1983
    new-instance v0, Lcom/htc/camera/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mContrastRange:Lcom/htc/camera/Range;

    goto :goto_0
.end method

.method public getDefaultBrightness()I
    .locals 2

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultBrightness:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2161
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mBrightnessRange:Lcom/htc/camera/Range;

    if-nez v0, :cond_0

    .line 2162
    invoke-virtual {p0}, Lcom/htc/camera/CameraController;->getBrightnessRange()Lcom/htc/camera/Range;

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mBrightnessRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mBrightnessRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultBrightness:Ljava/lang/Integer;

    .line 2166
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultBrightness:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefaultContrast()I
    .locals 2

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultContrast:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2173
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mContrastRange:Lcom/htc/camera/Range;

    if-nez v0, :cond_0

    .line 2174
    invoke-virtual {p0}, Lcom/htc/camera/CameraController;->getContrastRange()Lcom/htc/camera/Range;

    .line 2178
    :cond_0
    :try_start_0
    const-string v0, "contrast-def"

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultContrast:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2187
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultContrast:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 2180
    :catch_0
    move-exception v0

    .line 2182
    const-string v0, "CameraController"

    const-string v1, "getDefaultContrast() - Cannot get default contrast value"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mContrastRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mContrastRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultContrast:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getDefaultSaturation()I
    .locals 2

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultSaturation:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2194
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSaturationRange:Lcom/htc/camera/Range;

    if-nez v0, :cond_0

    .line 2195
    invoke-virtual {p0}, Lcom/htc/camera/CameraController;->getSaturationRange()Lcom/htc/camera/Range;

    .line 2199
    :cond_0
    :try_start_0
    const-string v0, "saturation-def"

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultSaturation:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultSaturation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 2201
    :catch_0
    move-exception v0

    .line 2203
    const-string v0, "CameraController"

    const-string v1, "getDefaultSaturation() - Cannot get default saturation value"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSaturationRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSaturationRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultSaturation:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getDefaultSharpness()I
    .locals 2

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultSharpness:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2215
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSharpnessRange:Lcom/htc/camera/Range;

    if-nez v0, :cond_0

    .line 2216
    invoke-virtual {p0}, Lcom/htc/camera/CameraController;->getSharpnessRange()Lcom/htc/camera/Range;

    .line 2220
    :cond_0
    :try_start_0
    const-string v0, "sharpness-def"

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultSharpness:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2229
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultSharpness:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 2222
    :catch_0
    move-exception v0

    .line 2224
    const-string v0, "CameraController"

    const-string v1, "getDefaultSharpness() - Cannot get default sharpness value"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSharpnessRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSharpnessRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultSharpness:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final getHorizontalViewAngle()F
    .locals 1

    .prologue
    .line 1905
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsViewAngleChanged:Z

    if-eqz v0, :cond_1

    .line 1907
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsPictureSizeChanged:Z

    if-eqz v0, :cond_0

    .line 1908
    invoke-virtual {p0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1910
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsViewAngleChanged:Z

    .line 1915
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    return v0
.end method

.method public final getIntCameraParameter(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getManualFocusCurrentStep()I
    .locals 3

    .prologue
    .line 2143
    const/4 v0, -0x1

    .line 2147
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2148
    const-string v1, "current-focus-step"

    invoke-virtual {p0, v1}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2154
    :goto_0
    return v0

    .line 2150
    :catch_0
    move-exception v1

    .line 2152
    const-string v1, "CameraController"

    const-string v2, "getManualFocusCurrentStep() - Cannot get manual focus current step"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getManualFocusRange()Lcom/htc/camera/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mManualFocusRange:Lcom/htc/camera/Range;

    if-nez v0, :cond_0

    .line 2107
    :try_start_0
    new-instance v0, Lcom/htc/camera/Range;

    const-string v1, "min-focus"

    invoke-virtual {p0, v1}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "max-focus"

    invoke-virtual {p0, v2}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mManualFocusRange:Lcom/htc/camera/Range;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2119
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mManualFocusRange:Lcom/htc/camera/Range;

    return-object v0

    .line 2112
    :catch_0
    move-exception v0

    .line 2114
    const-string v0, "CameraController"

    const-string v1, "getManualFocusRange() - Cannot get manual focus range"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getMaxExposureCompensation()I
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2334
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    return v0
.end method

.method public final getMinExposureCompensation()I
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 2327
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    return v0
.end method

.method public final getPreviewFormat()I
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    return v0
.end method

.method public getPreviewSizeParameter()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getSaturationRange()Lcom/htc/camera/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSaturationRange:Lcom/htc/camera/Range;

    if-nez v0, :cond_0

    .line 1997
    :try_start_0
    new-instance v0, Lcom/htc/camera/Range;

    const-string v1, "saturation-min"

    invoke-virtual {p0, v1}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "saturation-max"

    invoke-virtual {p0, v2}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mSaturationRange:Lcom/htc/camera/Range;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2023
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSaturationRange:Lcom/htc/camera/Range;

    return-object v0

    .line 2002
    :catch_0
    move-exception v0

    .line 2004
    const-string v1, "CameraController"

    const-string v2, "getSaturationRange() - try new parameters"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    :try_start_1
    new-instance v1, Lcom/htc/camera/Range;

    const-string v2, "min-saturation"

    invoke-virtual {p0, v2}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "max-saturation"

    invoke-virtual {p0, v3}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mSaturationRange:Lcom/htc/camera/Range;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2014
    :catch_1
    move-exception v1

    .line 2016
    const-string v1, "CameraController"

    const-string v2, "getSaturationRange() - Cannot get saturation range, use default (0, 10)"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2018
    new-instance v0, Lcom/htc/camera/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mSaturationRange:Lcom/htc/camera/Range;

    goto :goto_0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSceneMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSceneMode:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "auto"

    goto :goto_0
.end method

.method public getSettingsInfo(Ljava/lang/String;)Lcom/htc/camera/CameraController$SettingInfo;
    .locals 11

    .prologue
    const/16 v10, 0xf

    const/16 v9, 0x19

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 2338
    new-instance v0, Lcom/htc/camera/CameraController$SettingInfo;

    invoke-direct {v0}, Lcom/htc/camera/CameraController$SettingInfo;-><init>()V

    .line 2340
    const-string v1, "exposure-compensation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2342
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setMin(I)V

    .line 2343
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setMax(I)V

    .line 2344
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setStep(F)V

    .line 2345
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 2346
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2468
    :goto_0
    return-object v0

    .line 2347
    :catch_0
    move-exception v1

    .line 2348
    const-string v2, "CameraController"

    const-string v3, "exposure-compensation: set value failed !!"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2351
    :cond_0
    const-string v1, "saturation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2353
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "saturation-min"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2354
    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "saturation-max"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2355
    const-string v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saturation-min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",saturation-max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setMin(I)V

    .line 2357
    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2364
    :goto_1
    invoke-virtual {v0, v8}, Lcom/htc/camera/CameraController$SettingInfo;->setStep(F)V

    .line 2366
    :try_start_2
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "saturation-def"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2367
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saturation-def:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2375
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "saturation"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2376
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current saturation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 2378
    :catch_1
    move-exception v1

    .line 2379
    invoke-virtual {v0, v7}, Lcom/htc/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 2380
    const-string v2, "CameraController"

    const-string v3, "saturation: set current value failed !!"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2358
    :catch_2
    move-exception v1

    .line 2359
    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraController$SettingInfo;->setMin(I)V

    .line 2360
    invoke-virtual {v0, v9}, Lcom/htc/camera/CameraController$SettingInfo;->setMax(I)V

    .line 2361
    const-string v2, "CameraController"

    const-string v3, "saturation: set min, max value failed !!"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2369
    :catch_3
    move-exception v1

    .line 2370
    invoke-virtual {v0, v7}, Lcom/htc/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 2371
    const-string v2, "CameraController"

    const-string v3, "saturation: set default value failed !!"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2383
    :cond_1
    const-string v1, "contrast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2385
    :try_start_4
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "contrast-min"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2386
    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "contrast-max"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2387
    const-string v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contrast-min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",contrast-max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setMin(I)V

    .line 2389
    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 2396
    :goto_3
    invoke-virtual {v0, v8}, Lcom/htc/camera/CameraController$SettingInfo;->setStep(F)V

    .line 2398
    :try_start_5
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "contrast-def"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2399
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2400
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contrast-def int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 2408
    :goto_4
    :try_start_6
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "contrast"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2409
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current contrast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 2411
    :catch_4
    move-exception v1

    .line 2412
    invoke-virtual {v0, v7}, Lcom/htc/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 2413
    const-string v2, "CameraController"

    const-string v3, "contrast: set current value failed !!"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2390
    :catch_5
    move-exception v1

    .line 2391
    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraController$SettingInfo;->setMin(I)V

    .line 2392
    invoke-virtual {v0, v9}, Lcom/htc/camera/CameraController$SettingInfo;->setMax(I)V

    .line 2393
    const-string v2, "CameraController"

    const-string v3, "contrast: set min, max value failed !!"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2402
    :catch_6
    move-exception v1

    .line 2403
    invoke-virtual {v0, v7}, Lcom/htc/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 2404
    const-string v2, "CameraController"

    const-string v3, "contrast: set default value failed !!"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2416
    :cond_2
    const-string v1, "sharpness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2418
    :try_start_7
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "sharpness-min"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2419
    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "sharpness-max"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2420
    const-string v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sharpness-min:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",sharpness-max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setMin(I)V

    .line 2422
    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 2429
    :goto_5
    invoke-virtual {v0, v8}, Lcom/htc/camera/CameraController$SettingInfo;->setStep(F)V

    .line 2431
    :try_start_8
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "sharpness-def"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2432
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sharpness-def:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 2440
    :goto_6
    :try_start_9
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "sharpness"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2441
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current sharpness:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    .line 2443
    :catch_7
    move-exception v1

    .line 2444
    invoke-virtual {v0, v10}, Lcom/htc/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 2445
    const-string v2, "CameraController"

    const-string v3, "sharpness: set current value failed !!"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2423
    :catch_8
    move-exception v1

    .line 2424
    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraController$SettingInfo;->setMin(I)V

    .line 2425
    invoke-virtual {v0, v9}, Lcom/htc/camera/CameraController$SettingInfo;->setMax(I)V

    .line 2426
    const-string v2, "CameraController"

    const-string v3, "sharpness: set min, max value failed !!"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2434
    :catch_9
    move-exception v1

    .line 2435
    invoke-virtual {v0, v10}, Lcom/htc/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 2436
    const-string v2, "CameraController"

    const-string v3, "sharpness: set default value failed !!"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 2448
    :cond_3
    const-string v1, "taking-picture-zoom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2450
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setMin(I)V

    .line 2451
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 2457
    :goto_7
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setStep(F)V

    .line 2458
    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 2460
    :try_start_b
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "taking-picture-zoom"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    .line 2461
    :catch_a
    move-exception v1

    .line 2462
    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraController$SettingInfo;->setCurrent(I)V

    goto/16 :goto_0

    .line 2452
    :catch_b
    move-exception v1

    .line 2453
    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraController$SettingInfo;->setMin(I)V

    .line 2454
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController$SettingInfo;->setMax(I)V

    goto :goto_7

    .line 2465
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getSharpnessRange()Lcom/htc/camera/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSharpnessRange:Lcom/htc/camera/Range;

    if-nez v0, :cond_0

    .line 2032
    :try_start_0
    new-instance v0, Lcom/htc/camera/Range;

    const-string v1, "sharpness-min"

    invoke-virtual {p0, v1}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sharpness-max"

    invoke-virtual {p0, v2}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mSharpnessRange:Lcom/htc/camera/Range;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2058
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSharpnessRange:Lcom/htc/camera/Range;

    return-object v0

    .line 2037
    :catch_0
    move-exception v0

    .line 2039
    const-string v1, "CameraController"

    const-string v2, "getSharpnessRange() - try new parameters"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    :try_start_1
    new-instance v1, Lcom/htc/camera/Range;

    const-string v2, "min-sharpness"

    invoke-virtual {p0, v2}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "max-sharpness"

    invoke-virtual {p0, v3}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mSharpnessRange:Lcom/htc/camera/Range;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2049
    :catch_1
    move-exception v1

    .line 2051
    const-string v1, "CameraController"

    const-string v2, "getSharpnessRange() - Cannot get sharpness range, use default (0, 30)"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2053
    new-instance v0, Lcom/htc/camera/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mSharpnessRange:Lcom/htc/camera/Range;

    goto :goto_0
.end method

.method public final getSizeListCameraParameter(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1793
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1797
    if-nez v0, :cond_1

    .line 1798
    const/4 v0, 0x0

    .line 1822
    :goto_0
    return-object v0

    .line 1800
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1801
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 1802
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 1804
    aget-object v4, v3, v0

    .line 1805
    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1806
    if-gez v5, :cond_2

    .line 1802
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1808
    :cond_2
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1809
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1813
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1814
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1820
    new-instance v6, Landroid/hardware/Camera$Size;

    iget-object v7, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7, v5, v4}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 1822
    goto :goto_0

    .line 1816
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public final getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedEffects:Ljava/util/List;

    return-object v0
.end method

.method public final getSupportedPictureSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedPreviewSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedSceneModes:Ljava/util/List;

    return-object v0
.end method

.method public final getVerticalViewAngle()F
    .locals 1

    .prologue
    .line 1921
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsViewAngleChanged:Z

    if-eqz v0, :cond_1

    .line 1923
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsPictureSizeChanged:Z

    if-eqz v0, :cond_0

    .line 1924
    invoke-virtual {p0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1926
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsViewAngleChanged:Z

    .line 1931
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    return v0
.end method

.method public hasAutoFocus()Z
    .locals 1

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mAutoFocusSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isDriverPreviewStarted()Z
    .locals 1

    .prologue
    .line 3669
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsDriverPreviewStarted:Z

    return v0
.end method

.method public final isDualCameraSupported()Z
    .locals 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mIsDualCameraSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1169
    const-string v0, "dual-camera-supported"

    invoke-virtual {p0, v0}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mIsDualCameraSupported:Ljava/lang/Boolean;

    .line 1175
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mIsDualCameraSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1173
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mIsDualCameraSupported:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isLiveFaceBeautySupported()Z
    .locals 1

    .prologue
    .line 970
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsLiveFaceBeautySupported:Z

    return v0
.end method

.method public isOisSupported()Z
    .locals 1

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsOisSupported:Z

    return v0
.end method

.method public final isPictureCAFSupported()Z
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mIsPictureCAFSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFocusModes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFocusModes:Ljava/util/List;

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mIsPictureCAFSupported:Ljava/lang/Boolean;

    .line 1187
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mIsPictureCAFSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1185
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mIsPictureCAFSupported:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isSceneModeSupported(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedSceneModes:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public isSmartSceneDetectSupported()Z
    .locals 1

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsSmartSceneDetectSupported:Z

    return v0
.end method

.method public isSmileFromFaceSupported()Z
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mIsSmileFromFaceSupport:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVideo1080p60fpsSupported()Z
    .locals 1

    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideo1080p60fpsSupported:Z

    return v0
.end method

.method public isVideo720p60fpsSupported()Z
    .locals 1

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideo720p60fpsSupported:Z

    return v0
.end method

.method public isVideoHDRSupported()Z
    .locals 1

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideoHDRSupported:Z

    return v0
.end method

.method public isVideoSlowMotionSupported()Z
    .locals 1

    .prologue
    .line 1001
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideoSlowMotionSupported:Z

    return v0
.end method

.method public isVideoStabilizationSupported()Z
    .locals 1

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsVideoStabilizationSupported:Z

    return v0
.end method

.method public isWhiteBalanceSupported(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedWhiteBalance:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public isZoeSupported()Lcom/htc/camera/SupportState;
    .locals 3

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/htc/camera/CameraController;->zoeSupportedStatus:Lcom/htc/camera/SupportState;

    if-eqz v0, :cond_2

    .line 2756
    iget-object v0, p0, Lcom/htc/camera/CameraController;->zoeSupportedStatus:Lcom/htc/camera/SupportState;

    sget-object v1, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-ne v0, v1, :cond_0

    .line 2757
    iget-object v0, p0, Lcom/htc/camera/CameraController;->zoeSupportedStatus:Lcom/htc/camera/SupportState;

    .line 2776
    :goto_0
    return-object v0

    .line 2760
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_1

    .line 2763
    new-instance v0, Lcom/htc/camera/CameraFeatureFile;

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraFeatureFile;-><init>(Landroid/content/Context;Lcom/htc/camera/CameraType;)V

    .line 2764
    const-string v1, "zoe-supported"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraFeatureFile;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2765
    invoke-direct {p0, v0}, Lcom/htc/camera/CameraController;->parseSupportedStatus(Ljava/lang/String;)Lcom/htc/camera/SupportState;

    move-result-object v0

    goto :goto_0

    .line 2768
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->zoeSupportedStatus:Lcom/htc/camera/SupportState;

    goto :goto_0

    .line 2773
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/CameraController;->zoeSupportedStatus:Lcom/htc/camera/SupportState;

    sget-object v1, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-ne v0, v1, :cond_3

    .line 2774
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_READY:Lcom/htc/camera/SupportState;

    goto :goto_0

    .line 2776
    :cond_3
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    goto :goto_0
.end method

.method public final reconnect()V
    .locals 1

    .prologue
    .line 3616
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfNotReady()V

    .line 3617
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V

    .line 3618
    return-void
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1548
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedAntibanding:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1549
    const-string v0, "CameraController"

    const-string v1, "setAntibanding() - No supported anti-banding"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedAntibanding:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1552
    :cond_1
    const-string p1, "auto"

    .line 1553
    :cond_2
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mAntibanding:Ljava/lang/String;

    .line 1555
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 1557
    const-string v0, "CameraController"

    const-string v1, "setAntibanding() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    :goto_0
    return-void

    .line 1561
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_4

    .line 1562
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1564
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setAutoExposureLock(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1627
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1629
    const-string v1, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoExposureLock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mIsAutoExposureLocked:Ljava/lang/Boolean;

    .line 1632
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 1634
    const-string v1, "CameraController"

    const-string v2, "setAutoExposureLock() - No camera object"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :cond_0
    :goto_0
    return v0

    .line 1638
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_2

    .line 1639
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1641
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1644
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setAutoFocusMoveCallback(Lcom/htc/camera/h;)V
    .locals 3

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mAutoFocusMoveCallback:Lcom/htc/camera/h;

    .line 1600
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mAutoFocusMoveCallbackAdapter:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-nez v0, :cond_0

    .line 1602
    new-instance v0, Lcom/htc/camera/CameraController$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraController$2;-><init>(Lcom/htc/camera/CameraController;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mAutoFocusMoveCallbackAdapter:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 1618
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mAutoFocusMoveCallbackAdapter:Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    :cond_1
    :goto_0
    return-void

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    const-string v1, "CameraController"

    const-string v2, "setAutoFocusMoveCallback failed!!"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setAutoWhiteBalanceLock(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1651
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1653
    const-string v1, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoWhiteBalanceLock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mIsAutoWhiteBalanceLocked:Ljava/lang/Boolean;

    .line 1656
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 1658
    const-string v1, "CameraController"

    const-string v2, "setAutoWhiteBalanceLock() - No camera object"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    :cond_0
    :goto_0
    return v0

    .line 1662
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_2

    .line 1663
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1665
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1668
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCameraParameter(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1731
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1732
    if-nez p1, :cond_0

    .line 1747
    :goto_0
    return-void

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mModifiedParameters:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1739
    const-string v0, "CameraController"

    const-string v1, "setCameraParameter() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1743
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_2

    .line 1744
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1746
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1711
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1712
    if-nez p1, :cond_0

    .line 1727
    :goto_0
    return-void

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mModifiedParameters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1719
    const-string v0, "CameraController"

    const-string v1, "setCameraParameter() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1723
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_2

    .line 1724
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1726
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1522
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1524
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedEffects:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1525
    const-string v0, "CameraController"

    const-string v1, "setColorEffect() - No supported effects"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedEffects:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1528
    :cond_1
    const-string p1, "none"

    .line 1529
    :cond_2
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mColorEffect:Ljava/lang/String;

    .line 1531
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 1533
    const-string v0, "CameraController"

    const-string v1, "setColorEffect() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    :goto_0
    return-void

    .line 1537
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_4

    .line 1538
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1540
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setDisplayOrientation(I)V
    .locals 1

    .prologue
    .line 3038
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfNotReady()V

    .line 3039
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 3040
    iput p1, p0, Lcom/htc/camera/CameraController;->mDisplayOrientation:I

    .line 3041
    return-void
.end method

.method public final setErrorCallback(Lcom/htc/camera/i;)V
    .locals 2

    .prologue
    .line 3585
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mErrorCallback:Lcom/htc/camera/i;

    .line 3586
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mErrorCallbackAdapter:Landroid/hardware/Camera$ErrorCallback;

    if-nez v0, :cond_0

    .line 3588
    new-instance v0, Lcom/htc/camera/CameraController$13;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraController$13;-><init>(Lcom/htc/camera/CameraController;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mErrorCallbackAdapter:Landroid/hardware/Camera$ErrorCallback;

    .line 3598
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 3599
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mErrorCallbackAdapter:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3600
    :cond_1
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 2

    .prologue
    .line 1676
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1678
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mExposureCompensation:Ljava/lang/Integer;

    .line 1680
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1682
    const-string v0, "CameraController"

    const-string v1, "setExposureCompensation() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    :goto_0
    return-void

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1687
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1689
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_0
.end method

.method public final setFaceDetectionListener(Lcom/htc/camera/j;)V
    .locals 0

    .prologue
    .line 3577
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mFaceDetectionListener:Lcom/htc/camera/j;

    .line 3578
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1445
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1447
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFlashModes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1448
    const-string v0, "CameraController"

    const-string v1, "setFlashMode() - No supported flash mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFlashModes:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1452
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultFlashMode:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1454
    const-string v0, "CameraController"

    const-string v1, "setFlashMode() - Flash is not supported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_2
    :goto_0
    return-void

    .line 1457
    :cond_3
    iget-object p1, p0, Lcom/htc/camera/CameraController;->mDefaultFlashMode:Ljava/lang/String;

    .line 1459
    :cond_4
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mFlashMode:Ljava/lang/String;

    .line 1461
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    .line 1463
    const-string v0, "CameraController"

    const-string v1, "setFlashMode() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1467
    :cond_5
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsDriverPreviewStarted:Z

    if-nez v0, :cond_6

    const-string v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1469
    const-string v0, "CameraController"

    const-string v1, "setFlashMode() - Set to torch before starting preview, apply flash parameter later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1473
    :cond_6
    const-string v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsFirstSetFlashRunPosted:Z

    if-nez v0, :cond_8

    .line 1474
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_7

    .line 1475
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    .line 1476
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsSetFlashRunPosted:Z

    if-nez v0, :cond_2

    .line 1477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsSetFlashRunPosted:Z

    .line 1478
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mSetFlashRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1479
    const-string v0, "CameraController"

    const-string v1, "setFlashMode() - postDelayed mSetFlashRunnable"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1484
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_9

    .line 1485
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1487
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setFocusAreas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/htc/camera/CameraController;->hasAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    :goto_0
    return-void

    .line 1098
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1100
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mFocusAreas:Ljava/util/List;

    .line 1102
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1104
    const-string v0, "CameraController"

    const-string v1, "setFocusAreas() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_2

    .line 1109
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1110
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1133
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1135
    const-string v0, "CameraController"

    const-string v1, "setFocusMode("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1137
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFocusModes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFocusModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mDefaultFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1141
    const-string v0, "CameraController"

    const-string v1, "setFocusMode() - Not supported focus mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object p1, p0, Lcom/htc/camera/CameraController;->mDefaultFocusMode:Ljava/lang/String;

    .line 1151
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mFocusMode:Ljava/lang/String;

    .line 1153
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 1155
    const-string v0, "CameraController"

    const-string v1, "setFocusMode() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :goto_0
    return-void

    .line 1146
    :cond_2
    const-string v0, "CameraController"

    const-string v1, "setFocusMode() - No supported focus mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1159
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_4

    .line 1160
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1162
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGEParam(Ljava/lang/String;IIIIZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1870
    const-string v2, "GE-param0"

    if-eq p1, v2, :cond_0

    const-string v2, "GE-param1"

    if-eq p1, v2, :cond_0

    .line 1890
    :goto_0
    return v0

    .line 1873
    :cond_0
    const-string v2, "GE-param0"

    if-ne p1, v2, :cond_3

    .line 1875
    if-ne p6, v1, :cond_2

    iput v1, p0, Lcom/htc/camera/CameraController;->mInjectParam0:I

    .line 1887
    :cond_1
    :goto_1
    const-string v0, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGEParam ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    const-string v0, "GE-param3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/htc/camera/CameraController;->mInjectParam0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/camera/CameraController;->mInjectParam1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1890
    goto/16 :goto_0

    .line 1876
    :cond_2
    iput v0, p0, Lcom/htc/camera/CameraController;->mInjectParam0:I

    goto/16 :goto_1

    .line 1878
    :cond_3
    const-string v2, "GE-param1"

    if-ne p1, v2, :cond_1

    .line 1880
    if-ne p6, v1, :cond_4

    iput v1, p0, Lcom/htc/camera/CameraController;->mInjectParam1:I

    goto/16 :goto_1

    .line 1881
    :cond_4
    iput v0, p0, Lcom/htc/camera/CameraController;->mInjectParam1:I

    goto/16 :goto_1
.end method

.method public setGpuEffectType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1865
    const-string v0, "GPU-effect"

    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    return-void
.end method

.method public final setHtcCallback(Lcom/htc/camera/wrapper/a;)V
    .locals 2

    .prologue
    .line 3625
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    sget-object v1, Lcom/htc/camera/CameraController$ControllerState;->Closed:Lcom/htc/camera/CameraController$ControllerState;

    if-ne v0, v1, :cond_0

    .line 3626
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Controller is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3627
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHtcWrapCamera:Lcom/htc/camera/wrapper/HtcWrapCamera;

    if-eqz v0, :cond_1

    .line 3628
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mHtcWrapCamera:Lcom/htc/camera/wrapper/HtcWrapCamera;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/wrapper/HtcWrapCamera;->setHtcCallback(Landroid/hardware/Camera;Lcom/htc/camera/wrapper/a;)V

    .line 3629
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mHtcCallback:Lcom/htc/camera/wrapper/a;

    .line 3630
    return-void
.end method

.method public setJpegQuality(I)V
    .locals 2

    .prologue
    .line 1280
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mJpegQuality:Ljava/lang/Integer;

    .line 1284
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1286
    const-string v0, "CameraController"

    const-string v1, "setJpegQuality() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :goto_0
    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1291
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    goto :goto_0
.end method

.method public setJpegThumbnailSize(II)V
    .locals 5

    .prologue
    .line 1239
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1241
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mJpegThumbnailSize:Lcom/htc/camera/imaging/Size;

    iput p1, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 1242
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mJpegThumbnailSize:Lcom/htc/camera/imaging/Size;

    iput p2, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 1244
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1246
    const-string v0, "CameraController"

    const-string v1, "setJpegThumbnailSize() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    :goto_0
    return-void

    .line 1250
    :cond_0
    const-string v0, "CameraController"

    const-string v1, "setJpegThumbnailSize() - "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " x "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1253
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v3

    .line 1257
    const/4 v1, 0x0

    .line 1258
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    .line 1260
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1261
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v4, p1, :cond_2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v0, p2, :cond_2

    .line 1263
    const/4 v0, 0x1

    .line 1267
    :goto_2
    if-nez v0, :cond_3

    .line 1269
    const-string v0, "CameraController"

    const-string v1, "setJpegThumbnailSize() - Size is unsupported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1258
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 1274
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 1318
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1320
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mLocation:Landroid/location/Location;

    .line 1322
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1324
    const-string v0, "CameraController"

    const-string v1, "setLocation() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :goto_0
    return-void

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1333
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 1340
    if-eqz p1, :cond_7

    .line 1341
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 1342
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 1343
    cmpl-double v0, v1, v5

    if-nez v0, :cond_2

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 1345
    :goto_1
    if-eqz v0, :cond_6

    .line 1346
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 1347
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 1348
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1350
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 1357
    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1360
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location.getTime():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1362
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "utcTimeSeconds:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1365
    :cond_3
    const-string v0, "CameraController"

    const-string v1, "add gps location on photo"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1343
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1355
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_2

    .line 1367
    :cond_6
    const-string v0, "CameraController"

    const-string v1, "not add gps location on photo - hasLatLon = false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1370
    :cond_7
    const-string v0, "CameraController"

    const-string v1, "not add gps location on photo - loc = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setManualFocus(I)V
    .locals 2

    .prologue
    .line 1401
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1403
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "focus"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1407
    return-void
.end method

.method public final setMeteringAreas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1117
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mMeteringAreas:Ljava/util/List;

    .line 1119
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1121
    const-string v0, "CameraController"

    const-string v1, "setMeteringAreas() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1126
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final setOneShotPreviewCallback(Lcom/htc/camera/l;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3247
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 3250
    if-nez p1, :cond_1

    .line 3252
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 3253
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 3277
    :cond_0
    :goto_0
    return-void

    .line 3259
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mOneShotPreviewCallbackAdapter:Landroid/hardware/Camera$PreviewCallback;

    if-nez v0, :cond_2

    .line 3261
    new-instance v0, Lcom/htc/camera/CameraController$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraController$4;-><init>(Lcom/htc/camera/CameraController;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mOneShotPreviewCallbackAdapter:Landroid/hardware/Camera$PreviewCallback;

    .line 3273
    :cond_2
    iput-object v1, p0, Lcom/htc/camera/CameraController;->mPreviewCallback:Lcom/htc/camera/l;

    .line 3274
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mOneShotPreviewCallback:Lcom/htc/camera/l;

    .line 3275
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 3276
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mOneShotPreviewCallbackAdapter:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public setPictureSizeParameter(II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1204
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1206
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mPictureSize:Lcom/htc/camera/imaging/Size;

    iput p1, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 1207
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mPictureSize:Lcom/htc/camera/imaging/Size;

    iput p2, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 1209
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1211
    const-string v0, "CameraController"

    const-string v1, "setPictureSizeParameter() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :goto_0
    return-void

    .line 1216
    :cond_0
    const-string v0, "CameraController"

    const-string v1, "setPictureSizeParameter() - Picture size : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " x "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1217
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1218
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1223
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/htc/camera/imaging/ImageUtility;->findNearestSize(IILjava/util/List;Ljava/lang/Boolean;)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_2

    .line 1226
    const-string v1, "CameraController"

    const-string v2, "setPictureSizeParameter() - Thumbnail image size : "

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, " x "

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 1233
    :goto_1
    iput-boolean v6, p0, Lcom/htc/camera/CameraController;->mIsPictureSizeChanged:Z

    .line 1234
    iput-boolean v6, p0, Lcom/htc/camera/CameraController;->mIsViewAngleChanged:Z

    goto :goto_0

    .line 1230
    :cond_2
    const-string v0, "CameraController"

    const-string v1, "setPictureSizeParameter() - Cannot find suitable thumbnail image size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final setPreviewAdapter(Lcom/htc/camera/CameraPreviewAdapter;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3007
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    sget-object v2, Lcom/htc/camera/CameraController$ControllerState;->Closed:Lcom/htc/camera/CameraController$ControllerState;

    if-ne v0, v2, :cond_0

    .line 3008
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Controller is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3011
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 3012
    iget-object v2, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/htc/camera/CameraPreviewAdapter;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 3013
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mPreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 3014
    iput-object v1, p0, Lcom/htc/camera/CameraController;->mPreviewSurface:Landroid/view/SurfaceHolder;

    .line 3015
    return-void

    :cond_2
    move-object v0, v1

    .line 3012
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Lcom/htc/camera/l;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3285
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 3288
    if-nez p1, :cond_2

    .line 3290
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 3291
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 3292
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCallbackBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3316
    :cond_1
    :goto_0
    return-void

    .line 3297
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mPreviewCallbackAdapter:Landroid/hardware/Camera$PreviewCallback;

    if-nez v0, :cond_3

    .line 3299
    new-instance v0, Lcom/htc/camera/CameraController$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraController$5;-><init>(Lcom/htc/camera/CameraController;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mPreviewCallbackAdapter:Landroid/hardware/Camera$PreviewCallback;

    .line 3312
    :cond_3
    iput-object v1, p0, Lcom/htc/camera/CameraController;->mOneShotPreviewCallback:Lcom/htc/camera/l;

    .line 3313
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mPreviewCallback:Lcom/htc/camera/l;

    .line 3314
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 3315
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mPreviewCallbackAdapter:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 3023
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mState:Lcom/htc/camera/CameraController$ControllerState;

    sget-object v1, Lcom/htc/camera/CameraController$ControllerState;->Closed:Lcom/htc/camera/CameraController$ControllerState;

    if-ne v0, v1, :cond_0

    .line 3024
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Controller is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3027
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 3028
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 3029
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mPreviewSurface:Landroid/view/SurfaceHolder;

    .line 3030
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mPreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 3031
    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 13

    .prologue
    const/4 v4, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1035
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewFpsRange app request min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1039
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_6

    .line 1040
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1041
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_6

    .line 1044
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v6

    .line 1045
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1048
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 1051
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v1, v4

    move v3, v4

    :goto_0
    if-ltz v2, :cond_4

    .line 1052
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v7, v0, v11

    .line 1053
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v8, v0, v12

    .line 1055
    sub-int v0, v8, v7

    .line 1056
    if-le v0, v4, :cond_0

    move v4, v0

    move v5, v2

    .line 1061
    :cond_0
    if-lt p1, v7, :cond_1

    if-le p1, v8, :cond_3

    :cond_1
    if-lt p2, v7, :cond_2

    if-le p2, v8, :cond_3

    :cond_2
    if-ge p1, v7, :cond_9

    if-le p2, v8, :cond_9

    .line 1064
    :cond_3
    invoke-static {p2, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int/2addr v0, v9

    .line 1065
    if-le v0, v1, :cond_9

    move v1, v2

    .line 1070
    :goto_1
    const-string v3, "CameraController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SupportedPreviewFpsRange Idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",fitIndex:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 1073
    :cond_4
    if-ltz v3, :cond_5

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    .line 1074
    :cond_5
    new-instance v1, Lcom/htc/camera/Range;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mPreviewFpsRange:Lcom/htc/camera/Range;

    .line 1081
    :goto_2
    :try_start_0
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewFpsRange to driver min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mPreviewFpsRange:Lcom/htc/camera/Range;

    iget-object v2, v2, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraController;->mPreviewFpsRange:Lcom/htc/camera/Range;

    iget-object v2, v2, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mPreviewFpsRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mPreviewFpsRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :cond_6
    :goto_3
    return-void

    .line 1077
    :cond_7
    new-instance v1, Lcom/htc/camera/Range;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v12

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v11

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v11

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v12

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/htc/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/camera/CameraController;->mPreviewFpsRange:Lcom/htc/camera/Range;

    goto/16 :goto_2

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    const-string v1, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewFpsRange exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1088
    :cond_8
    const-string v0, "CameraController"

    const-string v1, "getSupportedPreviewFpsRange null or zero size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move v0, v1

    move v1, v3

    goto/16 :goto_1
.end method

.method public setPreviewSizeParameter(II)V
    .locals 2

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1012
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mPreviewSize:Lcom/htc/camera/imaging/Size;

    iput p1, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 1013
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mPreviewSize:Lcom/htc/camera/imaging/Size;

    iput p2, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 1015
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1017
    const-string v0, "CameraController"

    const-string v1, "setPreviewSizeParameter() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_0
.end method

.method public final setRecordingHint(Z)V
    .locals 2

    .prologue
    .line 1694
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1696
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mRecordingHint:Ljava/lang/Boolean;

    .line 1698
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1700
    const-string v0, "CameraController"

    const-string v1, "setRecordingHint() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    :goto_0
    return-void

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1706
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 2

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1301
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mRotation:Ljava/lang/Integer;

    .line 1303
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1305
    const-string v0, "CameraController"

    const-string v1, "setRotation() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    :goto_0
    return-void

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    goto :goto_0
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1493
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1495
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedSceneModes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1496
    const-string v0, "CameraController"

    const-string v1, "setSceneMode() - No supported scene mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedSceneModes:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "burst"

    if-eq p1, v0, :cond_2

    const-string v0, "zoe"

    if-eq p1, v0, :cond_2

    .line 1499
    :cond_1
    const-string p1, "auto"

    .line 1500
    :cond_2
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mSceneMode:Ljava/lang/String;

    .line 1502
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 1504
    const-string v0, "CameraController"

    const-string v1, "setSceneMode() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :goto_0
    return-void

    .line 1508
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_4

    .line 1509
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1511
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoStabilization(Z)V
    .locals 3

    .prologue
    .line 1827
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1829
    invoke-virtual {p0}, Lcom/htc/camera/CameraController;->isVideoStabilizationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    :goto_0
    return-void

    .line 1831
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mVideoStabilization:Ljava/lang/Boolean;

    .line 1833
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1835
    const-string v0, "CameraController"

    const-string v1, "setVideoStabilization() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_2

    .line 1840
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1843
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-stabilization"

    if-eqz p1, :cond_3

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const-string v1, "CameraController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoStabilization ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_4

    const-string v0, "true"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1843
    :cond_3
    const-string v0, "false"

    goto :goto_1

    .line 1844
    :cond_4
    const-string v0, "false"

    goto :goto_2
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1377
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1379
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedWhiteBalance:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1380
    const-string v0, "CameraController"

    const-string v1, "setWhiteBalance() - No supported white balance"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedWhiteBalance:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1383
    :cond_1
    const-string p1, "auto"

    .line 1384
    :cond_2
    iput-object p1, p0, Lcom/htc/camera/CameraController;->mWhiteBalance:Ljava/lang/String;

    .line 1386
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 1388
    const-string v0, "CameraController"

    const-string v1, "setWhiteBalance() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :goto_0
    return-void

    .line 1392
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_4

    .line 1393
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1395
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setZoom(I)V
    .locals 2

    .prologue
    .line 1849
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfClosed()V

    .line 1851
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mZoom:Ljava/lang/Integer;

    .line 1853
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1855
    const-string v0, "CameraController"

    const-string v1, "setZoom() - No camera object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :goto_0
    return-void

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 1860
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1861
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto :goto_0
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 3520
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfNotReady()V

    .line 3523
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    .line 3525
    const-string v0, "CameraController"

    const-string v1, "startFaceDetection() - Already started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    :goto_0
    return-void

    .line 3529
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mFaceDetectionListenerAdapter:Landroid/hardware/Camera$FaceDetectionListener;

    if-nez v0, :cond_1

    .line 3531
    new-instance v0, Lcom/htc/camera/CameraController$12;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraController$12;-><init>(Lcom/htc/camera/CameraController;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mFaceDetectionListenerAdapter:Landroid/hardware/Camera$FaceDetectionListener;

    .line 3541
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsDriverPreviewStarted:Z

    if-eqz v0, :cond_2

    .line 3543
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/htc/camera/CameraController;->mFaceDetectionListenerAdapter:Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 3544
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 3548
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsFaceDetectionStarted:Z

    goto :goto_0

    .line 3547
    :cond_2
    const-string v0, "CameraController"

    const-string v1, "startFaceDetection() - Preview is not actually started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final startPreview()V
    .locals 11

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3048
    const-string v0, "CameraController"

    const-string v1, "startPreview("

    iget-object v4, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    const-string v5, ")"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3051
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfNotReady()V

    .line 3054
    sget-object v1, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    monitor-enter v1

    .line 3056
    :try_start_0
    sget-object v0, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 3058
    if-ne v0, p0, :cond_2

    .line 3067
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3070
    const-string v0, "Start preview"

    invoke-direct {p0, v0, v6, v7}, Lcom/htc/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 3073
    :try_start_1
    invoke-static {p0}, Lcom/htc/camera/CameraController;->startDriverPreview(Lcom/htc/camera/CameraController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3077
    invoke-direct {p0, v0}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    .line 3079
    iput-boolean v2, p0, Lcom/htc/camera/CameraController;->mIsPreviewStarted:Z

    .line 3083
    sget-object v4, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    monitor-enter v4

    .line 3085
    :try_start_2
    sget-object v0, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 3087
    if-nez v1, :cond_4

    .line 3088
    if-ne v0, p0, :cond_3

    move v0, v2

    :goto_1
    move v1, v0

    .line 3106
    goto :goto_0

    .line 3060
    :cond_2
    :try_start_3
    iget-boolean v0, v0, Lcom/htc/camera/CameraController;->mIsDriverPreviewStarted:Z

    if-nez v0, :cond_0

    .line 3062
    const-string v0, "CameraController"

    const-string v2, "startPreview() - Previous opened camera preview is not started yet, start preview later"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsPreviewStarted:Z

    .line 3064
    monitor-exit v1

    .line 3108
    :goto_2
    return-void

    .line 3067
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 3077
    :catchall_1
    move-exception v1

    invoke-direct {p0, v0}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    throw v1

    :cond_3
    move v0, v3

    .line 3088
    goto :goto_1

    .line 3089
    :cond_4
    :try_start_4
    iget-boolean v6, v0, Lcom/htc/camera/CameraController;->mIsPreviewStarted:Z

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v6, :cond_6

    .line 3091
    const-string v6, "CameraController"

    const-string v7, "startPreview() - Start new opened camera preview"

    invoke-static {v6, v7}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    const-string v6, "Start preview"

    const-wide/16 v7, 0x1388

    invoke-direct {p0, v6, v7, v8}, Lcom/htc/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/htc/camera/Handle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v6

    .line 3095
    :try_start_5
    invoke-static {v0}, Lcom/htc/camera/CameraController;->startDriverPreview(Lcom/htc/camera/CameraController;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3103
    :try_start_6
    invoke-direct {p0, v6}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move v0, v1

    .line 3104
    goto :goto_1

    .line 3097
    :catch_0
    move-exception v7

    .line 3099
    :try_start_7
    const-string v8, "CameraController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startPreview() - Fail to start new opened camera ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ") preview"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v7}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3103
    :try_start_8
    invoke-direct {p0, v6}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    move v0, v1

    .line 3104
    goto :goto_1

    .line 3103
    :catchall_2
    move-exception v0

    invoke-direct {p0, v6}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    throw v0

    .line 3107
    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_5
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public final stopFaceDetection()V
    .locals 2

    .prologue
    .line 3556
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfNotReady()V

    .line 3559
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsFaceDetectionStarted:Z

    if-nez v0, :cond_0

    .line 3561
    const-string v0, "CameraController"

    const-string v1, "stopFaceDetection() - Already stopped"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3570
    :goto_0
    return-void

    .line 3565
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsFaceDetectionStarted:Z

    .line 3566
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsDriverPreviewStarted:Z

    if-eqz v0, :cond_1

    .line 3567
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    goto :goto_0

    .line 3569
    :cond_1
    const-string v0, "CameraController"

    const-string v1, "stopFaceDetection() - Preview is not actually started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final stopPreview()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1388

    const/4 v1, 0x0

    .line 3156
    const-string v0, "CameraController"

    const-string v2, "stopPreview("

    iget-object v3, p0, Lcom/htc/camera/CameraController;->mCameraType:Lcom/htc/camera/CameraType;

    const-string v4, ")"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3161
    sget-object v3, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    monitor-enter v3

    .line 3163
    :try_start_0
    sget-object v0, Lcom/htc/camera/CameraController;->mActiveCameraControllers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 3165
    if-nez v2, :cond_1

    .line 3166
    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 3184
    goto :goto_0

    :cond_0
    move v0, v1

    .line 3166
    goto :goto_1

    .line 3167
    :cond_1
    iget-boolean v5, v0, Lcom/htc/camera/CameraController;->mIsDriverPreviewStarted:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_3

    .line 3169
    const-string v5, "CameraController"

    const-string v6, "stopPreview() - Stop new opened camera preview"

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3170
    const-string v5, "Stop preview"

    const-wide/16 v6, 0x1388

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/htc/camera/Handle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 3173
    :try_start_1
    invoke-static {v0}, Lcom/htc/camera/CameraController;->stopDriverPreview(Lcom/htc/camera/CameraController;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3181
    :try_start_2
    invoke-direct {p0, v5}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v2

    .line 3182
    goto :goto_1

    .line 3175
    :catch_0
    move-exception v6

    .line 3177
    :try_start_3
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stopPreview() - Fail to stop new opened camera ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ") preview"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3181
    :try_start_4
    invoke-direct {p0, v5}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    move v0, v2

    .line 3182
    goto :goto_1

    .line 3181
    :catchall_0
    move-exception v0

    invoke-direct {p0, v5}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    throw v0

    .line 3185
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3188
    iput-boolean v1, p0, Lcom/htc/camera/CameraController;->mIsPreviewStarted:Z

    .line 3189
    iput-boolean v1, p0, Lcom/htc/camera/CameraController;->mIsFaceDetectionStarted:Z

    .line 3190
    const-string v0, "Stop preview"

    invoke-direct {p0, v0, v10, v11}, Lcom/htc/camera/CameraController;->startTimeoutTimer(Ljava/lang/String;J)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 3193
    :try_start_6
    invoke-static {p0}, Lcom/htc/camera/CameraController;->stopDriverPreview(Lcom/htc/camera/CameraController;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3197
    invoke-direct {p0, v0}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    .line 3199
    return-void

    .line 3197
    :catchall_2
    move-exception v1

    invoke-direct {p0, v0}, Lcom/htc/camera/CameraController;->stopTimeoutTimer(Lcom/htc/camera/Handle;)V

    throw v1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public supportFlashLight()Z
    .locals 1

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFlashModes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mSupportedFlashModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2723
    :cond_0
    const/4 v0, 0x0

    .line 2725
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    .locals 1

    .prologue
    .line 3323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;Lcom/htc/camera/k;)V

    .line 3324
    return-void
.end method

.method public final takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 3328
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfNotReady()V

    .line 3332
    if-eqz p3, :cond_3

    .line 3334
    new-instance v0, Lcom/htc/camera/CameraController$6;

    invoke-direct {v0, p0, p3}, Lcom/htc/camera/CameraController$6;-><init>(Lcom/htc/camera/CameraController;Lcom/htc/camera/k;)V

    .line 3383
    :goto_0
    iget-object v4, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_6

    new-instance v2, Lcom/htc/camera/CameraController$8;

    invoke-direct {v2, p0, p1}, Lcom/htc/camera/CameraController$8;-><init>(Lcom/htc/camera/CameraController;Lcom/htc/camera/m;)V

    move-object v3, v2

    :goto_1
    if-eqz p2, :cond_7

    new-instance v2, Lcom/htc/camera/CameraController$9;

    invoke-direct {v2, p0, p2}, Lcom/htc/camera/CameraController$9;-><init>(Lcom/htc/camera/CameraController;Lcom/htc/camera/k;)V

    :goto_2
    if-eqz p4, :cond_0

    new-instance v1, Lcom/htc/camera/CameraController$10;

    invoke-direct {v1, p0, p4}, Lcom/htc/camera/CameraController$10;-><init>(Lcom/htc/camera/CameraController;Lcom/htc/camera/k;)V

    :cond_0
    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 3412
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mRecordingHint:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraController;->mRecordingHint:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3413
    :cond_1
    iput-boolean v5, p0, Lcom/htc/camera/CameraController;->mIsPreviewStarted:Z

    .line 3414
    :cond_2
    iput-boolean v5, p0, Lcom/htc/camera/CameraController;->mIsFaceDetectionStarted:Z

    .line 3415
    return-void

    .line 3354
    :cond_3
    iget-boolean v0, p0, Lcom/htc/camera/CameraController;->mIsReviewEnabled:Z

    if-eqz v0, :cond_5

    .line 3356
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mEmptyPostViewCallback:Landroid/hardware/Camera$PictureCallback;

    if-nez v0, :cond_4

    .line 3358
    new-instance v0, Lcom/htc/camera/CameraController$7;

    invoke-direct {v0, p0}, Lcom/htc/camera/CameraController$7;-><init>(Lcom/htc/camera/CameraController;)V

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mEmptyPostViewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 3377
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mEmptyPostViewCallback:Landroid/hardware/Camera$PictureCallback;

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 3380
    goto :goto_0

    :cond_6
    move-object v3, v1

    .line 3383
    goto :goto_1

    :cond_7
    move-object v2, v1

    goto :goto_2
.end method

.method public final unlock()V
    .locals 1

    .prologue
    .line 3607
    invoke-direct {p0}, Lcom/htc/camera/CameraController;->throwIfNotReady()V

    .line 3608
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 3609
    return-void
.end method

.method public final updateCameraParameters()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 481
    return-void
.end method
