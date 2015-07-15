.class final Lcom/android/server/ServiceWatcher$NlpSwitcher;
.super Ljava/util/Observable;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NlpSwitcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherSettingsObserver;,
        Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;
    }
.end annotation


# static fields
.field private static final CUSTOMIZED_LOCATION_PROVIDER:Ljava/lang/String; = "customized_location_provider"

.field public static DEFAULT_MODE:I = 0x0

.field public static HTC_CHS_MODE:I = 0x0

.field private static final MSG_NLP_SWITCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NlpSwitcher"

.field private static sInstance:Lcom/android/server/ServiceWatcher$NlpSwitcher;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private final mHandler:Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->DEFAULT_MODE:I

    .line 562
    const/4 v0, 0x1

    sput v0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->HTC_CHS_MODE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 566
    sget v0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->DEFAULT_MODE:I

    iput v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mCurrentMode:I

    .line 619
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mContext:Landroid/content/Context;

    .line 620
    new-instance v0, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;-><init>(Lcom/android/server/ServiceWatcher$NlpSwitcher;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mHandler:Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;

    .line 621
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->getNlpSettings()I

    move-result v0

    iput v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mCurrentMode:I

    .line 623
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "customized_location_provider"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherSettingsObserver;

    iget-object v4, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mHandler:Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherSettingsObserver;-><init>(Lcom/android/server/ServiceWatcher$NlpSwitcher;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 629
    const-string v0, "NlpSwitcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NLPSwitcher:currentMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ServiceWatcher$NlpSwitcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher$NlpSwitcher;

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->getNlpSettings()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ServiceWatcher$NlpSwitcher;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher$NlpSwitcher;
    .param p1, "x1"    # I

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->setCurrentMode(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ServiceWatcher$NlpSwitcher;)Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher$NlpSwitcher;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mHandler:Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/android/server/ServiceWatcher$NlpSwitcher;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 569
    const-class v1, Lcom/android/server/ServiceWatcher$NlpSwitcher;

    monitor-enter v1

    .line 570
    :try_start_0
    invoke-static {}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->supportNlpSwitcher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    sget-object v0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->sInstance:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/android/server/ServiceWatcher$NlpSwitcher;

    invoke-direct {v0, p0}, Lcom/android/server/ServiceWatcher$NlpSwitcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->sInstance:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    .line 574
    :cond_0
    sget-object v0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->sInstance:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    monitor-exit v1

    .line 576
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getNlpSettings()I
    .locals 4

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "customized_location_provider"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "strNlpSettings":Ljava/lang/String;
    const-string v1, "NlpSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NlpSettings:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    if-nez v0, :cond_0

    .line 610
    sget v1, Lcom/android/server/ServiceWatcher$NlpSwitcher;->HTC_CHS_MODE:I

    .line 615
    :goto_0
    return v1

    .line 612
    :cond_0
    const-string v1, ".htc."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    sget v1, Lcom/android/server/ServiceWatcher$NlpSwitcher;->HTC_CHS_MODE:I

    goto :goto_0

    .line 615
    :cond_1
    sget v1, Lcom/android/server/ServiceWatcher$NlpSwitcher;->DEFAULT_MODE:I

    goto :goto_0
.end method

.method private setCurrentMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 597
    iget v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mCurrentMode:I

    if-eq v0, p1, :cond_0

    .line 598
    iput p1, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mCurrentMode:I

    .line 599
    invoke-virtual {p0}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->setChanged()V

    .line 600
    invoke-virtual {p0}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->notifyObservers()V

    .line 602
    :cond_0
    return-void
.end method

.method public static supportNlpSwitcher()Z
    .locals 7

    .prologue
    .line 581
    const/4 v3, 0x0

    .line 583
    .local v3, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 584
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "Android_Core_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 585
    .local v1, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "location_nlp_DynamicChange"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 589
    .end local v0    # "custManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    return v3

    .line 586
    :catch_0
    move-exception v2

    .line 587
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "NlpSwitcher"

    const-string v5, "Read customization fail!"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher;->mCurrentMode:I

    return v0
.end method
