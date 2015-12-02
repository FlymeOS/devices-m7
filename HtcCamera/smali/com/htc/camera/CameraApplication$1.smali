.class Lcom/htc/camera/CameraApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraApplication.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraApplication;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraApplication;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/camera/CameraApplication$1;->this$0:Lcom/htc/camera/CameraApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 104
    const-string v0, "ss"

    .line 106
    # getter for: Lcom/htc/camera/CameraApplication;->telephonyIntents_ACTION_SIM_STATE_CHANGED:Ljava/lang/String;
    invoke-static {}, Lcom/htc/camera/CameraApplication;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/htc/camera/CameraApplication$1;->this$0:Lcom/htc/camera/CameraApplication;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/htc/camera/CameraApplication;->onSimCardStateChanged(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/htc/camera/CameraApplication;->access$100(Lcom/htc/camera/CameraApplication;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method
