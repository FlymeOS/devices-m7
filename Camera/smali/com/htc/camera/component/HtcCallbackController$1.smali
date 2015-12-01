.class Lcom/htc/camera/component/HtcCallbackController$1;
.super Ljava/lang/Object;
.source "HtcCallbackController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/HtcCallbackController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/HtcCallbackController;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/camera/component/HtcCallbackController$1;->this$0:Lcom/htc/camera/component/HtcCallbackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/HtcCallbackController$1;->this$0:Lcom/htc/camera/component/HtcCallbackController;

    # getter for: Lcom/htc/camera/component/HtcCallbackController;->isLowlight:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/component/HtcCallbackController;->access$000(Lcom/htc/camera/component/HtcCallbackController;)Lcom/htc/camera/property/Property;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method
