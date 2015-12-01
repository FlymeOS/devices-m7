.class final Lcom/htc/camera/panorama/PanoramaPlusEngine;
.super Ljava/lang/Object;
.source "PanoramaPlusEngine.java"


# static fields
.field static final METADATA_APERTURE:I = 0x4

.field static final METADATA_CONTRAST_VALUE:I = 0xa

.field static final METADATA_DATETIME:I = 0x3

.field static final METADATA_EXPOSURE_TIME:I = 0x8

.field static final METADATA_EXPOSURE_VALUE:I = 0x9

.field static final METADATA_FOCAL_LENGTH:I = 0x5

.field static final METADATA_GPS_ALTITUDE:I = 0xd

.field static final METADATA_GPS_ALTITUDE_REF:I = 0xe

.field static final METADATA_GPS_LATITUDE:I = 0xf

.field static final METADATA_GPS_LATITUDE_REF:I = 0x10

.field static final METADATA_GPS_LONGITUDE:I = 0x11

.field static final METADATA_GPS_LONGITUDE_REF:I = 0x12

.field static final METADATA_GPS_PROCESSING_METHOD:I = 0x14

.field static final METADATA_GPS_TIMESTAMP:I = 0x13

.field static final METADATA_ISO:I = 0x6

.field static final METADATA_MAKE:I = 0x1

.field static final METADATA_MODEL:I = 0x2

.field static final METADATA_SHARPNESS_VALUE:I = 0xc

.field static final METADATA_STATURATION_VALUE:I = 0xb

.field static final METADATA_WHITE_BALANCE:I = 0x7

.field static final ORIENTATION_LANDSCAPE:I = 0x0

.field static final ORIENTATION_PORTRAIT:I = 0x2

.field static final ORIENTATION_REVERSE_LANDSCAPE:I = 0x1

.field static final ORIENTATION_REVERSE_PORTRAIT:I = 0x3

.field private static final PREVIEW_FORMAT_NV21:I = 0x1

.field private static final SENSOR_ACCELEROMETER:I = 0x2

.field private static final SENSOR_GYROSCOPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PanoramaPlusEngine"

.field private static final m_NativeEngineMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/camera/panorama/PanoramaPlusEngine;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private m_FinalJpegCallback:Lcom/htc/camera/panorama/b;

