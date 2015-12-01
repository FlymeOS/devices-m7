.class Lcom/htc/camera/power/BatteryWatcher$1;
.super Lcom/htc/camera/WorkerThread;
.source "BatteryWatcher.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/power/BatteryWatcher;


# direct methods
.method constructor <init>(Lcom/htc/camera/power/BatteryWatcher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/camera/power/BatteryWatcher$1;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    invoke-direct {p0, p2}, Lcom/htc/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 53
    invoke-super {p0, p1}, Lcom/htc/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    .line 56
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher$1;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    # invokes: Lcom/htc/camera/power/BatteryWatcher;->checkBatteryCapacity()V
    invoke-static {v0}, Lcom/htc/camera/power/BatteryWatcher;->access$000(Lcom/htc/camera/power/BatteryWatcher;)V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher$1;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    # invokes: Lcom/htc/camera/power/BatteryWatcher;->checkBatteryTemperature()V
    invoke-static {v0}, Lcom/htc/camera/power/BatteryWatcher;->access$100(Lcom/htc/camera/power/BatteryWatcher;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEnter()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher$1;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    # invokes: Lcom/htc/camera/power/BatteryWatcher;->checkBatteryCapacity()V
    invoke-static {v0}, Lcom/htc/camera/power/BatteryWatcher;->access$000(Lcom/htc/camera/power/BatteryWatcher;)V

    .line 62
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher$1;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    # invokes: Lcom/htc/camera/power/BatteryWatcher;->checkBatteryTemperature()V
    invoke-static {v0}, Lcom/htc/camera/power/BatteryWatcher;->access$100(Lcom/htc/camera/power/BatteryWatcher;)V

    .line 63
    return-void
.end method
