.class public final Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;
.super Ljava/lang/Thread;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final FM_SERVICE_COMMAND:Ljava/lang/String; = "com.htc.fm.servicecommand"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x41

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_RESTART_WAIT_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_ANIMATION_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final NUM_CALL_STACK_LAYER:I = 0x5

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcShutdownThread"

.field private static htcpd:Lcom/htc/app/HtcProgressDialog;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mResumeCount:I

.field private static mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

.field private static sConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

.field private static sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

.field private static sIsAnimationCompleted:Z

.field private static sIsAnimationReady:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 139
    sput-boolean v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    .line 140
    sput-boolean v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 141
    sput-boolean v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    .line 168
    sput v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mResumeCount:I

    .line 455
    new-instance v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$4;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$4;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 171
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 115
    sput-boolean p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 115
    sput-boolean p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 349
    const-string v3, "HtcShutdownThread"

    const-string v4, "Shutdown sequence begin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.SHUTDOWN_ANIMATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 353
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 354
    :try_start_0
    sget-boolean v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_2

    .line 355
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 356
    const-string v3, "HtcShutdownThread"

    const-string v5, "User perform shutdown already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    const-string v3, "HtcShutdownThread"

    const-string v5, "Shutdown sequence already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-exit v4

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 360
    :cond_2
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    .line 361
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v2, "home":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    .end local v2    # "home":Landroid/content/Intent;
    :goto_1
    invoke-static {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->isUseAnimation(Landroid/content/Context;)Z

    move-result v0

    .line 376
    .local v0, "bUseAnim":Z
    if-nez v0, :cond_5

    .line 380
    new-instance v3, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v3, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Lcom/htc/app/HtcProgressDialog;

    .line 381
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Lcom/htc/app/HtcProgressDialog;

    const v4, 0x10400e9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Lcom/htc/app/HtcProgressDialog;

    const v4, 0x10400ed

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 383
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3, v6}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 384
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 385
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 387
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 389
    sput-boolean v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 390
    sput-boolean v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    .line 408
    :goto_2
    const-string v3, "persist.sys.prev.powerdown"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v3, "persist.sys.vzwlogger.zygote"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-direct {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;-><init>()V

    sput-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    .line 414
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object p0, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    .line 415
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 417
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 419
    :try_start_2
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "HtcShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 421
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_3

    .line 422
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 423
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 432
    :cond_3
    :goto_3
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 433
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 435
    :try_start_3
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "HtcShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 437
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_4

    .line 438
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 439
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 447
    :cond_4
    :goto_4
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    new-instance v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$3;

    invoke-direct {v4}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$3;-><init>()V

    iput-object v4, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    .line 449
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 450
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->start()V

    goto/16 :goto_0

    .line 361
    .end local v0    # "bUseAnim":Z
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 370
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcShutdownThread"

    const-string v4, "Can not launch Home Screen (Intent.CATEGORY_HOME)!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 392
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bUseAnim":Z
    :cond_5
    const-string v3, "HtcShutdownThread"

    const-string v4, "start animation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    const v4, 0x1030005

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    .line 395
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->setShutdownListener(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;)V

    .line 397
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7e5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 398
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 399
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 401
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->setCancelable(Z)V

    .line 402
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->show()V

    .line 404
    sput-boolean v5, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    goto/16 :goto_2

    .line 425
    :catch_1
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/SecurityException;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_6

    .line 427
    const-string v3, "HtcShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :cond_6
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 441
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 442
    .restart local v1    # "e":Ljava/lang/SecurityException;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_7

    .line 443
    const-string v3, "HtcShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    :cond_7
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 7
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1499
    const-string v3, "HtcShutdownThread"

    const-string v4, "deviceRebootOrShutdown(), for A11 QCT 8916 API, requested by SSD"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const-string v1, "com.qti.server.power.ShutdownOem"

    .line 1504
    .local v1, "deviceShutdownClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1507
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v3, "rebootOrShutdown"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1508
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1520
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1517
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1515
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1512
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v3

    goto :goto_0

    .line 1510
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private static getVibrateDuration()I
    .locals 7

    .prologue
    .line 1481
    const/4 v3, 0x0

    .line 1483
    .local v3, "nRet":I
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 1484
    .local v0, "customizationManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "Android_Core_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 1485
    .local v2, "frameworkReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "shutdown_vibrate_ms"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1489
    .end local v0    # "customizationManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v2    # "frameworkReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    return v3

    .line 1486
    :catch_0
    move-exception v1

    .line 1487
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HtcShutdownThread"

    const-string v5, "Read customization fail!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isUseAnimation(Landroid/content/Context;)Z
    .locals 27
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1304
    new-instance v14, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    invoke-direct {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;-><init>()V

    .line 1305
    .local v14, "mReader":Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;
    new-instance v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-direct {v13}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;-><init>()V

    .line 1306
    .local v13, "mData":Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;
    const/16 v22, 0x0

    .line 1307
    .local v22, "useAnimation":Z
    const-string v23, "ro.cid"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1316
    .local v21, "str_cid":Ljava/lang/String;
    const-string v18, "/carrier/default.xml"

    .line 1317
    .local v18, "omadm_config_path":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1318
    .local v16, "omadmConfig":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1319
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_0

    .line 1320
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "omadm_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_0
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1323
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1324
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/system/customize/CID/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1325
    .local v17, "omadm_cid_config_path":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v15, "omadmCidConfig":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1327
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_1

    .line 1328
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "omadm_cid_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1331
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_2

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_2
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 1333
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_3

    .line 1334
    const-string v23, "HtcShutdownThread"

    const-string v24, "htcshutdownthread, use omadm cid animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_3
    const/16 v23, 0x1

    .line 1477
    .end local v15    # "omadmCidConfig":Ljava/io/File;
    .end local v17    # "omadm_cid_config_path":Ljava/lang/String;
    :goto_0
    return v23

    .line 1339
    :cond_4
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_5

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_5
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 1341
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_6

    .line 1342
    const-string v23, "HtcShutdownThread"

    const-string v24, "htcshutdownthread, use omadm animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_6
    const/16 v23, 0x1

    goto :goto_0

    .line 1349
    :cond_7
    const-string v10, "/data/data/cw/animation.xml"

    .line 1350
    .local v10, "cw_config_path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v9, "cwConfig":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1352
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_8

    .line 1353
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "cw_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_8
    invoke-virtual {v14, v10}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1356
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_9

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_9
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 1358
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_a

    .line 1359
    const-string v23, "HtcShutdownThread"

    const-string v24, "htcshutdownthread, use cw animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_a
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 1368
    :cond_b
    const-string v2, "boot_anim_mns"

    .line 1369
    .local v2, "BOOT_ANIM_MNS_PATH_FILE":Ljava/lang/String;
    const-string v23, "boot_anim_mns"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 1370
    .local v7, "custFileConfig":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1374
    .local v8, "custFilePath":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 1375
    const/4 v5, 0x0

    .line 1376
    .local v5, "csfBuf":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 1378
    .local v20, "sim_config_path":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/FileReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .local v6, "csfBuf":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v20

    .line 1384
    if-eqz v6, :cond_25

    .line 1386
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1387
    const/4 v5, 0x0

    .line 1395
    .end local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    :cond_c
    :goto_1
    if-eqz v20, :cond_1b

    .line 1396
    new-instance v19, Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1397
    .local v19, "simConfig":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_13

    .line 1398
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_d

    .line 1399
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "sim_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_d
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1402
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_e

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_e
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    .line 1404
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_f

    .line 1405
    const-string v23, "HtcShutdownThread"

    const-string v24, "use sim animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_f
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 1388
    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .end local v19    # "simConfig":Ljava/io/File;
    .restart local v6    # "csfBuf":Ljava/io/BufferedReader;
    :catch_0
    move-exception v12

    .line 1389
    .local v12, "e":Ljava/lang/Exception;
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_10

    .line 1390
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception closing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    move-object v5, v6

    .line 1391
    .end local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 1380
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 1381
    .restart local v12    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_11

    .line 1382
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception reading "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1384
    :cond_11
    if-eqz v5, :cond_c

    .line 1386
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1387
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1388
    :catch_2
    move-exception v12

    .line 1389
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_c

    .line 1390
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception closing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1384
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    :goto_3
    if-eqz v5, :cond_12

    .line 1386
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1387
    const/4 v5, 0x0

    .line 1391
    :cond_12
    :goto_4
    throw v23

    .line 1388
    :catch_3
    move-exception v12

    .line 1389
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_12

    .line 1390
    const-string v24, "HtcShutdownThread"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception closing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1409
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v19    # "simConfig":Ljava/io/File;
    :cond_13
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_14

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " does not eixst"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .end local v19    # "simConfig":Ljava/io/File;
    .end local v20    # "sim_config_path":Ljava/lang/String;
    :cond_14
    :goto_5
    if-eqz v21, :cond_22

    .line 1420
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_15

    .line 1421
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CID:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_15
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/system/customize/CID/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1424
    .local v4, "config_path":Ljava/lang/String;
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_16

    .line 1425
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_16
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1428
    .local v3, "config":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1f

    .line 1429
    invoke-virtual {v14, v4}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1431
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_1e

    .line 1432
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_17

    .line 1433
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Parse "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "failed.  Use default.xml."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_17
    const-string v23, "/system/customize/CID/default.xml"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1436
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_1d

    .line 1437
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_18

    .line 1438
    const-string v23, "HtcShutdownThread"

    const-string v24, "Parse default.xml failed.  Use default dialog"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    .end local v3    # "config":Ljava/io/File;
    .end local v4    # "config_path":Ljava/lang/String;
    :cond_18
    :goto_6
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_19

    .line 1471
    new-instance v11, Ljava/io/File;

    const-string v23, "/system/customize/resource/shutdown.zip"

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v11, "defaultFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 1473
    const/16 v22, 0x1

    .line 1476
    .end local v11    # "defaultFile":Ljava/io/File;
    :cond_19
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_1a

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move/from16 v23, v22

    .line 1477
    goto/16 :goto_0

    .line 1412
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v20    # "sim_config_path":Ljava/lang/String;
    :cond_1b
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_14

    const-string v23, "HtcShutdownThread"

    const-string v24, "Empty path"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1415
    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .end local v20    # "sim_config_path":Ljava/lang/String;
    :cond_1c
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_14

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " does not exist"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1440
    .restart local v3    # "config":Ljava/io/File;
    .restart local v4    # "config_path":Ljava/lang/String;
    :cond_1d
    const/16 v22, 0x1

    goto :goto_6

    .line 1443
    :cond_1e
    const/16 v22, 0x1

    goto :goto_6

    .line 1446
    :cond_1f
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_20

    .line 1447
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Can\'t load "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".  Use default.xml."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_20
    const-string v23, "/system/customize/CID/default.xml"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1450
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_21

    .line 1451
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_18

    .line 1452
    const-string v23, "HtcShutdownThread"

    const-string v24, "Parse default.xml failed.  Use default dialog"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1454
    :cond_21
    const/16 v22, 0x1

    goto/16 :goto_6

    .line 1458
    .end local v3    # "config":Ljava/io/File;
    .end local v4    # "config_path":Ljava/lang/String;
    :cond_22
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_23

    .line 1459
    const-string v23, "HtcShutdownThread"

    const-string v24, "Can\'t find CID.  Use default.xml."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_23
    const-string v23, "/system/customize/CID/default.xml"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1462
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_24

    .line 1463
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_18

    .line 1464
    const-string v23, "HtcShutdownThread"

    const-string v24, "Parse default.xml failed.  Use default dialog"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1466
    :cond_24
    const/16 v22, 0x1

    goto/16 :goto_6

    .line 1384
    .restart local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v20    # "sim_config_path":Ljava/lang/String;
    :catchall_1
    move-exception v23

    move-object v5, v6

    .end local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1380
    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v6    # "csfBuf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v12

    move-object v5, v6

    .end local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v6    # "csfBuf":Ljava/io/BufferedReader;
    :cond_25
    move-object v5, v6

    .end local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    .line 319
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    .line 320
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    .line 321
    sput-object p1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 322
    invoke-static {p0, p2}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 323
    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x1

    .line 337
    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    .line 338
    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    .line 339
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 340
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 341
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 187
    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    .line 188
    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    .line 189
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 190
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 195
    sget-object v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 196
    :try_start_0
    sget-boolean v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_0

    .line 197
    const-string v7, "HtcShutdownThread"

    const-string v9, "Request to shutdown already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    monitor-exit v8

    .line 269
    :goto_0
    return-void

    .line 200
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const/4 v7, 0x5

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "caller":Ljava/lang/String;
    const-string v7, "HtcShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caller = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_1

    .line 217
    const-string v7, "HtcShutdownThread"

    const-string v8, "Notifying thread to start shutdown"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    if-eqz p1, :cond_6

    .line 222
    sget-boolean v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    if-eqz v7, :cond_5

    .line 223
    sget-boolean v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v7, :cond_3

    const v6, 0x10400f0

    .line 224
    .local v6, "idTitle":I
    :goto_1
    sget-boolean v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v7, :cond_4

    const v3, 0x10400f1

    .line 225
    .local v3, "idMessage":I
    :goto_2
    const v5, 0x20400d0

    .line 226
    .local v5, "idPositive":I
    const v4, 0x1040009

    .line 234
    .local v4, "idNegative":I
    :goto_3
    new-instance v2, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 235
    .local v2, "closer":Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;
    sget-object v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v7, :cond_2

    .line 236
    sget-object v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 238
    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v7, 0x2030069

    invoke-direct {v0, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 239
    .local v0, "HtcDefaultTheme":Landroid/view/ContextThemeWrapper;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$2;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$1;

    invoke-direct {v8}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$1;-><init>()V

    invoke-virtual {v7, v4, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    sput-object v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 253
    sget-object v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    iput-object v7, v2, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 254
    sget-object v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 255
    sget-object v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 256
    sget-object v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 200
    .end local v0    # "HtcDefaultTheme":Landroid/view/ContextThemeWrapper;
    .end local v1    # "caller":Ljava/lang/String;
    .end local v2    # "closer":Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;
    .end local v3    # "idMessage":I
    .end local v4    # "idNegative":I
    .end local v5    # "idPositive":I
    .end local v6    # "idTitle":I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 223
    .restart local v1    # "caller":Ljava/lang/String;
    :cond_3
    const v6, 0x20400ce

    goto :goto_1

    .line 224
    .restart local v6    # "idTitle":I
    :cond_4
    const v3, 0x20400cf

    goto :goto_2

    .line 228
    .end local v6    # "idTitle":I
    :cond_5
    const v6, 0x10400e9

    .line 229
    .restart local v6    # "idTitle":I
    const v3, 0x10400ee

    .line 230
    .restart local v3    # "idMessage":I
    const v5, 0x1040013

    .line 231
    .restart local v5    # "idPositive":I
    const v4, 0x1040009

    .restart local v4    # "idNegative":I
    goto :goto_3

    .line 267
    .end local v3    # "idMessage":I
    .end local v4    # "idNegative":I
    .end local v5    # "idPositive":I
    .end local v6    # "idTitle":I
    :cond_6
    invoke-static {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 479
    monitor-exit v1

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dismissDialog(Landroid/app/Dialog;)V
    .locals 8
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 496
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    .line 497
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;

    invoke-direct {v5, p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v2, v4, v6

    .line 509
    .local v2, "endTime":J
    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v5

    .line 510
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_0

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 512
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    .line 513
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 514
    const-string v4, "HtcShutdownThread"

    const-string v6, "Dismiss shutdown screen timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .end local v0    # "delay":J
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    return-void

    .line 518
    .restart local v0    # "delay":J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v4

    goto :goto_0

    .line 522
    .end local v0    # "delay":J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method dismissProgressDialog()V
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 492
    return-void
.end method

.method dismissShutdownScreen()V
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 485
    return-void
.end method

.method public run()V
    .locals 58

    .prologue
    .line 535
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 537
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    .line 540
    const/16 v35, 0x0

    .line 541
    .local v35, "nfcOff":Z
    const/16 v43, 0x0

    .line 544
    .local v43, "radioOff":Z
    const/16 v41, 0x0

    .line 545
    .local v41, "radioGsmOff":Z
    const/16 v39, 0x0

    .line 546
    .local v39, "radioCdmaOff":Z
    const/16 v44, 0x0

    .line 555
    .local v44, "radioSubGsmOff":Z
    const/16 v46, 0x0

    .line 557
    .local v46, "radioWasOn":Z
    const/16 v42, 0x0

    .line 558
    .local v42, "radioGsmWasOn":Z
    const/16 v40, 0x0

    .line 559
    .local v40, "radioCdmaWasOn":Z
    const/16 v45, 0x0

    .line 568
    .local v45, "radioSubGsmWasOn":Z
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    .line 570
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 572
    :try_start_0
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v6, v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v9, "HtcShutdownThread-shutdown"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 574
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_1

    .line 575
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 576
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :cond_1
    :goto_1
    new-instance v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$6;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;)V

    .line 591
    .local v8, "br":Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v14

    .line 598
    .local v14, "alarm":Landroid/app/IAlarmManager;
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_2

    .line 599
    const-string v4, "persist.sys.safemode"

    const-string v6, "1"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_2
    const-string v4, "HtcShutdownThread"

    const-string v6, "Sending shutdown broadcast..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 611
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    .line 612
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x2710

    add-long v28, v6, v10

    .line 613
    .local v28, "endTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v6

    .line 614
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_3

    .line 615
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v18, v28, v10

    .line 616
    .local v18, "delay":J
    const-wide/16 v10, 0x0

    cmp-long v4, v18, v10

    if-gtz v4, :cond_18

    .line 617
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_3

    .line 618
    const-string v4, "HtcShutdownThread"

    const-string v7, "Shutdown poweroff broadcast timed out"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v18    # "delay":J
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    const-string v4, "HtcShutdownThread"

    const-string v6, "Start to turn off modules"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v4, "init.svc.zchgd_onmode"

    const-string v6, "stopped"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "stopped"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 638
    const-string v4, "ctl.stop"

    const-string v6, "zchgd_onmode"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x2710

    add-long v24, v6, v10

    .line 641
    .local v24, "endRestartTime":J
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v18, v24, v6

    .line 642
    .restart local v18    # "delay":J
    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-gtz v4, :cond_19

    .line 643
    const-string v4, "HtcShutdownThread"

    const-string v6, "zchgd_onmode timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v18    # "delay":J
    .end local v24    # "endRestartTime":J
    :cond_5
    :goto_3
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "zchgd_onmode status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "init.svc.zchgd_onmode"

    const-string v9, "stopped"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/telephony/TelephonyManager;

    .line 662
    .local v53, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v4, "nfc"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v34

    .line 665
    .local v34, "nfc":Landroid/nfc/INfcAdapter;
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v37

    .line 667
    .local v37, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v4, "bluetooth_manager"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v16

    .line 670
    .local v16, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v32

    .line 679
    .local v32, "mount":Landroid/os/storage/IMountService;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 681
    .local v13, "IsAirplaneMode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v48

    .line 685
    .local v48, "screenBrightnessMode":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v47

    .line 691
    .local v47, "screenBrightness":I
    :goto_4
    if-nez v48, :cond_1a

    .line 692
    const-string v4, "sys.shutdown.brightness"

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, v47

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :goto_5
    :try_start_3
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check NFC state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    if-eqz v34, :cond_6

    invoke-interface/range {v34 .. v34}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1b

    :cond_6
    const/16 v35, 0x1

    .line 702
    :goto_6
    if-nez v35, :cond_7

    .line 703
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off NFC..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 713
    :cond_7
    :goto_7
    :try_start_4
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check Bluetooth state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1d

    :cond_8
    const/16 v17, 0x1

    .line 715
    .local v17, "bluetoothOff":Z
    :goto_8
    if-nez v17, :cond_9

    .line 716
    const-string v4, "HtcShutdownThread"

    const-string v6, "Disabling Bluetooth..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 726
    :cond_9
    :goto_9
    invoke-virtual/range {v53 .. v53}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_23

    const-wide/16 v6, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_23

    .line 728
    :try_start_5
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check GSM Radio state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    if-eqz v37, :cond_a

    const-wide/16 v6, 0x1

    move-object/from16 v0, v37

    invoke-interface {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(J)Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_a
    const/16 v41, 0x1

    .line 730
    :goto_a
    if-eqz v37, :cond_c

    .line 731
    if-nez v13, :cond_b

    .line 732
    const/16 v42, 0x1

    .line 733
    :cond_b
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off GSM radio..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v6, v7, v4}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(JZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 741
    :cond_c
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioGsmOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_b
    :try_start_6
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check CDMA Radio state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    if-eqz v37, :cond_d

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v4

    if-nez v4, :cond_21

    :cond_d
    const/16 v39, 0x1

    .line 747
    :goto_c
    if-eqz v37, :cond_f

    .line 748
    if-nez v13, :cond_e

    .line 749
    const/16 v40, 0x1

    .line 750
    :cond_e
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off CDMA radio..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-wide/16 v6, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v6, v7, v4}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(JZ)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 758
    :cond_f
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioCdmaOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :goto_d
    const-string v4, "HtcShutdownThread"

    const-string v6, "Stop FM"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v30, Landroid/content/Intent;

    const-string v4, "com.htc.fm.servicecommand"

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    .local v30, "fmPauseIntent":Landroid/content/Intent;
    const-string v4, "command"

    const-string v6, "stop"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 845
    const-string v4, "HtcShutdownThread"

    const-string v6, "Waiting for NFC, Bluetooth, Radio..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/16 v31, 0x1

    .local v31, "i":I
    :goto_e
    const/16 v4, 0x41

    move/from16 v0, v31

    if-gt v0, v4, :cond_14

    .line 849
    if-nez v17, :cond_10

    .line 851
    :try_start_7
    invoke-interface/range {v16 .. v16}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_a

    move-result v4

    if-nez v4, :cond_34

    const/16 v17, 0x1

    .line 857
    :goto_f
    if-eqz v17, :cond_10

    .line 858
    const-string v4, "HtcShutdownThread"

    const-string v6, "Bluetooth turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_10
    invoke-virtual/range {v53 .. v53}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_3a

    const-wide/16 v6, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3a

    .line 863
    if-nez v41, :cond_11

    .line 865
    const-wide/16 v6, 0x1

    :try_start_8
    move-object/from16 v0, v37

    invoke-interface {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(J)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_b

    move-result v4

    if-nez v4, :cond_36

    const/16 v41, 0x1

    .line 871
    :goto_10
    if-eqz v41, :cond_11

    .line 872
    const-string v4, "HtcShutdownThread"

    const-string v6, "GSM radio turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_11
    if-nez v39, :cond_12

    .line 877
    const-wide/16 v6, 0x2

    :try_start_9
    move-object/from16 v0, v37

    invoke-interface {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_c

    move-result v4

    if-nez v4, :cond_38

    const/16 v39, 0x1

    .line 883
    :goto_11
    if-eqz v39, :cond_12

    .line 884
    const-string v4, "HtcShutdownThread"

    const-string v6, "CDMA radio turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_12
    :goto_12
    if-nez v35, :cond_13

    .line 974
    :try_start_a
    invoke-interface/range {v34 .. v34}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_10

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_43

    const/16 v35, 0x1

    .line 980
    :goto_13
    if-eqz v35, :cond_13

    .line 981
    const-string v4, "HtcShutdownThread"

    const-string v6, "NFC turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_13
    invoke-virtual/range {v53 .. v53}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_45

    const-wide/16 v6, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_45

    .line 987
    if-eqz v41, :cond_47

    if-eqz v39, :cond_47

    if-eqz v17, :cond_47

    if-eqz v35, :cond_47

    .line 989
    const-string v4, "HtcShutdownThread"

    const-string v6, "NFC, Radio, Bluetooth shutdown complete."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_14
    :goto_14
    invoke-virtual/range {v53 .. v53}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_49

    const-wide/16 v6, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_49

    .line 1013
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioGsmOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", radioCdmaOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bluetoothOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nfcOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsAirplaneMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :goto_15
    :try_start_b
    const-string v4, "HtcShutdownThread"

    const-string v6, "check NFC state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    if-eqz v34, :cond_15

    invoke-interface/range {v34 .. v34}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4b

    :cond_15
    const/16 v35, 0x1

    .line 1035
    :goto_16
    if-nez v35, :cond_16

    .line 1036
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off NFC..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_11

    .line 1044
    :cond_16
    :goto_17
    const/16 v31, 0x0

    :goto_18
    if-nez v35, :cond_4f

    const/16 v4, 0x18

    move/from16 v0, v31

    if-ge v0, v4, :cond_4f

    .line 1046
    :try_start_c
    invoke-interface/range {v34 .. v34}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_12

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4d

    const/16 v35, 0x1

    .line 1052
    :goto_19
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 1044
    add-int/lit8 v31, v31, 0x1

    goto :goto_18

    .line 578
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "br":Landroid/content/BroadcastReceiver;
    .end local v13    # "IsAirplaneMode":I
    .end local v14    # "alarm":Landroid/app/IAlarmManager;
    .end local v16    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .end local v17    # "bluetoothOff":Z
    .end local v28    # "endTime":J
    .end local v30    # "fmPauseIntent":Landroid/content/Intent;
    .end local v31    # "i":I
    .end local v32    # "mount":Landroid/os/storage/IMountService;
    .end local v34    # "nfc":Landroid/nfc/INfcAdapter;
    .end local v37    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v47    # "screenBrightness":I
    .end local v48    # "screenBrightnessMode":I
    .end local v53    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v20

    .line 579
    .local v20, "e":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_17

    .line 580
    const-string v4, "HtcShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    :cond_17
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1

    .line 622
    .end local v20    # "e":Ljava/lang/SecurityException;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v8    # "br":Landroid/content/BroadcastReceiver;
    .restart local v14    # "alarm":Landroid/app/IAlarmManager;
    .restart local v18    # "delay":J
    .restart local v28    # "endTime":J
    :cond_18
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 623
    :catch_1
    move-exception v4

    goto/16 :goto_2

    .line 626
    .end local v18    # "delay":J
    :catchall_0
    move-exception v4

    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v4

    .line 648
    .restart local v18    # "delay":J
    .restart local v24    # "endRestartTime":J
    :cond_19
    :try_start_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1c

    .line 651
    :goto_1a
    const-string v4, "init.svc.zchgd_onmode"

    const-string v6, "stopped"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "stopped"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_3

    .line 687
    .end local v18    # "delay":J
    .end local v24    # "endRestartTime":J
    .restart local v13    # "IsAirplaneMode":I
    .restart local v16    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .restart local v32    # "mount":Landroid/os/storage/IMountService;
    .restart local v34    # "nfc":Landroid/nfc/INfcAdapter;
    .restart local v37    # "phone":Lcom/android/internal/telephony/ITelephony;
    .restart local v48    # "screenBrightnessMode":I
    .restart local v53    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_2
    move-exception v20

    .line 688
    .local v20, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v47, 0x0

    .restart local v47    # "screenBrightness":I
    goto/16 :goto_4

    .line 695
    .end local v20    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1a
    const-string v4, "sys.shutdown.brightness"

    const-string v6, "0"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 700
    :cond_1b
    const/16 v35, 0x0

    goto/16 :goto_6

    .line 706
    :catch_3
    move-exception v21

    .line 707
    .local v21, "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1c

    .line 708
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    :cond_1c
    const/16 v35, 0x1

    goto/16 :goto_7

    .line 714
    .end local v21    # "ex":Landroid/os/RemoteException;
    :cond_1d
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 719
    :catch_4
    move-exception v21

    .line 720
    .restart local v21    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1e

    .line 721
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    :cond_1e
    const/16 v17, 0x1

    .restart local v17    # "bluetoothOff":Z
    goto/16 :goto_9

    .line 729
    .end local v21    # "ex":Landroid/os/RemoteException;
    :cond_1f
    const/16 v41, 0x0

    goto/16 :goto_a

    .line 736
    :catch_5
    move-exception v21

    .line 737
    .restart local v21    # "ex":Landroid/os/RemoteException;
    :try_start_10
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_20

    .line 738
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during GSM radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 739
    :cond_20
    const/16 v41, 0x1

    .line 741
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioGsmOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v21    # "ex":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    const-string v6, "HtcShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "radioGsmOff = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v4

    .line 746
    :cond_21
    const/16 v39, 0x0

    goto/16 :goto_c

    .line 753
    :catch_6
    move-exception v21

    .line 754
    .restart local v21    # "ex":Landroid/os/RemoteException;
    :try_start_11
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_22

    .line 755
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during CDMA radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 756
    :cond_22
    const/16 v39, 0x1

    .line 758
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioCdmaOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .end local v21    # "ex":Landroid/os/RemoteException;
    :catchall_2
    move-exception v4

    const-string v6, "HtcShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "radioCdmaOff = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v4

    .line 760
    :cond_23
    invoke-virtual/range {v53 .. v53}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_2e

    const-wide/16 v6, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2e

    .line 762
    :try_start_12
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check GSM Radio state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    if-eqz v37, :cond_24

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v4

    if-nez v4, :cond_2a

    :cond_24
    const/16 v41, 0x1

    .line 764
    :goto_1b
    if-eqz v37, :cond_26

    .line 765
    if-nez v13, :cond_25

    .line 766
    const/16 v42, 0x1

    .line 767
    :cond_25
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off GSM radio..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v6, v7, v4}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(JZ)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 775
    :cond_26
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioGsmOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :goto_1c
    :try_start_13
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check Sub GSM Radio state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    if-eqz v37, :cond_27

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v4

    if-nez v4, :cond_2c

    :cond_27
    const/16 v44, 0x1

    .line 781
    :goto_1d
    if-eqz v37, :cond_29

    .line 782
    if-nez v13, :cond_28

    .line 783
    const/16 v45, 0x1

    .line 784
    :cond_28
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off Sub GSM radio..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v6, v7, v4}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(JZ)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 792
    :cond_29
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioSubGsmOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 763
    :cond_2a
    const/16 v41, 0x0

    goto :goto_1b

    .line 770
    :catch_7
    move-exception v21

    .line 771
    .restart local v21    # "ex":Landroid/os/RemoteException;
    :try_start_14
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2b

    .line 772
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during GSM radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 773
    :cond_2b
    const/16 v41, 0x1

    .line 775
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioGsmOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .end local v21    # "ex":Landroid/os/RemoteException;
    :catchall_3
    move-exception v4

    const-string v6, "HtcShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "radioGsmOff = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v4

    .line 780
    :cond_2c
    const/16 v44, 0x0

    goto :goto_1d

    .line 787
    :catch_8
    move-exception v21

    .line 788
    .restart local v21    # "ex":Landroid/os/RemoteException;
    :try_start_15
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2d

    .line 789
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during Sub GSM radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 790
    :cond_2d
    const/16 v44, 0x1

    .line 792
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioSubGsmOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .end local v21    # "ex":Landroid/os/RemoteException;
    :catchall_4
    move-exception v4

    const-string v6, "HtcShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "radioSubGsmOff = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v4

    .line 797
    :cond_2e
    :try_start_16
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check Radio state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    if-eqz v37, :cond_2f

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v4

    if-nez v4, :cond_32

    :cond_2f
    const/16 v43, 0x1

    .line 799
    :goto_1e
    if-eqz v37, :cond_31

    .line 800
    if-nez v13, :cond_30

    .line 801
    const/16 v46, 0x1

    .line 802
    :cond_30
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off radio..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 810
    :cond_31
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 798
    :cond_32
    const/16 v43, 0x0

    goto :goto_1e

    .line 805
    :catch_9
    move-exception v21

    .line 806
    .restart local v21    # "ex":Landroid/os/RemoteException;
    :try_start_17
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_33

    .line 807
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 808
    :cond_33
    const/16 v43, 0x1

    .line 810
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .end local v21    # "ex":Landroid/os/RemoteException;
    :catchall_5
    move-exception v4

    const-string v6, "HtcShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "radioOff = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v4

    .line 851
    .restart local v30    # "fmPauseIntent":Landroid/content/Intent;
    .restart local v31    # "i":I
    :cond_34
    const/16 v17, 0x0

    goto/16 :goto_f

    .line 852
    :catch_a
    move-exception v21

    .line 853
    .restart local v21    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_35

    .line 854
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    :cond_35
    const/16 v17, 0x1

    goto/16 :goto_f

    .line 865
    .end local v21    # "ex":Landroid/os/RemoteException;
    :cond_36
    const/16 v41, 0x0

    goto/16 :goto_10

    .line 866
    :catch_b
    move-exception v21

    .line 867
    .restart local v21    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_37

    .line 868
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during GSM radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 869
    :cond_37
    const/16 v41, 0x1

    goto/16 :goto_10

    .line 877
    .end local v21    # "ex":Landroid/os/RemoteException;
    :cond_38
    const/16 v39, 0x0

    goto/16 :goto_11

    .line 878
    :catch_c
    move-exception v21

    .line 879
    .restart local v21    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_39

    .line 880
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during CDMA radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 881
    :cond_39
    const/16 v39, 0x1

    goto/16 :goto_11

    .line 887
    .end local v21    # "ex":Landroid/os/RemoteException;
    :cond_3a
    invoke-virtual/range {v53 .. v53}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_40

    const-wide/16 v6, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_40

    .line 888
    if-nez v41, :cond_3b

    .line 890
    const-wide/16 v6, 0x1

    :try_start_18
    move-object/from16 v0, v37

    invoke-interface {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(J)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_d

    move-result v4

    if-nez v4, :cond_3c

    const/16 v41, 0x1

    .line 896
    :goto_1f
    if-eqz v41, :cond_3b

    .line 897
    const-string v4, "HtcShutdownThread"

    const-string v6, "GSM radio turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_3b
    if-nez v44, :cond_12

    .line 902
    const-wide/16 v6, 0x1

    :try_start_19
    move-object/from16 v0, v37

    invoke-interface {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(J)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_e

    move-result v4

    if-nez v4, :cond_3e

    const/16 v44, 0x1

    .line 908
    :goto_20
    if-eqz v44, :cond_12

    .line 909
    const-string v4, "HtcShutdownThread"

    const-string v6, "Sub GSM radio turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 890
    :cond_3c
    const/16 v41, 0x0

    goto :goto_1f

    .line 891
    :catch_d
    move-exception v21

    .line 892
    .restart local v21    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_3d

    .line 893
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during GSM radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    :cond_3d
    const/16 v41, 0x1

    goto :goto_1f

    .line 902
    .end local v21    # "ex":Landroid/os/RemoteException;
    :cond_3e
    const/16 v44, 0x0

    goto :goto_20

    .line 903
    :catch_e
    move-exception v21

    .line 904
    .restart local v21    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_3f

    .line 905
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during Sub GSM radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 906
    :cond_3f
    const/16 v44, 0x1

    goto :goto_20

    .line 914
    .end local v21    # "ex":Landroid/os/RemoteException;
    :cond_40
    if-nez v43, :cond_12

    .line 916
    :try_start_1a
    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_f

    move-result v4

    if-nez v4, :cond_41

    const/16 v43, 0x1

    .line 922
    :goto_21
    if-eqz v43, :cond_12

    .line 923
    const-string v4, "HtcShutdownThread"

    const-string v6, "Radio turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 916
    :cond_41
    const/16 v43, 0x0

    goto :goto_21

    .line 917
    :catch_f
    move-exception v21

    .line 918
    .restart local v21    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_42

    .line 919
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    :cond_42
    const/16 v43, 0x1

    goto :goto_21

    .line 974
    .end local v21    # "ex":Landroid/os/RemoteException;
    :cond_43
    const/16 v35, 0x0

    goto/16 :goto_13

    .line 975
    :catch_10
    move-exception v21

    .line 976
    .restart local v21    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_44

    .line 977
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    :cond_44
    const/16 v35, 0x1

    goto/16 :goto_13

    .line 992
    .end local v21    # "ex":Landroid/os/RemoteException;
    :cond_45
    invoke-virtual/range {v53 .. v53}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_46

    const-wide/16 v6, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_46

    .line 993
    if-eqz v41, :cond_47

    if-eqz v44, :cond_47

    if-eqz v17, :cond_47

    if-eqz v35, :cond_47

    .line 995
    const-string v4, "HtcShutdownThread"

    const-string v6, "NFC, Radio, Bluetooth shutdown complete."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1000
    :cond_46
    if-eqz v43, :cond_47

    if-eqz v17, :cond_47

    if-eqz v35, :cond_47

    .line 1002
    const-string v4, "HtcShutdownThread"

    const-string v6, "NFC, Radio, Bluetooth shutdown complete."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1007
    :cond_47
    const/16 v4, 0x41

    move/from16 v0, v31

    if-ge v0, v4, :cond_48

    .line 1008
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 848
    :cond_48
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_e

    .line 1017
    :cond_49
    invoke-virtual/range {v53 .. v53}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_4a

    const-wide/16 v6, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4a

    .line 1018
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioGsmOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", radioSubGsmOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bluetoothOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nfcOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsAirplaneMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1024
    :cond_4a
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bluetoothOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nfcOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsAirplaneMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1033
    :cond_4b
    const/16 v35, 0x0

    goto/16 :goto_16

    .line 1039
    :catch_11
    move-exception v21

    .line 1040
    .restart local v21    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_4c

    .line 1041
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    :cond_4c
    const/16 v35, 0x1

    goto/16 :goto_17

    .line 1046
    .end local v21    # "ex":Landroid/os/RemoteException;
    :cond_4d
    const/16 v35, 0x0

    goto/16 :goto_19

    .line 1047
    :catch_12
    move-exception v21

    .line 1048
    .restart local v21    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_4e

    .line 1049
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    :cond_4e
    const/16 v35, 0x1

    goto/16 :goto_19

    .line 1054
    .end local v21    # "ex":Landroid/os/RemoteException;
    :cond_4f
    if-nez v35, :cond_50

    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot disable NFC, nfcOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_50
    new-instance v36, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$7;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$7;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;)V

    .line 1065
    .local v36, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v4, "HtcShutdownThread"

    const-string v6, "Shutting down MountService"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    .line 1069
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x4e20

    add-long v26, v6, v10

    .line 1070
    .local v26, "endShutdownTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1072
    if-eqz v32, :cond_5e

    .line 1073
    :try_start_1b
    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_13
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 1082
    :cond_51
    :goto_22
    :try_start_1c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_52

    .line 1083
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v18, v26, v10

    .line 1084
    .restart local v18    # "delay":J
    const-wide/16 v10, 0x0

    cmp-long v4, v18, v10

    if-gtz v4, :cond_5f

    .line 1085
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_52

    .line 1086
    const-string v4, "HtcShutdownThread"

    const-string v7, "Shutdown wait timed out"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    .end local v18    # "delay":J
    :cond_52
    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 1097
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v15

    .line 1100
    .local v15, "am":Landroid/app/IActivityManager;
    const-string v4, "HtcShutdownThread"

    const-string v6, "Shutting down activity manager..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    if-eqz v15, :cond_53

    .line 1104
    const/16 v4, 0x2710

    :try_start_1d
    invoke-interface {v15, v4}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_19

    .line 1109
    :cond_53
    :goto_23
    const-string v4, "HtcShutdownThread"

    const-string v6, "Waiting for shutdown animation complete..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x2710

    add-long v22, v6, v10

    .line 1111
    .local v22, "endAnimTime":J
    :goto_24
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    const/4 v6, 0x1

    if-eq v4, v6, :cond_54

    .line 1112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v18, v22, v6

    .line 1113
    .restart local v18    # "delay":J
    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-gtz v4, :cond_60

    .line 1114
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_54

    .line 1115
    const-string v4, "HtcShutdownThread"

    const-string v6, "Shutdown animation timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    .end local v18    # "delay":J
    :cond_54
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    .line 1129
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    if-eqz v4, :cond_56

    .line 1131
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_55

    const-string v4, "HtcShutdownThread"

    const-string v6, "reboot, setShutdownState true"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_55
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->setShutdownState(Z)V

    .line 1135
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rebooting, reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :try_start_1e
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager;->lowLevelReboot_system(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_16

    .line 1144
    :cond_56
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_57

    .line 1145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1146
    :cond_57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_58

    .line 1147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1150
    :cond_58
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v38

    .line 1151
    .local v38, "pm":Landroid/os/IPowerManager;
    new-instance v49, Ljava/lang/Object;

    invoke-direct/range {v49 .. v49}, Ljava/lang/Object;-><init>()V

    .line 1152
    .local v49, "screenObject":Ljava/lang/Object;
    new-instance v51, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;

    const-string v4, "/data/system/screen_state"

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;Ljava/lang/String;Landroid/os/IPowerManager;Ljava/lang/Object;)V

    .line 1170
    .local v51, "screenStateObserver":Landroid/os/FileObserver;
    const/16 v50, 0x0

    .line 1172
    .local v50, "screenOn":Z
    :try_start_1f
    invoke-interface/range {v38 .. v38}, Landroid/os/IPowerManager;->isActualScreenOn()Z

    move-result v50

    .line 1173
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pm.isActualScreenOn() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v4, "HtcShutdownThread"

    const-string v6, "Cleaning up power manager state..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v6, v7, v4, v9}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_17

    .line 1183
    :goto_26
    if-eqz v50, :cond_5a

    .line 1184
    monitor-enter v49

    .line 1185
    :try_start_20
    invoke-virtual/range {v51 .. v51}, Landroid/os/FileObserver;->startWatching()V

    .line 1186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x7d0

    add-long v56, v6, v10

    .line 1187
    .local v56, "waitEndTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v18, v56, v6

    .line 1188
    .restart local v18    # "delay":J
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait screen off, delay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 1189
    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-lez v4, :cond_59

    .line 1191
    :try_start_21
    move-object/from16 v0, v49

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_1a
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 1195
    :cond_59
    :goto_27
    :try_start_22
    monitor-exit v49
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 1197
    invoke-virtual/range {v51 .. v51}, Landroid/os/FileObserver;->stopWatching()V

    .line 1212
    .end local v18    # "delay":J
    .end local v56    # "waitEndTime":J
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissProgressDialog()V

    .line 1214
    const-string v4, "sys.shutdown.resume.count"

    new-instance v6, Ljava/lang/Integer;

    sget v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mResumeCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mResumeCount:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_5b

    const-string v4, "HtcShutdownThread"

    const-string v6, "power off, setShutdownState true"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_5b
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->setShutdownState(Z)V

    .line 1221
    invoke-static {}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->getVibrateDuration()I

    move-result v33

    .line 1222
    .local v33, "nVibrate":I
    if-lez v33, :cond_5c

    .line 1224
    new-instance v54, Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v54

    invoke-direct {v0, v4}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 1226
    .local v54, "vibrator":Landroid/os/Vibrator;
    :try_start_23
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shutdown vibrate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    move/from16 v0, v33

    int-to-long v6, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_18

    .line 1234
    :goto_28
    move/from16 v0, v33

    int-to-long v6, v0

    :try_start_24
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_24} :catch_1b

    .line 1240
    .end local v54    # "vibrator":Landroid/os/Vibrator;
    :cond_5c
    :goto_29
    const-string v52, "Performing low-level shutdown..."

    .line 1241
    .local v52, "strShutdownLog":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "(PowerOff)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 1242
    const-string v4, "HtcShutdownThread"

    move-object/from16 v0, v52

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissShutdownScreen()V

    .line 1246
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->lowLevelShutdown_system()V

    .line 1248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_5d

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1295
    :cond_5d
    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 1296
    const/4 v4, 0x0

    :try_start_25
    sput-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    .line 1297
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    .line 1298
    const/4 v4, 0x0

    sput-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    .line 1299
    monitor-exit v6

    goto/16 :goto_0

    :catchall_6
    move-exception v4

    monitor-exit v6
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    throw v4

    .line 1075
    .end local v15    # "am":Landroid/app/IActivityManager;
    .end local v22    # "endAnimTime":J
    .end local v33    # "nVibrate":I
    .end local v38    # "pm":Landroid/os/IPowerManager;
    .end local v49    # "screenObject":Ljava/lang/Object;
    .end local v50    # "screenOn":Z
    .end local v51    # "screenStateObserver":Landroid/os/FileObserver;
    .end local v52    # "strShutdownLog":Ljava/lang/String;
    :cond_5e
    :try_start_26
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_51

    .line 1076
    const-string v4, "HtcShutdownThread"

    const-string v7, "MountService unavailable for shutdown"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_13
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    goto/16 :goto_22

    .line 1078
    :catch_13
    move-exception v20

    .line 1079
    .local v20, "e":Ljava/lang/Exception;
    :try_start_27
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_51

    .line 1080
    const-string v4, "HtcShutdownThread"

    const-string v7, "Exception during MountService shutdown"

    move-object/from16 v0, v20

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 1094
    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_7
    move-exception v4

    monitor-exit v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    throw v4

    .line 1090
    .restart local v18    # "delay":J
    :cond_5f
    :try_start_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_14
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    goto/16 :goto_22

    .line 1091
    :catch_14
    move-exception v4

    goto/16 :goto_22

    .line 1119
    .restart local v15    # "am":Landroid/app/IActivityManager;
    .restart local v22    # "endAnimTime":J
    :cond_60
    :try_start_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_15

    goto/16 :goto_24

    .line 1121
    :catch_15
    move-exception v4

    goto/16 :goto_24

    .line 1138
    .end local v18    # "delay":J
    :catch_16
    move-exception v20

    .line 1139
    .restart local v20    # "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_56

    .line 1140
    const-string v4, "HtcShutdownThread"

    const-string v6, "Reboot failed, will attempt shutdown instead"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 1179
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v38    # "pm":Landroid/os/IPowerManager;
    .restart local v49    # "screenObject":Ljava/lang/Object;
    .restart local v50    # "screenOn":Z
    .restart local v51    # "screenStateObserver":Landroid/os/FileObserver;
    :catch_17
    move-exception v21

    .line 1180
    .restart local v21    # "ex":Landroid/os/RemoteException;
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during goToSleepForShutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 1195
    .end local v21    # "ex":Landroid/os/RemoteException;
    :catchall_8
    move-exception v4

    :try_start_2a
    monitor-exit v49
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_8

    throw v4

    .line 1228
    .restart local v33    # "nVibrate":I
    .restart local v54    # "vibrator":Landroid/os/Vibrator;
    :catch_18
    move-exception v20

    .line 1230
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v4, "HtcShutdownThread"

    const-string v6, "Failed to vibrate during shutdown."

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 1105
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v22    # "endAnimTime":J
    .end local v33    # "nVibrate":I
    .end local v38    # "pm":Landroid/os/IPowerManager;
    .end local v49    # "screenObject":Ljava/lang/Object;
    .end local v50    # "screenOn":Z
    .end local v51    # "screenStateObserver":Landroid/os/FileObserver;
    .end local v54    # "vibrator":Landroid/os/Vibrator;
    :catch_19
    move-exception v4

    goto/16 :goto_23

    .line 1192
    .restart local v18    # "delay":J
    .restart local v22    # "endAnimTime":J
    .restart local v38    # "pm":Landroid/os/IPowerManager;
    .restart local v49    # "screenObject":Ljava/lang/Object;
    .restart local v50    # "screenOn":Z
    .restart local v51    # "screenStateObserver":Landroid/os/FileObserver;
    .restart local v56    # "waitEndTime":J
    :catch_1a
    move-exception v4

    goto/16 :goto_27

    .line 1235
    .end local v18    # "delay":J
    .end local v56    # "waitEndTime":J
    .restart local v33    # "nVibrate":I
    .restart local v54    # "vibrator":Landroid/os/Vibrator;
    :catch_1b
    move-exception v4

    goto/16 :goto_29

    .line 649
    .end local v13    # "IsAirplaneMode":I
    .end local v15    # "am":Landroid/app/IActivityManager;
    .end local v16    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .end local v17    # "bluetoothOff":Z
    .end local v22    # "endAnimTime":J
    .end local v26    # "endShutdownTime":J
    .end local v30    # "fmPauseIntent":Landroid/content/Intent;
    .end local v31    # "i":I
    .end local v32    # "mount":Landroid/os/storage/IMountService;
    .end local v33    # "nVibrate":I
    .end local v34    # "nfc":Landroid/nfc/INfcAdapter;
    .end local v36    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v37    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v38    # "pm":Landroid/os/IPowerManager;
    .end local v47    # "screenBrightness":I
    .end local v48    # "screenBrightnessMode":I
    .end local v49    # "screenObject":Ljava/lang/Object;
    .end local v50    # "screenOn":Z
    .end local v51    # "screenStateObserver":Landroid/os/FileObserver;
    .end local v53    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v54    # "vibrator":Landroid/os/Vibrator;
    .restart local v18    # "delay":J
    .restart local v24    # "endRestartTime":J
    :catch_1c
    move-exception v4

    goto/16 :goto_1a
.end method
