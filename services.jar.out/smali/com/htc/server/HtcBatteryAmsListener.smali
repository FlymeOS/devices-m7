.class public Lcom/htc/server/HtcBatteryAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcBatteryAmsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;,
        Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;
    }
.end annotation


# static fields
.field private static final DEBUG_ON:Z

.field private static final MESSAGE_TIMEOUT:J = 0x1f4L

.field private static final MSG_TOP_APP_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcBatteryAmsListener"


# instance fields
.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mHandler:Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

.field private mWorkingThread:Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

.field private m_nCurrentUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/HtcBatteryAmsListener;->DEBUG_ON:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mWorkingThread:Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

    .line 25
    iput-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mHandler:Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

    .line 26
    iput-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    .line 29
    if-nez p1, :cond_0

    .line 30
    const-string v0, "HtcBatteryAmsListener"

    const-string v1, "HtcBatteryAmsListener service is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 33
    new-instance v0, Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

    const-string v1, "HtcBatteryAmsListener"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;-><init>(Lcom/htc/server/HtcBatteryAmsListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mWorkingThread:Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

    .line 34
    iget-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mWorkingThread:Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

    invoke-virtual {v0}, Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;->start()V

    .line 35
    new-instance v0, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mWorkingThread:Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;

    invoke-virtual {v1}, Lcom/htc/server/HtcBatteryAmsListener$WorkingThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;-><init>(Lcom/htc/server/HtcBatteryAmsListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mHandler:Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

    .line 36
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/htc/server/HtcBatteryAmsListener;->DEBUG_ON:Z

    return v0
.end method


# virtual methods
.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 4
    .param p1, "topApp"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->mHandler:Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

    iget-object v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mHandler:Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    return-void
.end method

.method updateBatteryUsage(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 5
    .param p1, "topApp"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    const/4 v4, -0x1

    .line 80
    const/4 v0, -0x1

    .line 82
    .local v0, "newUid":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 86
    :cond_0
    iget v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    if-ne v1, v0, :cond_2

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    sget-boolean v1, Lcom/htc/server/HtcBatteryAmsListener;->DEBUG_ON:Z

    if-eqz v1, :cond_3

    .line 89
    const-string v1, "HtcBatteryAmsListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top package changed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_3
    iget v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    if-eq v1, v4, :cond_4

    .line 93
    iget-object v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteStopDisplay(I)V

    .line 95
    :cond_4
    iput v0, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    .line 96
    iget v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    if-eq v1, v4, :cond_1

    .line 97
    iget-object v1, p0, Lcom/htc/server/HtcBatteryAmsListener;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/htc/server/HtcBatteryAmsListener;->m_nCurrentUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteStartDisplay(I)V

    goto :goto_0
.end method
