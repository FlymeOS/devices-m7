.class Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6$1;
.super Ljava/lang/Object;
.source "PhotoModeSnapStatisticController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6$1;->this$1:Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6$1;->this$1:Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;

    iget-object v0, v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6$1;->this$1:Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;

    iget-object v1, v1, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    const/16 v2, 0x2711

    # invokes: Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->access$000(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;Lcom/htc/camera/component/Component;I)Z

    .line 201
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 196
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V

    return-void
.end method
