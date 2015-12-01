.class Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget$1;
.super Landroid/os/Handler;
.source "ThreadMonitor.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;


# direct methods
.method constructor <init>(Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget$1;->this$0:Lcom/htc/camera/debug/ThreadMonitor$MonitorTarget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/debug/ThreadMonitor;

    # invokes: Lcom/htc/camera/debug/ThreadMonitor;->ack()V
    invoke-static {v0}, Lcom/htc/camera/debug/ThreadMonitor;->access$000(Lcom/htc/camera/debug/ThreadMonitor;)V

    .line 45
    :cond_0
    return-void
.end method
