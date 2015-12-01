.class final Lcom/htc/camera/component/AudioManager;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "AudioManager.java"

# interfaces
.implements Lcom/htc/camera/IAudioManager;


# static fields
.field private static STREAM_SYSTEM_ENFORCED:I

.field private static final m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private static volatile m_IsAlarmVolumeAdjusted:Z

.field private static volatile m_IsRingVolumeAdjusted:Z

.field private static volatile m_OriginalVolumeRing:I


# instance fields
.field final highPriorityProcessList:[Ljava/lang/String;

.field private m_AudioFocusCount:I

.field private m_ForceShutterSound:Z

.field private m_OriginalRingMode:I

.field private final m_SimOperatorChangedCallback:Lcom/htc/camera/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/f",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SoundHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/AudioManager$SoundHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SoundLoadedListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private m_SoundPool:Landroid/media/SoundPool;

.field private final m_SysAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/htc/camera/component/AudioManager;->m_OriginalVolumeRing:I

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/camera/component/AudioManager;->m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 208
    const-string v1, "Audio Manager"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 53
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/component/AudioManager;->m_ForceShutterSound:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/component/AudioManager;->m_OriginalRingMode:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;

    .line 65
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.kineto.smartwifi"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/camera/component/AudioManager;->highPriorityProcessList:[Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/htc/camera/component/AudioManager$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/AudioManager$1;-><init>(Lcom/htc/camera/component/AudioManager;)V

    iput-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SimOperatorChangedCallback:Lcom/htc/camera/base/f;

    .line 162
    new-instance v0, Lcom/htc/camera/component/AudioManager$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/AudioManager$2;-><init>(Lcom/htc/camera/component/AudioManager;)V

    iput-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundLoadedListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 209
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "STREAM_SYSTEM_ENFORCED"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/htc/camera/component/AudioManager;->STREAM_SYSTEM_ENFORCED:I

    .line 213
    const-string v0, "AudioManager(Camera)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STREAM_SYSTEM_ENFORCED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/camera/component/AudioManager;->STREAM_SYSTEM_ENFORCED:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    invoke-direct {p0}, Lcom/htc/camera/component/AudioManager;->resetSoundPool()V

    .line 219
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 216
    const/4 v0, 0x7

    sput v0, Lcom/htc/camera/component/AudioManager;->STREAM_SYSTEM_ENFORCED:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/component/AudioManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/component/AudioManager;->onSimOperatorChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/AudioManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/AudioManager;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/AudioManager;Lcom/htc/camera/component/AudioManager$StreamHandle;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AudioManager;->playInMemorySound(Lcom/htc/camera/component/AudioManager$StreamHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/component/AudioManager;)Lcom/htc/camera/base/f;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SimOperatorChangedCallback:Lcom/htc/camera/base/f;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/AudioManager;Lcom/htc/camera/rotate/UIRotation;IZ)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/AudioManager;->setVolumePanelOrientation(Lcom/htc/camera/rotate/UIRotation;IZ)V

    return-void
.end method

.method private getAdjustedVolume(I)I
    .locals 4

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/htc/camera/component/AudioManager;->m_ForceShutterSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    int-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 329
    :goto_0
    return v0

    .line 326
    :cond_0
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->hasSIE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    int-to-float v0, p1

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->getAudioStreamVolPercent()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    .line 329
    :cond_1
    mul-int/lit8 v0, p1, 0x1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private onSimOperatorChanged()V
    .locals 4

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    .line 634
    iget-boolean v1, p0, Lcom/htc/camera/component/AudioManager;->m_ForceShutterSound:Z

    if-eq v0, v1, :cond_0

    .line 637
    const-string v1, "AudioManager(Camera)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimOperatorChanged() - Force shutter sound state has been changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iput-boolean v0, p0, Lcom/htc/camera/component/AudioManager;->m_ForceShutterSound:Z

    .line 643
    invoke-direct {p0}, Lcom/htc/camera/component/AudioManager;->resetSoundPool()V

    goto :goto_0
.end method

