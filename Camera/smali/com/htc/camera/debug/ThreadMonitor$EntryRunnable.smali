.class final Lcom/htc/camera/debug/ThreadMonitor$EntryRunnable;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final m_Monitor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/camera/debug/ThreadMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/debug/ThreadMonitor;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor$EntryRunnable;->m_Monitor:Ljava/lang/ref/WeakReference;

    .line 77
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/camera/debug/ThreadMonitor$EntryRunnable;->m_Monitor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/ThreadMonitor;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    # invokes: Lcom/htc/camera/debug/ThreadMonitor;->monitorThreadEntry()V
    invoke-static {v0}, Lcom/htc/camera/debug/ThreadMonitor;->access$100(Lcom/htc/camera/debug/ThreadMonitor;)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "ThreadMonitor"

    const-string v1, "Cannot access ThreadMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
