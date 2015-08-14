.class public Lcom/android/nfc/NfcApplication;
.super Landroid/app/Application;
.source "NfcApplication.java"


# static fields
.field static final DBG:Z

.field static final NFC_PROCESS:Ljava/lang/String; = "com.android.nfc"

.field static final TAG:Ljava/lang/String; = "NfcApplication"


# instance fields
.field mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcApplication;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 45
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 48
    invoke-static {}, Landroid/nfc/NfcAdapter;->checkNfcSupport()Z

    move-result v2

    .line 49
    .local v2, "bIsNfcSupported":Z
    const-string v7, "NfcApplication"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device supports NFC feature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/android/nfc/NfcApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 52
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_2

    .line 53
    sget-boolean v7, Lcom/android/nfc/NfcApplication;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "NfcApplication"

    const-string v8, "onCreate() skipped."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcApplication;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8, v10}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/android/nfc/NfcApplication;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8, v10}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 62
    const/4 v4, 0x0

    .line 68
    .local v4, "isMainProcess":Z
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/nfc/NfcApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 69
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 70
    .local v6, "processes":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 71
    .local v3, "i":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 72
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v1, v7

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 73
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 74
    const-string v7, "com.android.nfc"

    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 78
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_1

    if-eqz v4, :cond_1

    .line 79
    new-instance v7, Lcom/android/nfc/NfcService;

    invoke-direct {v7, p0}, Lcom/android/nfc/NfcService;-><init>(Landroid/app/Application;)V

    iput-object v7, p0, Lcom/android/nfc/NfcApplication;->mNfcService:Lcom/android/nfc/NfcService;

    .line 80
    invoke-static {}, Landroid/view/HardwareRenderer;->enableForegroundTrimming()V

    goto :goto_0
.end method