.field private m_FrameLevelInfos:[Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;

.field private final m_Handler:Landroid/os/Handler;

.field private m_NativeEngine:J

.field private m_PreviewPictureCallback:Lcom/htc/camera/panorama/b;

.field private m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

.field private m_StitchingProgressCallback:Lcom/htc/camera/panorama/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    .line 104
    invoke-static {}, Lcom/htc/camera/CameraNativeLibrary;->initialize()V

    .line 105
    invoke-static {}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->initialize()V

    .line 106
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 6

    .prologue
    const/16 v5, 0x80

    const/4 v4, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Initializing:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 114
    invoke-static {p1, p2, p3}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->createNativeEngine(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    .line 115
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 117
    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    monitor-enter v1

    .line 119
    :try_start_0
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    iget-wide v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_Handler:Landroid/os/Handler;

    .line 127
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setLongLatLineColor(IIII)V

    .line 130
    invoke-virtual {p0, v5, v5, v5}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setMaskColor(III)V

    .line 131
    return-void

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to create panorama+ engine"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/htc/camera/panorama/PanoramaPlusEngine;[B)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->finalPictureCallback([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/panorama/PanoramaPlusEngine;[B)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->previewPictureCallback([B)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/panorama/PanoramaPlusEngine;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->stitchingProgressCallback(I)V

    return-void
.end method

.method private checkEngineState()V
    .locals 4

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Panorama+ engine is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    return-void
.end method

.method private static native closeNativeEngine(J)V
.end method

.method private static native createNativeEngine(JI)J
.end method

.method private static finalPictureCallback(J[B)V
    .locals 4

    .prologue
    .line 213
    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    monitor-enter v1

    .line 215
    :try_start_0
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 216
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;

    .line 219
    if-eqz v0, :cond_1

    .line 221
    const-string v2, "PanoramaPlusEngine"

    const-string v3, "finalPictureCallback() - Final JPEG call-back received, schedule call-back to original thread"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v2, v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_Handler:Landroid/os/Handler;

    new-instance v3, Lcom/htc/camera/panorama/PanoramaPlusEngine$1;

    invoke-direct {v3, v0, p2}, Lcom/htc/camera/panorama/PanoramaPlusEngine$1;-><init>(Lcom/htc/camera/panorama/PanoramaPlusEngine;[B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const-string v0, "PanoramaPlusEngine"

    const-string v2, "finalPictureCallback() - Fail to dispatch call-back to original thread"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    :goto_0
    monitor-exit v1

    .line 238
    return-void

    .line 235
    :cond_1
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private finalPictureCallback([B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_FinalJpegCallback:Lcom/htc/camera/panorama/b;

    if-nez v0, :cond_0

    .line 244
    const-string v0, "PanoramaPlusEngine"

    const-string v1, "finalPictureCallback() - No call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Stopped:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    if-eq v0, v1, :cond_1

    .line 249
    const-string v0, "PanoramaPlusEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalPictureCallback() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iput-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_FinalJpegCallback:Lcom/htc/camera/panorama/b;

    goto :goto_0

    .line 255
    :cond_1
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Initializing:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 258
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_FinalJpegCallback:Lcom/htc/camera/panorama/b;

    invoke-interface {v0, p0, p1}, Lcom/htc/camera/panorama/b;->onPictureReceived(Lcom/htc/camera/panorama/PanoramaPlusEngine;[B)V

    .line 259
    iput-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_FinalJpegCallback:Lcom/htc/camera/panorama/b;

    .line 260
    iput-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_StitchingProgressCallback:Lcom/htc/camera/panorama/c;

    goto :goto_0
.end method

.method private static native getCurrentRotation(JLcom/htc/camera/panorama/DeviceRotation;)V
.end method

.method private static native getFrameLevelCounts(J)[I
.end method

.method private static native getFrameLevelElevationAngles(JI)[I
.end method

.method private static native initialize()V
.end method

.method private static native isFirstFrameAimed(J)Z
.end method

.method private static native prepare(J)V
.end method

.method private static previewPictureCallback(J[B)V
    .locals 4

    .prologue
    .line 341
    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    monitor-enter v1

    .line 343
    :try_start_0
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 344
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;

    .line 347
    if-eqz v0, :cond_1

    .line 349
    const-string v2, "PanoramaPlusEngine"

    const-string v3, "previewPictureCallback() - Preview call-back received, schedule call-back to original thread"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v2, v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_Handler:Landroid/os/Handler;

    new-instance v3, Lcom/htc/camera/panorama/PanoramaPlusEngine$2;

    invoke-direct {v3, v0, p2}, Lcom/htc/camera/panorama/PanoramaPlusEngine$2;-><init>(Lcom/htc/camera/panorama/PanoramaPlusEngine;[B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    const-string v0, "PanoramaPlusEngine"

    const-string v2, "previewPictureCallback() - Fail to dispatch call-back to original thread"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    :goto_0
    monitor-exit v1

    .line 366
    return-void

    .line 363
    :cond_1
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private previewPictureCallback([B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 370
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_PreviewPictureCallback:Lcom/htc/camera/panorama/b;

    if-nez v0, :cond_0

    .line 372
    const-string v0, "PanoramaPlusEngine"

    const-string v1, "previewPictureCallback() - No call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Stopped:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    if-eq v0, v1, :cond_1

    .line 377
    const-string v0, "PanoramaPlusEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previewPictureCallback() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iput-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_PreviewPictureCallback:Lcom/htc/camera/panorama/b;

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_PreviewPictureCallback:Lcom/htc/camera/panorama/b;

    invoke-interface {v0, p0, p1}, Lcom/htc/camera/panorama/b;->onPictureReceived(Lcom/htc/camera/panorama/PanoramaPlusEngine;[B)V

    .line 384
    iput-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_PreviewPictureCallback:Lcom/htc/camera/panorama/b;

    goto :goto_0
.end method

.method private static native setCacheDirectory(JLjava/lang/String;)V
.end method

.method private static native setFrameIndicatorColor(JIIII)V
.end method

.method private static native setFrameIndicatorSize(JII)V
.end method

.method private static native setGyroParameters(JFF)V
.end method

.method private static native setImageNamePrefix(JLjava/lang/String;)V
.end method

.method private static native setLongLatLineColor(JIIII)V
.end method

.method private static native setMaskColor(JIII)V
.end method

.method private static native setMetadata(J[B)V
.end method

.method private static native setOrientation(JI)V
.end method

.method private static native setPreviewFormat(JIIIFF)V
.end method

.method private static native start(J)V
.end method

.method private stitchingProgressCallback(I)V
    .locals 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_StitchingProgressCallback:Lcom/htc/camera/panorama/c;

    if-nez v0, :cond_0

    .line 480
    const-string v0, "PanoramaPlusEngine"

    const-string v1, "stitchingProgressCallback() - No call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Stopped:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    if-eq v0, v1, :cond_1

    .line 485
    const-string v0, "PanoramaPlusEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stitchingProgressCallback() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_StitchingProgressCallback:Lcom/htc/camera/panorama/c;

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_StitchingProgressCallback:Lcom/htc/camera/panorama/c;

    invoke-interface {v0, p0, p1}, Lcom/htc/camera/panorama/c;->onProgressChanged(Lcom/htc/camera/panorama/PanoramaPlusEngine;I)V

    goto :goto_0
.end method

.method private static stitchingProgressCallback(JI)V
    .locals 4

    .prologue
    .line 449
    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    monitor-enter v1

    .line 451
    :try_start_0
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 452
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;

    .line 455
    if-eqz v0, :cond_1

    .line 457
    const-string v2, "PanoramaPlusEngine"

    const-string v3, "stitchingProgressCallback() - Progress call-back received, schedule call-back to original thread"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v2, v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_Handler:Landroid/os/Handler;

    new-instance v3, Lcom/htc/camera/panorama/PanoramaPlusEngine$3;

    invoke-direct {v3, v0, p2}, Lcom/htc/camera/panorama/PanoramaPlusEngine$3;-><init>(Lcom/htc/camera/panorama/PanoramaPlusEngine;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const-string v0, "PanoramaPlusEngine"

    const-string v2, "stitchingProgressCallback() - Fail to dispatch call-back to original thread"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    :goto_0
    monitor-exit v1

    .line 474
    return-void

    .line 471
    :cond_1
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native stop(JZ)V
.end method

.method private static native updatePreviewFrame(J[B)Z
.end method

.method private static native updateSensorValues(JI[F)V
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 152
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$4;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    const-string v0, "PanoramaPlusEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() - Fail to close engine, current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to close engine, current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :pswitch_0
    const-string v0, "PanoramaPlusEngine"

    const-string v1, "close()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->closeNativeEngine(J)V

    .line 173
    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    monitor-enter v1

    .line 175
    :try_start_0
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    iget-wide v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iput-wide v4, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    .line 178
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Closed:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 182
    :goto_0
    :pswitch_1
    return-void

    .line 176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 181
    :cond_0
    const-string v0, "PanoramaPlusEngine"

    const-string v1, "close() - Engine is already closed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected finalize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 196
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 198
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->closeNativeEngine(J)V

    .line 199
    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    monitor-enter v1

    .line 201
    :try_start_0
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngineMap:Ljava/util/Hashtable;

    iget-wide v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iput-wide v4, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    .line 205
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 206
    return-void

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentRotation(Lcom/htc/camera/panorama/DeviceRotation;)V
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->checkEngineState()V

    .line 269
    if-nez p1, :cond_0

    .line 271
    const-string v0, "rotation"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 274
    :cond_0
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->getCurrentRotation(JLcom/htc/camera/panorama/DeviceRotation;)V

    .line 275
    return-void
.end method

.method public getFrameLevelInfos()[Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_FrameLevelInfos:[Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;

    return-object v0
.end method

.method public getNativeEngine()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    return-wide v0
.end method

.method public getState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    return-object v0
.end method

.method public isFirstFrameAimed()Z
    .locals 2

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->checkEngineState()V

    .line 302
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->AimingAtFirstFrame:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->isFirstFrameAimed(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Capturing:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 305
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare()V
    .locals 7

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->checkEngineState()V

    .line 318
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Initializing:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Stopped:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    if-eq v0, v1, :cond_0

    .line 320
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    const-string v0, "PanoramaPlusEngine"

    const-string v1, "prepare()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->prepare(J)V

    .line 325
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Ready:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 328
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->getFrameLevelCounts(J)[I

    move-result-object v1

    .line 329
    iget-wide v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    array-length v0, v1

    invoke-static {v2, v3, v0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->getFrameLevelElevationAngles(JI)[I

    move-result-object v2

    .line 330
    array-length v0, v1

    new-array v0, v0, [Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_FrameLevelInfos:[Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;

    .line 331
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_FrameLevelInfos:[Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 332
    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_FrameLevelInfos:[Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;

    new-instance v4, Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;

    aget v5, v1, v0

    aget v6, v2, v0

    invoke-direct {v4, v5, v6}, Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;-><init>(II)V

    aput-object v4, v3, v0

    .line 331
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 333
    :cond_1
    return-void
.end method

.method public setCacheDirectory(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->checkEngineState()V

    .line 412
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setCacheDirectory(JLjava/lang/String;)V

    .line 413
    return-void
.end method

.method public setFrameIndicatorColor(IIII)V
    .locals 6

    .prologue
    .line 640
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setFrameIndicatorColor(JIIII)V

    .line 641
    return-void
.end method

.method public setFrameIndicatorSize(II)V
    .locals 2

    .prologue
    .line 646
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1, p1, p2}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setFrameIndicatorSize(JII)V

    .line 647
    return-void
.end method

.method public setGyroParameters(FF)V
    .locals 2

    .prologue
    .line 670
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1, p1, p2}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setGyroParameters(JFF)V

    .line 671
    return-void
.end method

.method public setImageNamePrefix(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->checkEngineState()V

    .line 422
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setImageNamePrefix(JLjava/lang/String;)V

    .line 423
    return-void
.end method

.method public setLongLatLineColor(IIII)V
    .locals 6

    .prologue
    .line 658
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setLongLatLineColor(JIIII)V

    .line 659
    return-void
.end method

.method public setMaskColor(III)V
    .locals 2

    .prologue
    .line 652
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setMaskColor(JIII)V

    .line 653
    return-void
.end method

.method public setMetadata([B)V
    .locals 2

    .prologue
    .line 634
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setMetadata(J[B)V

    .line 635
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 664
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setOrientation(JI)V

    .line 665
    return-void
.end method

.method public setPreviewFormat(IIIFF)V
    .locals 7

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->checkEngineState()V

    .line 393
    packed-switch p1, :pswitch_data_0

    .line 399
    const-string v0, "PanoramaPlusEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewFormat() - Unknown format : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown format : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :pswitch_0
    const/4 v2, 0x1

    .line 402
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setPreviewFormat(JIIIFF)V

    .line 403
    return-void

    .line 393
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 3

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->checkEngineState()V

    .line 433
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Ready:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    if-eq v0, v1, :cond_0

    .line 434
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    const-string v0, "PanoramaPlusEngine"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->start(J)V

    .line 440
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->AimingAtFirstFrame:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 441
    return-void
.end method

.method public stop(ZLcom/htc/camera/panorama/c;Lcom/htc/camera/panorama/b;Lcom/htc/camera/panorama/b;)V
    .locals 3

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->checkEngineState()V

    .line 521
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$4;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 528
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :pswitch_0
    const-string v0, "PanoramaPlusEngine"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iput-object p3, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_PreviewPictureCallback:Lcom/htc/camera/panorama/b;

    .line 535
    iput-object p4, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_FinalJpegCallback:Lcom/htc/camera/panorama/b;

    .line 536
    iput-object p2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_StitchingProgressCallback:Lcom/htc/camera/panorama/c;

    .line 538
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->stop(JZ)V

    .line 539
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Stopped:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 540
    return-void

    .line 521
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateAccelerometerValues([FJ)V
    .locals 3

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->checkEngineState()V

    .line 572
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$4;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 580
    const-string v0, "PanoramaPlusEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAccelerometerValues() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :goto_0
    return-void

    .line 585
    :pswitch_0
    if-nez p1, :cond_0

    .line 587
    const-string v0, "values"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 590
    :cond_0
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 595
    :cond_1
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->updateSensorValues(JI[F)V

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateGyroscopeValues([FJ)V
    .locals 4

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->checkEngineState()V

    .line 602
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$4;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 610
    const-string v0, "PanoramaPlusEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGyroscopeValues() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :goto_0
    return-void

    .line 615
    :pswitch_0
    if-nez p1, :cond_0

    .line 617
    const-string v0, "values"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 620
    :cond_0
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 621
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 623
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 627
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->updateSensorValues(JI[F)V

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePreviewFrame([B)Z
    .locals 3

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->checkEngineState()V

    .line 550
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Capturing:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    if-eq v0, v1, :cond_0

    .line 551
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_State:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    if-nez p1, :cond_1

    .line 556
    const-string v0, "frame"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 557
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 561
    :cond_1
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine;->m_NativeEngine:J

    invoke-static {v0, v1, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->updatePreviewFrame(J[B)Z

    move-result v0

    return v0
.end method
