.class Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;
.super Ljava/lang/Object;
.source "PhotoModeSnapStatisticController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6$1;-><init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 203
    return-void
.end method
