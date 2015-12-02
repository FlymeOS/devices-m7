.class public Lcom/htc/lib1/hfmclient/HfmClient;
.super Ljava/lang/Object;
.source "HfmClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIHFMServiceHMSClassLoader:Ldalvik/system/PathClassLoader;

.field private static mPathClassLoader:Ldalvik/system/PathClassLoader;


# instance fields
.field private mActionName:Ljava/lang/String;

.field private mAppInfo:Landroid/os/Bundle;

.field private mCallback:Lcom/htc/lib1/hfmclient/a;

.field private mContext:Landroid/content/Context;

.field private mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

.field private mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

.field private mIHfmServiceCallback:Lcom/htc/hfm/IHfmServiceCallback;

.field private mIHfmServiceHMSApiLevel:I

.field private mIsBound:Z

.field private mPackageName:Ljava/lang/String;

.field private mPriority:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSessionId:Ljava/lang/String;

.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    const-class v0, Lcom/htc/lib1/hfmclient/HfmClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    .line 285
    sput-object v1, Lcom/htc/lib1/hfmclient/HfmClient;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 286
    sput-object v1, Lcom/htc/lib1/hfmclient/HfmClient;->mIHFMServiceHMSClassLoader:Ldalvik/system/PathClassLoader;

    return-void
.end method

