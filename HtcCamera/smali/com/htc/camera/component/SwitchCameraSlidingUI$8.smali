.class Lcom/htc/camera/component/SwitchCameraSlidingUI$8;
.super Ljava/lang/Object;
.source "SwitchCameraSlidingUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$8;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
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
    .line 551
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$8;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->cancelDragging()V
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$700(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    .line 552
    return-void
.end method
