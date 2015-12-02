.class Lcom/htc/camera/HTCCamera$41;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/ExternalCommandEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 6808
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$41;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/ExternalCommandEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/ExternalCommandEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/ExternalCommandEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6812
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$41;->this$0:Lcom/htc/camera/HTCCamera;

    # invokes: Lcom/htc/camera/HTCCamera;->onExternalCommandReceived(Lcom/htc/camera/ExternalCommandEventArgs;)V
    invoke-static {v0, p3}, Lcom/htc/camera/HTCCamera;->access$5700(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/ExternalCommandEventArgs;)V

    .line 6813
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 6808
    check-cast p3, Lcom/htc/camera/ExternalCommandEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/HTCCamera$41;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/ExternalCommandEventArgs;)V

    return-void
.end method
