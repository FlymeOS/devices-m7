.class public Lcom/htc/server/report/up/HtcUPDataAMSListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcUPDataAMSListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcUPDataAMSListener"


# instance fields
.field private activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

.field private mContext:Landroid/content/Context;

.field private mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 3
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    iget v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/htc/server/report/up/ActivityLaunchRecord;->noteAppDied(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "[onAppDiedLocked] Exception occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    invoke-virtual {v1, p1}, Lcom/htc/server/report/up/ActivityLaunchRecord;->onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "[onHandleActivityPaused] Exception occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    if-nez v1, :cond_0

    .line 30
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "Lazy initialization for HtcSystemUPManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->getInstance()Lcom/htc/server/report/up/HtcSystemUPWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    .line 32
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    iget-object v2, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->init(Landroid/content/Context;)V

    .line 33
    new-instance v1, Lcom/htc/server/report/up/ActivityLaunchRecord;

    invoke-direct {v1}, Lcom/htc/server/report/up/ActivityLaunchRecord;-><init>()V

    iput-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->activityLaunchRecord:Lcom/htc/server/report/up/ActivityLaunchRecord;

    invoke-virtual {v1, p1}, Lcom/htc/server/report/up/ActivityLaunchRecord;->onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_1
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "[onHandleActivityResumed] Exception occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    iput-object p2, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public onShutdown()V
    .locals 3

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/htc/server/report/up/HtcUPDataAMSListener;->mSystemUPWrapper:Lcom/htc/server/report/up/HtcSystemUPWrapper;

    invoke-virtual {v1}, Lcom/htc/server/report/up/HtcSystemUPWrapper;->onShutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcUPDataAMSListener"

    const-string v2, "[onShutdown] Exception occurs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
