.class public Lcom/android/server/am/HtcWrapProcessRecord;
.super Ljava/lang/Object;
.source "HtcWrapProcessRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcWrapProcessRecord"


# instance fields
.field public crashing:Z

.field public info:Landroid/content/pm/ApplicationInfo;

.field private mProcessRecord:Lcom/android/server/am/ProcessRecord;

.field public pid:I

.field public processName:Ljava/lang/String;

.field public stopReason:I

.field public uid:I

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    const-string v0, "HtcWrapProcessRecord"

    const-string v1, "You can not wrap a null ProcessRecord"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    return-void

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/HtcWrapProcessRecord;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    .line 33
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 35
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    .line 36
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->uid:I

    .line 37
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    iput-boolean v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->crashing:Z

    .line 38
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStopReason()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->stopReason:I

    .line 39
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    iput v0, p0, Lcom/android/server/am/HtcWrapProcessRecord;->userId:I

    goto :goto_0
.end method

.method public static create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;
    .locals 1
    .param p0, "r"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/am/HtcWrapProcessRecord;

    invoke-direct {v0, p0}, Lcom/android/server/am/HtcWrapProcessRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0
.end method
