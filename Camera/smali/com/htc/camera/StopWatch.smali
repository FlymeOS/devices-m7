.class public final Lcom/htc/camera/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# instance fields
.field private m_ElapsedTimeNano:J

.field private m_IsStarted:Z

.field private m_LastStartTimeNano:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedMilliSeconds()J
    .locals 4

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/htc/camera/StopWatch;->getElapsedNanoSeconds()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getElapsedNanoSeconds()J
    .locals 6

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/htc/camera/StopWatch;->m_ElapsedTimeNano:J

    .line 26
    iget-boolean v2, p0, Lcom/htc/camera/StopWatch;->m_IsStarted:Z

    if-eqz v2, :cond_0

    .line 27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/camera/StopWatch;->m_LastStartTimeNano:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 28
    :cond_0
    return-wide v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/htc/camera/StopWatch;->m_IsStarted:Z

    return v0
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/StopWatch;->m_IsStarted:Z

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/camera/StopWatch;->m_ElapsedTimeNano:J

    .line 46
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/StopWatch;->m_LastStartTimeNano:J

    .line 47
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/camera/StopWatch;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/StopWatch;->m_IsStarted:Z

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/StopWatch;->m_LastStartTimeNano:J

    .line 59
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/camera/StopWatch;->m_IsStarted:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/StopWatch;->m_IsStarted:Z

    .line 69
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 70
    iget-wide v2, p0, Lcom/htc/camera/StopWatch;->m_LastStartTimeNano:J

    sub-long/2addr v0, v2

    .line 71
    iget-wide v2, p0, Lcom/htc/camera/StopWatch;->m_ElapsedTimeNano:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/camera/StopWatch;->m_ElapsedTimeNano:J

    .line 73
    :cond_0
    return-void
.end method