.method public constructor <init>(Lcom/htc/lib1/hfmclient/a;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    .line 405
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmClient$1;

    invoke-direct {v0, p0}, Lcom/htc/lib1/hfmclient/HfmClient$1;-><init>(Lcom/htc/lib1/hfmclient/HfmClient;)V

    iput-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 433
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmClient$2;

    invoke-direct {v0, p0}, Lcom/htc/lib1/hfmclient/HfmClient$2;-><init>(Lcom/htc/lib1/hfmclient/HfmClient;)V

    iput-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceCallback:Lcom/htc/hfm/IHfmServiceCallback;

    .line 501
    if-nez p1, :cond_0

    .line 502
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    .line 506
    if-nez p2, :cond_1

    .line 507
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_1
    iput-object p3, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mAppInfo:Landroid/os/Bundle;

    .line 510
    iput-object p2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    .line 512
    if-nez p4, :cond_2

    .line 513
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_2
    const/16 v0, 0x3ea

    if-ne p7, v0, :cond_3

    .line 516
    const-string v0, "com.htc.htcspeak"

    iput-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mPackageName:Ljava/lang/String;

    .line 521
    :goto_0
    if-nez p5, :cond_4

    .line 522
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "actionName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_3
    iput-object p4, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 524
    :cond_4
    iput-object p5, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mActionName:Ljava/lang/String;

    .line 526
    if-gez p6, :cond_5

    .line 527
    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mTimeout:I

    .line 532
    :goto_1
    const/16 v0, 0x3e9

    if-lt p7, v0, :cond_6

    const/16 v0, 0x3f2

    if-gt p7, v0, :cond_6

    .line 533
    iput p7, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mPriority:I

    .line 538
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->getIHFMServiceHMSApiLevel(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    .line 539
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HfmServiceHMS API Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void

    .line 529
    :cond_5
    iput p6, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mTimeout:I

    goto :goto_1

    .line 535
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkown priority level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _abort()V
    .locals 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/hfm/IHfmServiceHMS;->abort(Ljava/lang/String;)V

    .line 1123
    return-void
.end method

.method private _cancelReservation()V
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/hfm/IHfmServiceHMS;->cancelReservation(Ljava/lang/String;)I

    move-result v0

    .line 1062
    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/hfmclient/a;->onCancelReservationComplete(I)V

    .line 1063
    return-void
.end method

.method private _next()V
    .locals 6

    .prologue
    const/4 v2, -0x3

    const/4 v5, -0x4

    const/4 v4, 0x0

    .line 1210
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    if-nez v0, :cond_1

    .line 1211
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v1, "current action is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1100(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I

    move-result v0

    .line 1215
    iget-boolean v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIsBound:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1217
    :try_start_0
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->doLastStep()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    iput-object v4, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v1

    .line 1219
    :try_start_1
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    const/4 v1, -0x4

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/hfmclient/HfmClient;->reportError(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1222
    iput-object v4, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    throw v0

    .line 1224
    :cond_2
    iget-boolean v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIsBound:Z

    if-nez v1, :cond_4

    .line 1226
    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_3

    .line 1228
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->bindService()Z

    move-result v1

    .line 1229
    if-nez v1, :cond_0

    .line 1231
    invoke-direct {p0, v0, v2}, Lcom/htc/lib1/hfmclient/HfmClient;->reportError(II)V

    .line 1232
    iput-object v4, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    goto :goto_0

    .line 1237
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/htc/lib1/hfmclient/HfmClient;->reportError(II)V

    .line 1238
    iput-object v4, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    goto :goto_0

    .line 1241
    :cond_4
    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 1243
    :try_start_2
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->createSession()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1244
    :catch_1
    move-exception v1

    .line 1245
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1246
    invoke-direct {p0, v0, v5}, Lcom/htc/lib1/hfmclient/HfmClient;->reportError(II)V

    .line 1247
    iput-object v4, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    goto :goto_0

    .line 1250
    :cond_5
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should not happen: mIsBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIsBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private _releaseService()V
    .locals 2

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/hfm/IHfmServiceHMS;->releaseService(Ljava/lang/String;)I

    move-result v0

    .line 1088
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    .line 1089
    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/hfmclient/a;->onReleaseServiceComplete(I)V

    .line 1090
    if-nez v0, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->close()V

    .line 1093
    :cond_0
    return-void
.end method

.method private _reserveService(Z)V
    .locals 6

    .prologue
    .line 1067
    iget v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/htc/hfm/IHfmServiceHMS;->setDefaultBluetoothScoEnabled(Ljava/lang/String;Z)V

    .line 1076
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mActionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mAppInfo:Landroid/os/Bundle;

    iget v4, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mTimeout:I

    iget v5, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mPriority:I

    invoke-interface/range {v0 .. v5}, Lcom/htc/hfm/IHfmServiceHMS;->reserveService(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;II)I

    move-result v0

    .line 1078
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1084
    :goto_1
    return-void

    .line 1073
    :cond_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultBluetoothScoEnabled: API Level should be 1. Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1081
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    .line 1082
    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/hfmclient/a;->onReserveServiceComplete(I)V

    goto :goto_1
.end method

.method private _selectCommand()V
    .locals 6

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg1:[Lcom/htc/hfm/Speech;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1200(Lcom/htc/lib1/hfmclient/HfmClient$Action;)[Lcom/htc/hfm/Speech;

    move-result-object v1

    .line 1103
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg2:[Lcom/htc/hfm/Speech;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1400(Lcom/htc/lib1/hfmclient/HfmClient$Action;)[Lcom/htc/hfm/Speech;

    move-result-object v2

    .line 1104
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1105
    invoke-virtual {v4}, Lcom/htc/hfm/Speech;->getSpeechType()I

    move-result v4

    const/16 v5, 0x2be

    if-ne v4, v5, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    const/4 v1, -0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/hfmclient/a;->onSelectCommandComplete(ILjava/lang/String;)V

    .line 1114
    :goto_1
    return-void

    .line 1104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/lib1/hfmclient/HfmClient;->convert([Lcom/htc/hfm/Speech;)V

    .line 1112
    invoke-direct {p0, v2}, Lcom/htc/lib1/hfmclient/HfmClient;->convert([Lcom/htc/hfm/Speech;)V

    .line 1113
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v3, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg3:Z
    invoke-static {v4}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1300(Lcom/htc/lib1/hfmclient/HfmClient$Action;)Z

    move-result v4

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/htc/hfm/IHfmServiceHMS;->selectCommand(Ljava/lang/String;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V

    goto :goto_1
.end method

.method private _selectWakeupCommand(Ljava/lang/String;[Lcom/htc/hfm/Speech;)V
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/htc/hfm/IHfmServiceHMS;->selectWakeupCommand(Ljava/lang/String;[Lcom/htc/hfm/Speech;)V

    .line 1119
    return-void
.end method

.method private _speak()V
    .locals 4

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg1:[Lcom/htc/hfm/Speech;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1200(Lcom/htc/lib1/hfmclient/HfmClient$Action;)[Lcom/htc/hfm/Speech;

    move-result-object v0

    .line 1097
    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->convert([Lcom/htc/hfm/Speech;)V

    .line 1098
    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg3:Z
    invoke-static {v3}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1300(Lcom/htc/lib1/hfmclient/HfmClient$Action;)Z

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lcom/htc/hfm/IHfmServiceHMS;->speak(Ljava/lang/String;[Lcom/htc/hfm/Speech;Z)V

    .line 1099
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/lib1/hfmclient/HfmClient;Lcom/htc/lib1/hfmclient/HfmClient$Action;)Lcom/htc/lib1/hfmclient/HfmClient$Action;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    return-object p1
.end method

.method static synthetic access$202(Lcom/htc/lib1/hfmclient/HfmClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/lib1/hfmclient/HfmClient;Z)Z
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIsBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/hfm/IHfmServiceHMS;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/lib1/hfmclient/HfmClient;Lcom/htc/hfm/IHfmServiceHMS;)Lcom/htc/hfm/IHfmServiceHMS;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/lib1/hfmclient/HfmClient;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->next()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/lib1/hfmclient/a;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    return-object v0
.end method

.method private static actionToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1347
    packed-switch p0, :pswitch_data_0

    .line 1377
    :pswitch_0
    const-string v0, "UNKNOWN_ACTION"

    :goto_0
    return-object v0

    .line 1349
    :pswitch_1
    const-string v0, "ACTION_RESERVE_SERVICE"

    goto :goto_0

    .line 1351
    :pswitch_2
    const-string v0, "ACTION_RELEASE_SERVICE"

    goto :goto_0

    .line 1353
    :pswitch_3
    const-string v0, "ACTION_SPEAK"

    goto :goto_0

    .line 1355
    :pswitch_4
    const-string v0, "ACTION_SELECT_COMMAND"

    goto :goto_0

    .line 1357
    :pswitch_5
    const-string v0, "ACTION_ABORT"

    goto :goto_0

    .line 1359
    :pswitch_6
    const-string v0, "ACTION_CANCEL_RESERVATION"

    goto :goto_0

    .line 1367
    :pswitch_7
    const-string v0, "ACTION_RESET_TIMEOUT"

    goto :goto_0

    .line 1369
    :pswitch_8
    const-string v0, "ACTION_SET_NOTIFICAION_SOUND_ENABLED"

    goto :goto_0

    .line 1371
    :pswitch_9
    const-string v0, "ACTION_SET_DEFAULT_RETRY_ENABLED"

    goto :goto_0

    .line 1373
    :pswitch_a
    const-string v0, "ACTION_SET_CONFIDENCE_LEVEL"

    goto :goto_0

    .line 1375
    :pswitch_b
    const-string v0, "ACTION_SELECT_WAKEUP_COMMAND"

    goto :goto_0

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private bindService()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1132
    sget-object v1, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "bindService:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib1/hfmclient/HfmClient;->isSupportedLocaleEx(Landroid/content/Context;Ljava/util/Locale;)I

    move-result v1

    .line 1135
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService: nSupportedLocaleEx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    if-eqz v1, :cond_0

    .line 1138
    sget-object v1, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "System language is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :goto_0
    return v0

    .line 1142
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.hfm.HfmService.HMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1143
    const-string v2, "com.htc.hfm"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    const-string v2, "com.htc.hfm"

    invoke-direct {p0, v2}, Lcom/htc/lib1/hfmclient/HfmClient;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1147
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v3, "HtcSpeak_HFM installed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const-string v2, "com.htc.hfm"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1152
    :cond_1
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v3, "HtcSpeak_HFM does not install"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-string v2, "com.htc.HTCSpeaker"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1161
    :catch_0
    move-exception v1

    .line 1163
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v3, "bindService: Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private convert(Lcom/htc/hfm/Speech;)V
    .locals 3

    .prologue
    .line 1190
    if-nez p1, :cond_0

    .line 1198
    :goto_0
    return-void

    .line 1194
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/htc/hfm/Speech;->convert(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    sget-object v1, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convert([Lcom/htc/hfm/Speech;)V
    .locals 3

    .prologue
    .line 1184
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 1185
    invoke-direct {p0, v2}, Lcom/htc/lib1/hfmclient/HfmClient;->convert(Lcom/htc/hfm/Speech;)V

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1187
    :cond_0
    return-void
.end method

.method private createSession()V
    .locals 3

    .prologue
    .line 1170
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v1, "createSession:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceCallback:Lcom/htc/hfm/IHfmServiceCallback;

    invoke-interface {v0, v1, v2}, Lcom/htc/hfm/IHfmServiceHMS;->connect(Ljava/lang/String;Lcom/htc/hfm/IHfmServiceCallback;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    .line 1172
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->next()V

    .line 1173
    return-void
.end method

.method private destroySession()V
    .locals 3

    .prologue
    .line 1176
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySession: sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/hfm/IHfmServiceHMS;->disconnect(Ljava/lang/String;)V

    .line 1179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    .line 1181
    :cond_0
    return-void
.end method

.method private doLastStep()V
    .locals 4

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1100(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I

    move-result v0

    .line 1256
    packed-switch v0, :pswitch_data_0

    .line 1303
    :pswitch_0
    sget-object v1, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :goto_0
    return-void

    .line 1258
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg3:Z
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1300(Lcom/htc/lib1/hfmclient/HfmClient$Action;)Z

    move-result v0

    .line 1259
    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->_reserveService(Z)V

    goto :goto_0

    .line 1262
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->_releaseService()V

    goto :goto_0

    .line 1265
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->_cancelReservation()V

    goto :goto_0

    .line 1268
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->_speak()V

    goto :goto_0

    .line 1271
    :pswitch_5
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->_selectCommand()V

    goto :goto_0

    .line 1274
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->_abort()V

    goto :goto_0

    .line 1286
    :pswitch_7
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/hfm/IHfmServiceHMS;->resetTimeout(Ljava/lang/String;)V

    goto :goto_0

    .line 1289
    :pswitch_8
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg3:Z
    invoke-static {v2}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1300(Lcom/htc/lib1/hfmclient/HfmClient$Action;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/hfm/IHfmServiceHMS;->setNotificationSoundEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1292
    :pswitch_9
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg3:Z
    invoke-static {v2}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1300(Lcom/htc/lib1/hfmclient/HfmClient$Action;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/hfm/IHfmServiceHMS;->setDefaultRetryEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1295
    :pswitch_a
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg4:I
    invoke-static {v2}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1500(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/hfm/IHfmServiceHMS;->setConfidenceLevel(Ljava/lang/String;I)V

    goto :goto_0

    .line 1298
    :pswitch_b
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg1:[Lcom/htc/hfm/Speech;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1200(Lcom/htc/lib1/hfmclient/HfmClient$Action;)[Lcom/htc/hfm/Speech;

    move-result-object v0

    .line 1299
    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->convert([Lcom/htc/hfm/Speech;)V

    .line 1300
    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->_selectWakeupCommand(Ljava/lang/String;[Lcom/htc/hfm/Speech;)V

    goto :goto_0

    .line 1256
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private getIHFMServiceHMSApiLevel(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1410
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "getIHFMServiceHMSApiLevel: +++"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.htc.hfm"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1417
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1418
    const-string v2, "com.htc.hfm.HfmService.IHfmServiceHMSApiLevel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1419
    if-nez v0, :cond_1

    .line 1421
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v3, "Failed to load meta-data from Manifest"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1440
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1442
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "getIHFMServiceHMSApiLevel: load meta-data from HtcSpeak"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.htc.HTCSpeaker"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1447
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1448
    const-string v2, "com.htc.hfm.HfmService.IHfmServiceHMSApiLevel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1449
    if-nez v0, :cond_2

    .line 1451
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v3, "Failed to load meta-data from Manifest"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move v1, v0

    .line 1471
    :goto_1
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIHFMServiceHMSApiLevel: Level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    return v1

    .line 1423
    :cond_1
    if-gez v0, :cond_0

    .line 1425
    :try_start_2
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "Failed to load meta-data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 1426
    goto :goto_0

    .line 1429
    :catch_0
    move-exception v0

    .line 1431
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1438
    goto :goto_0

    .line 1434
    :catch_1
    move-exception v0

    .line 1436
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1437
    goto/16 :goto_0

    .line 1453
    :cond_2
    if-gez v0, :cond_3

    .line 1455
    :try_start_3
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "Failed to load meta-data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 1459
    :catch_2
    move-exception v0

    .line 1461
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1464
    :catch_3
    move-exception v0

    .line 1466
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    move v1, v0

    goto/16 :goto_1
.end method

.method private static getNGFServiceClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1384
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v1, "getNGFServiceClass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const-string v0, "com.htc.HTCSpeaker"

    .line 1386
    const-string v1, "com.htc.HTCSpeaker.NGFService"

    .line 1390
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1392
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v2, :cond_0

    .line 1394
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v3, "new PathClassLoader"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    new-instance v2, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 1397
    :cond_0
    const/4 v0, 0x1

    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1405
    :goto_0
    return-object v0

    .line 1401
    :catch_0
    move-exception v0

    .line 1403
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1405
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isCarMode()Z
    .locals 4

    .prologue
    .line 623
    monitor-enter p0

    const/4 v0, 0x0

    .line 624
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.AutoMotive.Service.ModeChange"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 625
    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 626
    if-eqz v1, :cond_0

    .line 628
    const-string v2, "AutoMotive_Current_Mode"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 629
    if-nez v1, :cond_0

    .line 631
    const/4 v0, 0x1

    .line 634
    :cond_0
    monitor-exit p0

    return v0

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isPackageInstalled(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 608
    monitor-enter p0

    const/4 v0, 0x1

    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :goto_0
    monitor-exit p0

    return v0

    .line 613
    :catch_0
    move-exception v0

    .line 615
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    const/4 v0, 0x0

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isSupportedLocale(Landroid/content/Context;Ljava/util/Locale;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1569
    invoke-static {p0, p1}, Lcom/htc/lib1/hfmclient/HfmClient;->isSupportedLocaleEx(Landroid/content/Context;Ljava/util/Locale;)I

    move-result v1

    .line 1570
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportedLocale: ret (Ex) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedLocaleEx(Landroid/content/Context;Ljava/util/Locale;)I
    .locals 5

    .prologue
    const/4 v1, -0x2

    .line 1489
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1491
    :cond_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v1, "isSupportedLocaleEx: argument is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/4 v0, -0x1

    .line 1518
    :goto_0
    return v0

    .line 1497
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->getNGFServiceClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 1498
    if-nez v0, :cond_2

    .line 1500
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "Can not find NGFService"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1501
    goto :goto_0

    .line 1504
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    .line 1505
    const-string v3, "isSupportedLocaleEx"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1506
    if-nez v0, :cond_3

    .line 1508
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "Can not find isSupportedLocaleEx"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1509
    goto :goto_0

    .line 1512
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 1513
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1515
    :catch_0
    move-exception v0

    .line 1517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 1518
    goto :goto_0
.end method

.method public static isSupportedSystemLocale(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1581
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->isSupportedLocale(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized isTTSEnabled()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 639
    monitor-enter p0

    .line 641
    :try_start_0
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTTSEnabled: package is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mPackageName:Ljava/lang/String;

    const-string v3, "com.andorid.phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mPackageName:Ljava/lang/String;

    const-string v3, "com.htc.sense.mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->isCarMode()Z

    move-result v2

    .line 646
    sget-object v3, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTTSEnabled: isCarMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    if-eqz v2, :cond_1

    .line 650
    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htcspeak_readoutnoti"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 651
    sget-object v3, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTTSEnabled: readout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    if-eq v2, v1, :cond_2

    .line 663
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized next()V
    .locals 3

    .prologue
    .line 1202
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->_next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    :goto_0
    monitor-exit p0

    return-void

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    :try_start_1
    sget-object v1, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private next(Lcom/htc/lib1/hfmclient/HfmClient$Action;)V
    .locals 5

    .prologue
    const/16 v4, 0x7d5

    const/16 v3, 0x7d2

    .line 1025
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I
    invoke-static {p1}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1100(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I

    move-result v2

    invoke-static {v2}, Lcom/htc/lib1/hfmclient/HfmClient;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    if-eqz v0, :cond_2

    .line 1028
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client is busy. Handle this action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I
    invoke-static {p1}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1100(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsBound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIsBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I
    invoke-static {p1}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1100(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I

    move-result v0

    if-eq v0, v4, :cond_0

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I
    invoke-static {p1}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1100(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1031
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    .line 1032
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->next()V

    .line 1057
    :goto_0
    return-void

    .line 1036
    :cond_1
    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I
    invoke-static {p1}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1100(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/hfmclient/HfmClient;->reportError(II)V

    goto :goto_0

    .line 1039
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->isHandFreeModeEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1041
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next: mIsBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIsBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-boolean v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIsBound:Z

    if-eqz v0, :cond_4

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I
    invoke-static {p1}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1100(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I

    move-result v0

    if-eq v0, v4, :cond_3

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I
    invoke-static {p1}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1100(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 1044
    :cond_3
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    .line 1045
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->next()V

    goto :goto_0

    .line 1049
    :cond_4
    # getter for: Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I
    invoke-static {p1}, Lcom/htc/lib1/hfmclient/HfmClient$Action;->access$1100(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I

    move-result v0

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/hfmclient/HfmClient;->reportError(II)V

    goto :goto_0

    .line 1054
    :cond_5
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;

    .line 1055
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->next()V

    goto :goto_0
.end method

.method private reportError(II)V
    .locals 3

    .prologue
    .line 1309
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportError: actionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/lib1/hfmclient/HfmClient;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    packed-switch p1, :pswitch_data_0

    .line 1338
    :try_start_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown action code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :goto_0
    return-void

    .line 1313
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    invoke-virtual {v0, p2}, Lcom/htc/lib1/hfmclient/a;->onReserveServiceComplete(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    sget-object v1, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1316
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    invoke-virtual {v0, p2}, Lcom/htc/lib1/hfmclient/a;->onReleaseServiceComplete(I)V

    goto :goto_0

    .line 1319
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    invoke-virtual {v0, p2}, Lcom/htc/lib1/hfmclient/a;->onCancelReservationComplete(I)V

    goto :goto_0

    .line 1322
    :pswitch_3
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    invoke-virtual {v0, p2}, Lcom/htc/lib1/hfmclient/a;->onSpeakComplete(I)V

    goto :goto_0

    .line 1325
    :pswitch_4
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/htc/lib1/hfmclient/a;->onSelectCommandComplete(ILjava/lang/String;)V

    goto :goto_0

    .line 1328
    :pswitch_5
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mCallback:Lcom/htc/lib1/hfmclient/a;

    invoke-virtual {v0, p2}, Lcom/htc/lib1/hfmclient/a;->onAbortComplete(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1311
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized abort()I
    .locals 3

    .prologue
    .line 905
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v1, "abort:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    if-ltz v0, :cond_0

    .line 908
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmClient$Action;

    const/16 v1, 0x7d5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/hfmclient/HfmClient$Action;-><init>(ILcom/htc/lib1/hfmclient/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->next(Lcom/htc/lib1/hfmclient/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    const/4 v0, 0x0

    .line 914
    :goto_0
    monitor-exit p0

    return v0

    .line 913
    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Level is unspported. Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    const/16 v0, -0x47

    goto :goto_0

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 670
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v1, "close:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    :try_start_1
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->destroySession()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    :goto_0
    :try_start_2
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: mIsBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIsBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 679
    :try_start_3
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 683
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIsBound:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 684
    monitor-exit p0

    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 675
    :try_start_5
    sget-object v1, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 680
    :catch_1
    move-exception v0

    .line 681
    :try_start_6
    sget-object v1, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized isHandFreeModeEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 548
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 550
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "isHandFreeModeEnabled: context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    :goto_0
    monitor-exit p0

    return v1

    .line 554
    :cond_0
    :try_start_1
    const-string v0, "com.htc.HTCSpeaker"

    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "isHandFreeModeEnabled: HtcSpeaker does not install"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 564
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->isSupportedSystemLocale(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 566
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v2, "isHandFreeModeEnabled: No supported language"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    const-string v2, "uimode"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 571
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    .line 572
    const-string v0, "UNKNOWN_UI_MODE_TYPE"

    .line 573
    packed-switch v2, :pswitch_data_0

    .line 588
    :goto_1
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHandFreeModeEnabled: UI mode type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {p0}, Lcom/htc/lib1/hfmclient/HfmClient;->isTTSEnabled()Z

    move-result v0

    .line 591
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHandFreeModeEnabled: TTS is enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    if-eqz v0, :cond_4

    .line 595
    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mPackageName:Ljava/lang/String;

    const-string v3, "com.andorid.phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mPackageName:Ljava/lang/String;

    const-string v3, "com.htc.sense.mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/lib1/hfmclient/HfmClient;->isSupportedLocaleEx(Landroid/content/Context;Ljava/util/Locale;)I

    move-result v0

    .line 598
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHandFreeModeEnabled: isSupportedEx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-nez v0, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_2
    move v1, v0

    .line 603
    goto/16 :goto_0

    .line 576
    :pswitch_0
    const-string v0, "UI_MODE_TYPE_CAR"

    goto :goto_1

    .line 579
    :pswitch_1
    const-string v0, "UI_MODE_TYPE_DESK"

    goto :goto_1

    .line 582
    :pswitch_2
    const-string v0, "UI_MODE_TYPE_NORMAL"

    goto :goto_1

    .line 585
    :pswitch_3
    const-string v0, "UI_MODE_TYPE_TELEVISION"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    move v0, v1

    .line 599
    goto :goto_2

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized releaseService()I
    .locals 3

    .prologue
    .line 748
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v1, "releaseService:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    if-ltz v0, :cond_0

    .line 751
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmClient$Action;

    const/16 v1, 0x7d2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/hfmclient/HfmClient$Action;-><init>(ILcom/htc/lib1/hfmclient/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->next(Lcom/htc/lib1/hfmclient/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    const/4 v0, 0x0

    .line 757
    :goto_0
    monitor-exit p0

    return v0

    .line 756
    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Level is unspported. Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    const/16 v0, -0x47

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reserveService()I
    .locals 2

    .prologue
    .line 715
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v1, "reserveService:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->reserveService(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reserveService(Z)I
    .locals 8

    .prologue
    .line 728
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reserveService: enableDefaultBluetoothSco = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    if-ltz v0, :cond_0

    .line 731
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmClient$Action;

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/hfmclient/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZILcom/htc/lib1/hfmclient/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->next(Lcom/htc/lib1/hfmclient/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    const/4 v0, 0x0

    .line 737
    :goto_0
    monitor-exit p0

    return v0

    .line 736
    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Level is unspported. Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    const/16 v0, -0x47

    goto :goto_0

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized selectCommand([Lcom/htc/hfm/Speech;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1009
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    const-string v1, "selectCommand: wakeup command"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    if-ltz v0, :cond_0

    .line 1012
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmClient$Action;

    const/16 v1, 0x7de

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/hfmclient/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZILcom/htc/lib1/hfmclient/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->next(Lcom/htc/lib1/hfmclient/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v8

    .line 1018
    :goto_0
    monitor-exit p0

    return v0

    .line 1017
    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Level is unspported. Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    const/16 v0, -0x47

    goto :goto_0

    .line 1009
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConfidenceLevel(I)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 988
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfidenceLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    if-ltz v0, :cond_0

    .line 991
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmClient$Action;

    const/16 v1, 0x7dd

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/hfmclient/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZILcom/htc/lib1/hfmclient/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->next(Lcom/htc/lib1/hfmclient/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v8

    .line 997
    :goto_0
    monitor-exit p0

    return v0

    .line 996
    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Level is unspported. Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    const/16 v0, -0x47

    goto :goto_0

    .line 988
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultRetryEnabled(Z)I
    .locals 8

    .prologue
    .line 967
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultRetryEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    if-ltz v0, :cond_0

    .line 970
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmClient$Action;

    const/16 v1, 0x7dc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/hfmclient/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZILcom/htc/lib1/hfmclient/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->next(Lcom/htc/lib1/hfmclient/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    const/4 v0, 0x0

    .line 976
    :goto_0
    monitor-exit p0

    return v0

    .line 975
    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Level is unspported. Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    const/16 v0, -0x47

    goto :goto_0

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNotificationSoundEnabled(Z)I
    .locals 8

    .prologue
    .line 946
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotificationSoundEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget v0, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    if-ltz v0, :cond_0

    .line 949
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmClient$Action;

    const/16 v1, 0x7db

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/hfmclient/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZILcom/htc/lib1/hfmclient/HfmClient$1;)V

    invoke-direct {p0, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->next(Lcom/htc/lib1/hfmclient/HfmClient$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    const/4 v0, 0x0

    .line 955
    :goto_0
    monitor-exit p0

    return v0

    .line 954
    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API Level is unspported. Level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmServiceHMSApiLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    const/16 v0, -0x47

    goto :goto_0

    .line 946
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
