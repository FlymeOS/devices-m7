.class public Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;
.super Landroid/app/Dialog;
.source "HtcShutdownScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcShutdownScreen"


# instance fields
.field private mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

.field mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

.field private mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

.field private mSilentMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;-><init>(Landroid/content/Context;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 50
    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 52
    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mSilentMode:Z

    .line 57
    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .line 87
    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    .line 447
    new-instance v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    .line 101
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private initAudio()V
    .locals 3

    .prologue
    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 403
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 407
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v2, v2, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->audio:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 409
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 413
    const-string v1, "HtcShutdownScreen"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 416
    const-string v1, "HtcShutdownScreen"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 419
    const-string v1, "HtcShutdownScreen"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 422
    const-string v1, "HtcShutdownScreen"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initLayout()V
    .locals 7

    .prologue
    const/16 v4, 0x18

    const/4 v3, 0x1

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 355
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 359
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->requestWindowFeature(I)Z

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 367
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v2, v2, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 368
    new-instance v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v5, v5, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngLandPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget v6, v6, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->fps:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .line 369
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->setOnAnimationListener(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;)V

    .line 370
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->setContentView(Landroid/view/View;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/customize/resource/shutdown.zip"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v1, "default_shutdown_file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    const-string v3, "/system/customize/resource/shutdown.zip"

    iput-object v3, v2, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngPath:Ljava/lang/String;

    .line 376
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    const/16 v3, 0xf

    iput v3, v2, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->fps:I

    .line 377
    new-instance v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v5, v5, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngLandPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget v6, v6, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->fps:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .line 378
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->setOnAnimationListener(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;)V

    .line 379
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 434
    monitor-enter p0

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 439
    const-string v0, "HtcShutdownScreen"

    const-string v1, "cancel - stop media"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 444
    return-void

    .line 441
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onActivityResult()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 499
    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 504
    const-string v0, "HtcShutdownScreen"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    monitor-exit p0

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 123
    :try_start_0
    new-instance v22, Ljava/io/File;

    const-string v24, "system/etc/customer/shutdown.gif"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v22, "small_operator_image":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 125
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_0

    .line 126
    const-string v24, "HtcShutdownScreen"

    const-string v25, "Operator specific resource."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    new-instance v24, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    const-string v25, "system/etc/customer/shutdown.gif"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    const-string v25, "system/etc/customer/shutdown.mp3"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->audio:Ljava/lang/String;

    .line 276
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->audio:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1e

    .line 277
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->audio:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v2, "audio_file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v2    # "audio_file":Ljava/io/File;
    .end local v22    # "small_operator_image":Ljava/io/File;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "mode_ringer"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v19

    .line 300
    .local v19, "ringMode":I
    if-eqz v19, :cond_3

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 301
    :cond_3
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mSilentMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 311
    .end local v19    # "ringMode":I
    :cond_4
    :goto_2
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_5

    .line 312
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "image ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bgPath ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->bgPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cust_Shutdown_animation: ZIP> \""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "pngLandPath = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngLandPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cust_Shutdown_animation: Audio> \""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->audio:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "screenX ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->screenX:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "screenY ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->screenY:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v25, "HtcShutdownScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cust_Shutdown_animation: useAudio> \""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z

    move/from16 v24, v0

    if-eqz v24, :cond_20

    const-string v24, "Yes"

    :goto_3
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "\""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mSilentMode ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mSilentMode:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mSilentMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->initAudio()V

    .line 330
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->initLayout()V

    .line 331
    return-void

    .line 137
    .restart local v22    # "small_operator_image":Ljava/io/File;
    :cond_7
    :try_start_2
    new-instance v24, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    .line 138
    const-string v24, "ro.cid"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 141
    .local v23, "str_cid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 142
    .local v4, "bUseOmadmAnimation":Z
    const-string v18, "/carrier/default.xml"

    .line 143
    .local v18, "omadm_config_path":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v16, "omadmConfig":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 145
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_8

    .line 146
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "omadm_config_path:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_13

    .line 151
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "/system/customize/CID/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 152
    .local v17, "omadm_cid_config_path":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v15, "omadmCidConfig":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 154
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_9

    .line 155
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "omadm_cid_config_path:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 159
    const/4 v4, 0x1

    .line 160
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_a

    .line 161
    const-string v24, "HtcShutdownScreen"

    const-string v25, "htcshutdownscreen, use omadm cid animation"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v15    # "omadmCidConfig":Ljava/io/File;
    .end local v17    # "omadm_cid_config_path":Ljava/lang/String;
    :cond_a
    :goto_4
    if-nez v4, :cond_1

    .line 177
    const/4 v3, 0x0

    .line 178
    .local v3, "bUseCwAnimation":Z
    const-string v13, "/data/data/cw/animation.xml"

    .line 179
    .local v13, "cw_config_path":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v12, "cwConfig":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 181
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_b

    .line 182
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cw_config_path:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    .line 186
    const/4 v3, 0x1

    .line 187
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_c

    .line 188
    const-string v24, "HtcShutdownScreen"

    const-string v25, "htcshutdownscreen, use cw animation"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_c
    if-nez v3, :cond_1

    .line 195
    const-string v11, "/data/data/com.htc.CustomizationSetup/files/boot_anim_mns"

    .line 196
    .local v11, "custFilePath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v10, "custFileConfig":Ljava/io/File;
    const/4 v5, 0x0

    .line 198
    .local v5, "bUseSimAnimation":Z
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v24

    if-eqz v24, :cond_19

    .line 199
    const/4 v8, 0x0

    .line 200
    .local v8, "csfBuf":Ljava/io/BufferedReader;
    const/16 v21, 0x0

    .line 202
    .local v21, "sim_config_path":Ljava/lang/String;
    :try_start_3
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/FileReader;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    .end local v8    # "csfBuf":Ljava/io/BufferedReader;
    .local v9, "csfBuf":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v21

    .line 208
    if-eqz v9, :cond_21

    .line 210
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 211
    const/4 v8, 0x0

    .line 219
    .end local v9    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v8    # "csfBuf":Ljava/io/BufferedReader;
    :cond_d
    :goto_5
    if-eqz v21, :cond_18

    .line 220
    :try_start_6
    new-instance v20, Ljava/io/File;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v20, "simConfig":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 222
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_e

    .line 223
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sim_config_path:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    .line 227
    const/4 v5, 0x1

    .line 228
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_f

    .line 229
    const-string v24, "HtcShutdownScreen"

    const-string v25, "use sim animation"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v8    # "csfBuf":Ljava/io/BufferedReader;
    .end local v20    # "simConfig":Ljava/io/File;
    .end local v21    # "sim_config_path":Ljava/lang/String;
    :cond_f
    :goto_6
    if-nez v5, :cond_1

    .line 243
    if-eqz v23, :cond_1c

    .line 244
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_10

    .line 245
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CID:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_10
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "/system/customize/CID/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "config_path":Ljava/lang/String;
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_11

    .line 249
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "config_path:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_11
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v6, "config":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 255
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_12

    .line 256
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Parse "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "failed.  Use default.xml."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    const-string v25, "/system/customize/CID/default.xml"

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 294
    .end local v3    # "bUseCwAnimation":Z
    .end local v4    # "bUseOmadmAnimation":Z
    .end local v5    # "bUseSimAnimation":Z
    .end local v6    # "config":Ljava/io/File;
    .end local v7    # "config_path":Ljava/lang/String;
    .end local v10    # "custFileConfig":Ljava/io/File;
    .end local v11    # "custFilePath":Ljava/lang/String;
    .end local v12    # "cwConfig":Ljava/io/File;
    .end local v13    # "cw_config_path":Ljava/lang/String;
    .end local v16    # "omadmConfig":Ljava/io/File;
    .end local v18    # "omadm_config_path":Ljava/lang/String;
    .end local v22    # "small_operator_image":Ljava/io/File;
    .end local v23    # "str_cid":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 295
    .local v14, "e":Ljava/lang/Exception;
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_2

    .line 296
    const-string v24, "HtcShutdownScreen"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 165
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v4    # "bUseOmadmAnimation":Z
    .restart local v16    # "omadmConfig":Ljava/io/File;
    .restart local v18    # "omadm_config_path":Ljava/lang/String;
    .restart local v22    # "small_operator_image":Ljava/io/File;
    .restart local v23    # "str_cid":Ljava/lang/String;
    :cond_13
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 166
    const/4 v4, 0x1

    .line 167
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_a

    .line 168
    const-string v24, "HtcShutdownScreen"

    const-string v25, "htcshutdownscreen, use omadm animation"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 212
    .restart local v3    # "bUseCwAnimation":Z
    .restart local v5    # "bUseSimAnimation":Z
    .restart local v9    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v10    # "custFileConfig":Ljava/io/File;
    .restart local v11    # "custFilePath":Ljava/lang/String;
    .restart local v12    # "cwConfig":Ljava/io/File;
    .restart local v13    # "cw_config_path":Ljava/lang/String;
    .restart local v21    # "sim_config_path":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 213
    .restart local v14    # "e":Ljava/lang/Exception;
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_14

    .line 214
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception closing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_14
    move-object v8, v9

    .line 215
    .end local v9    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v8    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 204
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v14

    .line 205
    .restart local v14    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_15

    .line 206
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception reading "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 208
    :cond_15
    if-eqz v8, :cond_d

    .line 210
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 211
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 212
    :catch_3
    move-exception v14

    .line 213
    :try_start_a
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_d

    .line 214
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception closing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_5

    .line 208
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v24

    :goto_8
    if-eqz v8, :cond_16

    .line 210
    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 211
    const/4 v8, 0x0

    .line 215
    :cond_16
    :goto_9
    :try_start_c
    throw v24

    .line 212
    :catch_4
    move-exception v14

    .line 213
    .restart local v14    # "e":Ljava/lang/Exception;
    sget-boolean v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v25, :cond_16

    .line 214
    const-string v25, "HtcShutdownScreen"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception closing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 232
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v20    # "simConfig":Ljava/io/File;
    :cond_17
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_f

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " does not eixst"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 235
    .end local v20    # "simConfig":Ljava/io/File;
    :cond_18
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_f

    const-string v24, "HtcShutdownScreen"

    const-string v25, "Empty path"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 238
    .end local v8    # "csfBuf":Ljava/io/BufferedReader;
    .end local v21    # "sim_config_path":Ljava/lang/String;
    :cond_19
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_f

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " does not exist"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 261
    .restart local v6    # "config":Ljava/io/File;
    .restart local v7    # "config_path":Ljava/lang/String;
    :cond_1a
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_1b

    .line 262
    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Can\'t load "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".  Use default.xml."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    const-string v25, "/system/customize/CID/default.xml"

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    goto/16 :goto_0

    .line 267
    .end local v6    # "config":Ljava/io/File;
    .end local v7    # "config_path":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    const-string v25, "/system/customize/CID/default.xml"

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    goto/16 :goto_0

    .line 281
    .end local v3    # "bUseCwAnimation":Z
    .end local v4    # "bUseOmadmAnimation":Z
    .end local v5    # "bUseSimAnimation":Z
    .end local v10    # "custFileConfig":Ljava/io/File;
    .end local v11    # "custFilePath":Ljava/lang/String;
    .end local v12    # "cwConfig":Ljava/io/File;
    .end local v13    # "cw_config_path":Ljava/lang/String;
    .end local v16    # "omadmConfig":Ljava/io/File;
    .end local v18    # "omadm_config_path":Ljava/lang/String;
    .end local v23    # "str_cid":Ljava/lang/String;
    .restart local v2    # "audio_file":Ljava/io/File;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z

    goto/16 :goto_1

    .line 291
    .end local v2    # "audio_file":Ljava/io/File;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1

    .line 303
    .end local v22    # "small_operator_image":Ljava/io/File;
    .restart local v19    # "ringMode":I
    :cond_1f
    const/16 v24, 0x0

    :try_start_d
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mSilentMode:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_2

    .line 306
    .end local v19    # "ringMode":I
    :catch_5
    move-exception v14

    .line 307
    .restart local v14    # "e":Ljava/lang/Exception;
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_4

    .line 308
    const-string v24, "HtcShutdownScreen"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 319
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_20
    const-string v24, "No"

    goto/16 :goto_3

    .line 208
    .restart local v3    # "bUseCwAnimation":Z
    .restart local v4    # "bUseOmadmAnimation":Z
    .restart local v5    # "bUseSimAnimation":Z
    .restart local v9    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v10    # "custFileConfig":Ljava/io/File;
    .restart local v11    # "custFilePath":Ljava/lang/String;
    .restart local v12    # "cwConfig":Ljava/io/File;
    .restart local v13    # "cw_config_path":Ljava/lang/String;
    .restart local v16    # "omadmConfig":Ljava/io/File;
    .restart local v18    # "omadm_config_path":Ljava/lang/String;
    .restart local v21    # "sim_config_path":Ljava/lang/String;
    .restart local v22    # "small_operator_image":Ljava/io/File;
    .restart local v23    # "str_cid":Ljava/lang/String;
    :catchall_1
    move-exception v24

    move-object v8, v9

    .end local v9    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v8    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_8

    .line 204
    .end local v8    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v9    # "csfBuf":Ljava/io/BufferedReader;
    :catch_6
    move-exception v14

    move-object v8, v9

    .end local v9    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v8    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .end local v8    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v9    # "csfBuf":Ljava/io/BufferedReader;
    :cond_21
    move-object v8, v9

    .end local v9    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v8    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_5
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 345
    const-string v0, "HtcShutdownScreen"

    const-string v1, "onStop - stop media"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    monitor-exit p0

    .line 349
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShutdownListener(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    .line 491
    return-void
.end method
