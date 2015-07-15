.class public Lcom/android/server/am/HtcAmsCallbackListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAmsCallbackListener.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/server/am/HtcAmsUtil;->sHasVzwLogger:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackListener;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Lcom/android/server/am/HtcAmsUtil;->notifyVzwLogger(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    .line 22
    :cond_0
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    iput-object p2, p0, Lcom/android/server/am/HtcAmsCallbackListener;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/server/am/HtcAmsUtil;->sHasVzwLogger:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackListener;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Lcom/android/server/am/HtcAmsUtil;->notifyVzwLogger(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    .line 29
    :cond_0
    return-void
.end method