.method private playInMemorySound(Lcom/htc/camera/component/AudioManager$StreamHandle;)V
    .locals 7

    .prologue
    .line 705
    iget-boolean v0, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;->audioFocus:Z

    if-eqz v0, :cond_0

    .line 707
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Request audio focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->requestAudioFocus()V

    .line 715
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 717
    :try_start_1
    iget-object v0, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;->sound:Lcom/htc/camera/component/AudioManager$SoundHandle;

    iget v1, v0, Lcom/htc/camera/component/AudioManager$SoundHandle;->soundId:I

    .line 718
    iget v5, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;->loopCount:I

    .line 719
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 721
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 723
    if-eqz v0, :cond_3

    .line 724
    :try_start_3
    iput v0, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;->streamId:I

    .line 727
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 732
    iget-boolean v0, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;->audioFocus:Z

    if-eqz v0, :cond_1

    .line 734
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->abandonAudioFocus()V

    .line 738
    :cond_1
    return-void

    .line 719
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 732
    :catchall_1
    move-exception v0

    iget-boolean v1, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;->audioFocus:Z

    if-eqz v1, :cond_2

    .line 734
    const-string v1, "AudioManager(Camera)"

    const-string v2, "playInMemorySound() - Abandon audio focus"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->abandonAudioFocus()V

    .line 732
    :cond_2
    throw v0

    .line 726
    :cond_3
    :try_start_6
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Failed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private resetSoundPool()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 602
    const-string v0, "AudioManager(Camera)"

    const-string v1, "resetSoundPool()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "AudioManager(Camera)"

    const-string v1, "resetSoundPool() - Release sound pool"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 612
    :cond_0
    new-instance v1, Landroid/media/SoundPool;

    iget-boolean v0, p0, Lcom/htc/camera/component/AudioManager;->m_ForceShutterSound:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/camera/component/AudioManager;->STREAM_SYSTEM_ENFORCED:I

    :goto_0
    invoke-direct {v1, v6, v0, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/htc/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    .line 613
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/htc/camera/component/AudioManager;->m_SoundLoadedListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 616
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AudioManager$SoundHandle;

    .line 618
    iput-boolean v5, v0, Lcom/htc/camera/component/AudioManager$SoundHandle;->isLoaded:Z

    .line 619
    iget-object v2, p0, Lcom/htc/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget v4, v0, Lcom/htc/camera/component/AudioManager$SoundHandle;->resourceId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, v0, Lcom/htc/camera/component/AudioManager$SoundHandle;->soundId:I

    goto :goto_1

    .line 612
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 621
    :cond_2
    return-void
.end method

.method private setAudioStreamVolume(I)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 808
    const-class v1, Lcom/htc/camera/component/AudioManager;

    monitor-enter v1

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/AudioManager;->m_ForceShutterSound:Z

    if-eqz v0, :cond_4

    .line 814
    :cond_0
    sget v0, Lcom/htc/camera/component/AudioManager;->STREAM_SYSTEM_ENFORCED:I

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/htc/camera/component/AudioManager;->m_IsAlarmVolumeAdjusted:Z

    if-eqz v0, :cond_1

    .line 815
    monitor-exit v1

    .line 839
    :goto_0
    return-void

    .line 816
    :cond_1
    if-ne p1, v2, :cond_2

    sget-boolean v0, Lcom/htc/camera/component/AudioManager;->m_IsRingVolumeAdjusted:Z

    if-eqz v0, :cond_2

    .line 817
    monitor-exit v1

    goto :goto_0

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 820
    :cond_2
    :try_start_1
    const-string v0, "AudioManager(Camera)"

    const-string v2, "Backup audio stream volume"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    sget v0, Lcom/htc/camera/component/AudioManager;->STREAM_SYSTEM_ENFORCED:I

    if-ne p1, v0, :cond_5

    .line 822
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/camera/component/AudioManager;->m_IsAlarmVolumeAdjusted:Z

    .line 834
    :cond_3
    :goto_1
    const-string v0, "AudioManager(Camera)"

    const-string v2, "Set audio stream volume"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 836
    iget-object v2, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AudioManager;->getAdjustedVolume(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 838
    :cond_4
    monitor-exit v1

    goto :goto_0

    .line 825
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/camera/component/AudioManager;->m_IsRingVolumeAdjusted:Z

    .line 826
    sget v0, Lcom/htc/camera/component/AudioManager;->m_OriginalVolumeRing:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 828
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    sput v0, Lcom/htc/camera/component/AudioManager;->m_OriginalVolumeRing:I

    .line 829
    const-string v0, "AudioManager(Camera)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Original ring volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/camera/component/AudioManager;->m_OriginalVolumeRing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private setVolumePanelOrientation(Lcom/htc/camera/rotate/UIRotation;IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 882
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 887
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_PARAMETER_KEY_LAYOUT:Ljava/lang/String;

    sget-byte v2, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_LAYOUT_ALIGN_CENTER:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lcom/htc/camera/component/AudioManager$10;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 902
    sget-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_LANDSCAPE:B

    .line 905
    :goto_0
    sget-object v2, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_PARAMETER_KEY_SCREEN_MODE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    if-nez p3, :cond_0

    .line 908
    const-string v0, "volumepanel_force_timeout"

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-static {v0, v1}, Lcom/htc/lib3/media/HtcAudioManager;->setVolumePanelParameters(Landroid/media/AudioManager;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_1
    if-eqz p3, :cond_1

    .line 919
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, v3}, Landroid/media/AudioManager;->adjustVolume(II)V

    .line 922
    :goto_2
    return-void

    .line 893
    :pswitch_0
    sget-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_PORTRAIT:B

    goto :goto_0

    .line 896
    :pswitch_1
    sget-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_IPORTRAIT:B

    goto :goto_0

    .line 899
    :pswitch_2
    sget-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_ILANDSCAPE:B

    goto :goto_0

    .line 913
    :catch_0
    move-exception v0

    .line 915
    const-string v0, "AudioManager(Camera)"

    const-string v1, "setVolumePanelParameters exception"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto :goto_2

    .line 890
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 3

    .prologue
    .line 266
    const/16 v0, 0x2711

    const-wide/16 v1, 0x96

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/camera/component/AudioManager;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 267
    return-void
.end method

.method public checkOwnAudioResourceProcess()Lcom/htc/camera/IAudioManager$ProcessType;
    .locals 4

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getOwnAudioResourceProcessId()I

    move-result v0

    .line 1009
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1010
    const-string v0, "AudioManager(Camera)"

    const-string v1, "checkOwnAudioResourceProcess() - Audio resource is occupied by camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    sget-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->None:Lcom/htc/camera/IAudioManager$ProcessType;

    .line 1031
    :goto_0
    return-object v0

    .line 1013
    :cond_0
    const-string v1, "AudioManager(Camera)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOwnAudioResourceProcess() - Audio resource is occupied by pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/camera/ar;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1017
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1019
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/camera/component/AudioManager;->highPriorityProcessList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1021
    iget-object v2, p0, Lcom/htc/camera/component/AudioManager;->highPriorityProcessList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1023
    const-string v0, "com.kineto.smartwifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    sget-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->Kineto_SmartWifi:Lcom/htc/camera/IAudioManager$ProcessType;

    goto :goto_0

    .line 1026
    :cond_1
    sget-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->Other_HightPriority_Process:Lcom/htc/camera/IAudioManager$ProcessType;

    goto :goto_0

    .line 1019
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1029
    :cond_3
    sget-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->Can_Kill:Lcom/htc/camera/IAudioManager$ProcessType;

    goto :goto_0

    .line 1031
    :cond_4
    sget-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->None:Lcom/htc/camera/IAudioManager$ProcessType;

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSimCardStateMonitorNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getDependencyThreadType()Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->UIThread:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    if-ne v0, v1, :cond_1

    .line 280
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraApplication;->PROPERTY_SIM_OPERATOR:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/component/AudioManager;->m_SimOperatorChangedCallback:Lcom/htc/camera/base/f;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 295
    :cond_0
    :goto_0
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 298
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget v0, p0, Lcom/htc/camera/component/AudioManager;->m_AudioFocusCount:I

    if-lez v0, :cond_2

    .line 303
    const-string v0, "AudioManager(Camera)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deinitializeOverride() - Abandon audio focus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AudioManager;->m_AudioFocusCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_1
    iget v0, p0, Lcom/htc/camera/component/AudioManager;->m_AudioFocusCount:I

    if-lez v0, :cond_2

    .line 306
    iget v0, p0, Lcom/htc/camera/component/AudioManager;->m_AudioFocusCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/component/AudioManager;->m_AudioFocusCount:I

    .line 307
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/htc/camera/component/AudioManager;->m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_1

    .line 283
    :cond_1
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/AudioManager$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AudioManager$3;-><init>(Lcom/htc/camera/component/AudioManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 312
    :cond_2
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 313
    return-void
.end method

.method public forceReleaseAudioResource()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x5

    const/4 v6, 0x1

    .line 952
    const/4 v8, 0x0

    .line 956
    const v0, 0xac44

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 957
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x5

    const v2, 0xac44

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v7

    move-object v1, v0

    .line 961
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_1

    if-ge v9, v10, :cond_1

    .line 963
    const-string v0, "AudioManager(Camera)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerForceReleaseAudioResource() - audioRecord.getState():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", retry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 966
    const/4 v8, 0x0

    .line 970
    const-wide/16 v0, 0x64

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 977
    :goto_1
    :try_start_3
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x5

    const v2, 0xac44

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 979
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move-object v1, v0

    goto :goto_0

    .line 972
    :catch_0
    move-exception v0

    .line 974
    const-string v0, "AudioManager(Camera)"

    const-string v1, "triggerForceReleaseAudioResource() - Sleep has been interrupted"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 988
    :catch_1
    move-exception v0

    move-object v1, v8

    .line 990
    :goto_2
    :try_start_4
    const-string v2, "Audio Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerForceReleaseAudioResource() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 996
    if-eqz v1, :cond_0

    .line 998
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_0
    move v0, v7

    .line 992
    :goto_3
    return v0

    .line 982
    :cond_1
    if-lez v9, :cond_3

    if-ge v9, v10, :cond_3

    .line 996
    if-eqz v1, :cond_2

    .line 998
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_2
    move v0, v6

    .line 983
    goto :goto_3

    .line 996
    :cond_3
    if-eqz v1, :cond_4

    .line 998
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_4
    move v0, v7

    .line 985
    goto :goto_3

    .line 996
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_5

    .line 998
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 996
    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 988
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected getCameraMode()Lcom/htc/camera/CameraMode;
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    .line 350
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    goto :goto_0
.end method

.method protected getCameraType()Lcom/htc/camera/CameraType;
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    .line 361
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    goto :goto_0
.end method

.method public getOwnAudioResourceProcessId()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 926
    .line 927
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    const-string v2, "ACTIVE_TX_PID"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 931
    const-string v2, "AudioManager(Camera)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOwnAudioResourceProcessId() - Audio occupied resource pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 936
    if-eqz v0, :cond_0

    .line 946
    :goto_0
    return v0

    .line 940
    :catch_0
    move-exception v0

    .line 942
    const-string v2, "AudioManager(Camera)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOwnAudioResourceProcessId exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 943
    goto :goto_0

    :cond_0
    move v0, v1

    .line 946
    goto :goto_0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 256
    invoke-super {p0, p1}, Lcom/htc/camera/component/ServiceCameraComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 259
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 252
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/camera/component/AudioManager$StreamHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AudioManager;->playInMemorySound(Lcom/htc/camera/component/AudioManager$StreamHandle;)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x271b
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 237
    invoke-super {p0, p1}, Lcom/htc/camera/component/ServiceCameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget v0, p0, Lcom/htc/camera/component/AudioManager;->m_AudioFocusCount:I

    if-lez v0, :cond_0

    .line 232
    iget v0, p0, Lcom/htc/camera/component/AudioManager;->m_AudioFocusCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/component/AudioManager;->m_AudioFocusCount:I

    .line 233
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/htc/camera/component/AudioManager;->m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 371
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->initializeOverride()V

    .line 374
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 375
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 377
    iget-object v1, p0, Lcom/htc/camera/component/AudioManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/AudioManager$4;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/AudioManager$4;-><init>(Lcom/htc/camera/component/AudioManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/AudioManager$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AudioManager$5;-><init>(Lcom/htc/camera/component/AudioManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 406
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/AudioManager$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AudioManager$6;-><init>(Lcom/htc/camera/component/AudioManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 431
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->keyUpEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/AudioManager$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AudioManager$7;-><init>(Lcom/htc/camera/component/AudioManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 452
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AudioManager;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 457
    :cond_0
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSimCardStateMonitorNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getDependencyThreadType()Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->UIThread:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    if-ne v0, v1, :cond_3

    .line 460
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraApplication;->PROPERTY_SIM_OPERATOR:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/component/AudioManager;->m_SimOperatorChangedCallback:Lcom/htc/camera/base/f;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 475
    :cond_1
    :goto_0
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canChangeZoomByVolumeKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    iget-boolean v0, p0, Lcom/htc/camera/component/AudioManager;->m_ForceShutterSound:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/htc/camera/component/AudioManager;->STREAM_SYSTEM_ENFORCED:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/camera/component/AudioManager;->setAudioStreamVolume(I)V

    .line 478
    :cond_2
    return-void

    .line 463
    :cond_3
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/AudioManager$8;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AudioManager$8;-><init>(Lcom/htc/camera/component/AudioManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 476
    :cond_4
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public isBluetoothA2dpOn()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public loadSoundToMemory(I)Lcom/htc/camera/Handle;
    .locals 4

    .prologue
    .line 531
    const-string v0, "AudioManager(Camera)"

    const-string v1, "loadSoundToMemory("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->threadAccessCheck()V

    .line 535
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    const-string v0, "AudioManager(Camera)"

    const-string v1, "loadSoundToMemory() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x0

    .line 548
    :goto_0
    return-object v0

    .line 542
    :cond_0
    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .line 545
    new-instance v0, Lcom/htc/camera/component/AudioManager$SoundHandle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/htc/camera/component/AudioManager$SoundHandle;-><init>(Ljava/lang/String;II)V

    .line 546
    iget-object v2, p0, Lcom/htc/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    const-string v2, "AudioManager(Camera)"

    const-string v3, "loadSoundToMemory() - Sound ID = "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    monitor-exit p0

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 555
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 557
    invoke-direct {p0, p2, v2, v2}, Lcom/htc/camera/component/AudioManager;->setVolumePanelOrientation(Lcom/htc/camera/rotate/UIRotation;IZ)V

    .line 560
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/camera/component/ServiceCameraComponent;->onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 561
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 2

    .prologue
    .line 484
    instance-of v0, p1, Lcom/htc/camera/IRotateDialogManager;

    if-eqz v0, :cond_0

    .line 486
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AudioManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 487
    iget-object v0, v0, Lcom/htc/camera/IRotateDialogManager;->dialogKeyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/AudioManager$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AudioManager$9;-><init>(Lcom/htc/camera/component/AudioManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 505
    :cond_0
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 566
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 568
    invoke-direct {p0, p2, v2, v2}, Lcom/htc/camera/component/AudioManager;->setVolumePanelOrientation(Lcom/htc/camera/rotate/UIRotation;IZ)V

    .line 571
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/camera/component/ServiceCameraComponent;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 572
    return-void
.end method

.method public playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 653
    if-nez p1, :cond_0

    .line 655
    const-string v1, "AudioManager(Camera)"

    const-string v2, "playInMemorySound() - Null handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :goto_0
    return-object v0

    .line 658
    :cond_0
    instance-of v1, p1, Lcom/htc/camera/component/AudioManager$SoundHandle;

    if-nez v1, :cond_1

    .line 660
    const-string v1, "AudioManager(Camera)"

    const-string v2, "playInMemorySound() - Invalid handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->threadAccessCheck()V

    .line 666
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 668
    const-string v1, "AudioManager(Camera)"

    const-string v2, "playInMemorySound() - Component is not running"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_2
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound("

    iget-object v2, p1, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 675
    check-cast p1, Lcom/htc/camera/component/AudioManager$SoundHandle;

    .line 676
    new-instance v6, Lcom/htc/camera/component/AudioManager$StreamHandle;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/camera/component/AudioManager$SoundHandle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p1, p2, p3}, Lcom/htc/camera/component/AudioManager$StreamHandle;-><init>(Ljava/lang/String;Lcom/htc/camera/component/AudioManager$SoundHandle;IZ)V

    .line 678
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Stream handle : "

    iget-object v2, v6, Lcom/htc/camera/component/AudioManager$StreamHandle;->name:Ljava/lang/String;

    const-string v3, " ["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 681
    monitor-enter p0

    .line 683
    :try_start_0
    iget-boolean v0, p1, Lcom/htc/camera/component/AudioManager$SoundHandle;->isLoaded:Z

    if-nez v0, :cond_3

    .line 685
    iget-object v0, p1, Lcom/htc/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Sound is not loaded yet, play later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    monitor-exit p0

    move-object v0, v6

    goto :goto_0

    .line 689
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_5

    .line 694
    :cond_4
    invoke-direct {p0, v6}, Lcom/htc/camera/component/AudioManager;->playInMemorySound(Lcom/htc/camera/component/AudioManager$StreamHandle;)V

    :goto_1
    move-object v0, v6

    .line 700
    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 698
    :cond_5
    const/16 v0, 0x271b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-virtual {p0, v0, v7, v7, v1}, Lcom/htc/camera/component/AudioManager;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_1
.end method

.method public requestAudioFocus()V
    .locals 1

    .prologue
    .line 581
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AudioManager;->removeMessages(I)V

    .line 583
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AudioManager;->requestAudioFocus(I)V

    .line 584
    return-void
.end method

.method public requestAudioFocus(I)V
    .locals 3

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->threadAccessCheck()V

    .line 589
    iget v0, p0, Lcom/htc/camera/component/AudioManager;->m_AudioFocusCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/AudioManager;->m_AudioFocusCount:I

    .line 590
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/htc/camera/component/AudioManager;->m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 595
    return-void
.end method

.method public restoreAudioStreamVolume()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 788
    const-string v0, "AudioManager(Camera)"

    const-string v1, "restoreAudioStreamVolume()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-class v1, Lcom/htc/camera/component/AudioManager;

    monitor-enter v1

    .line 792
    :try_start_0
    sget v0, Lcom/htc/camera/component/AudioManager;->m_OriginalVolumeRing:I

    if-eq v0, v2, :cond_0

    .line 794
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    sget v3, Lcom/htc/camera/component/AudioManager;->m_OriginalVolumeRing:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 795
    const/4 v0, -0x1

    sput v0, Lcom/htc/camera/component/AudioManager;->m_OriginalVolumeRing:I

    .line 797
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/camera/component/AudioManager;->m_IsAlarmVolumeAdjusted:Z

    .line 798
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/camera/component/AudioManager;->m_IsRingVolumeAdjusted:Z

    .line 799
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 800
    monitor-exit v1

    .line 801
    return-void

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNotificationStreamMute(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 853
    const-string v0, "AudioManager(Camera)"

    const-string v1, "setNotificationStreamMute() - State: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 854
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/AudioManager;->m_OriginalRingMode:I

    .line 857
    const-string v0, "AudioManager(Camera)"

    const-string v1, "setNotificationStreamMute() - Change ring mode: "

    iget v2, p0, Lcom/htc/camera/component/AudioManager;->m_OriginalRingMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " -> "

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 858
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/AudioManager;->m_OriginalRingMode:I

    if-eq v0, v5, :cond_0

    .line 865
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 866
    if-nez v0, :cond_2

    .line 868
    const-string v1, "AudioManager(Camera)"

    const-string v2, "setNotificationStreamMute() - Reset ring mode: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, " -> "

    iget v4, p0, Lcom/htc/camera/component/AudioManager;->m_OriginalRingMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 869
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/htc/camera/component/AudioManager;->m_OriginalRingMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 871
    :cond_2
    iput v5, p0, Lcom/htc/camera/component/AudioManager;->m_OriginalRingMode:I

    goto :goto_0
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method public stopInMemorySound(Lcom/htc/camera/Handle;)V
    .locals 4

    .prologue
    .line 747
    if-nez p1, :cond_0

    .line 749
    const-string v0, "AudioManager(Camera)"

    const-string v1, "stopInMemorySound() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :goto_0
    return-void

    .line 752
    :cond_0
    instance-of v0, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;

    if-nez v0, :cond_1

    .line 754
    const-string v0, "AudioManager(Camera)"

    const-string v1, "stopInMemorySound() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->threadAccessCheck()V

    .line 760
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 762
    const-string v0, "AudioManager(Camera)"

    const-string v1, "stopInMemorySound() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_2
    const-string v0, "AudioManager(Camera)"

    const-string v1, "stopInMemorySound("

    iget-object v2, p1, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 769
    monitor-enter p0

    .line 771
    :try_start_0
    check-cast p1, Lcom/htc/camera/component/AudioManager$StreamHandle;

    .line 772
    iget-object v0, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;->sound:Lcom/htc/camera/component/AudioManager$SoundHandle;

    iget-boolean v0, v0, Lcom/htc/camera/component/AudioManager$SoundHandle;->isLoaded:Z

    if-eqz v0, :cond_3

    .line 773
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    iget v1, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 774
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    iget v1, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;->streamId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 775
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    iget v1, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 779
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 778
    :cond_3
    :try_start_1
    iget-object v0, p1, Lcom/htc/camera/component/AudioManager$StreamHandle;->sound:Lcom/htc/camera/component/AudioManager$SoundHandle;

    iget-object v0, v0, Lcom/htc/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
