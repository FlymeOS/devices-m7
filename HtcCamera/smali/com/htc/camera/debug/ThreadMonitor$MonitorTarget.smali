.class final Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"


# instance fields
.field public volatile checkInterval:I

.field public final handler:Landroid/os/Handler;

.field public volatile lastResponseNanos:J

.field public volatile pendingAcks:I

.field public final thread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field public final tid:I


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget$1;-><init>(Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;)V

    iput-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->handler:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->checkInterval:I

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->thread:Ljava/lang/ref/WeakReference;

    .line 56
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->tid:I

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;->lastResponseNanos:J

    .line 58
    return-void
.end method
