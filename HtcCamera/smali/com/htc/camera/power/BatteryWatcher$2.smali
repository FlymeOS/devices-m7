.class Lcom/htc/camera/power/BatteryWatcher$2;
.super Ljava/lang/Object;
.source "BatteryWatcher.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/power/BatteryWatcher;


# direct methods
.method constructor <init>(Lcom/htc/camera/power/BatteryWatcher;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/camera/power/BatteryWatcher$2;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher$2;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    # getter for: Lcom/htc/camera/power/BatteryWatcher;->m_WorkerThread:Lcom/htc/camera/WorkerThread;
    invoke-static {v0}, Lcom/htc/camera/power/BatteryWatcher;->access$200(Lcom/htc/camera/power/BatteryWatcher;)Lcom/htc/camera/WorkerThread;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/htc/camera/WorkerThread;->sendMessage(I)Z

    .line 179
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher$2;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    # getter for: Lcom/htc/camera/power/BatteryWatcher;->m_WorkerThread:Lcom/htc/camera/WorkerThread;
    invoke-static {v0}, Lcom/htc/camera/power/BatteryWatcher;->access$200(Lcom/htc/camera/power/BatteryWatcher;)Lcom/htc/camera/WorkerThread;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Lcom/htc/camera/WorkerThread;->sendMessage(I)Z

    .line 180
    return-void
.end method
