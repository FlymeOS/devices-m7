.class Lcom/htc/camera/WorkerThread$1;
.super Landroid/os/Handler;
.source "WorkerThread.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/WorkerThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/WorkerThread;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/camera/WorkerThread$1;->this$0:Lcom/htc/camera/WorkerThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/camera/WorkerThread$1;->this$0:Lcom/htc/camera/WorkerThread;

    invoke-virtual {v0, p1}, Lcom/htc/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    .line 144
    return-void
.end method
