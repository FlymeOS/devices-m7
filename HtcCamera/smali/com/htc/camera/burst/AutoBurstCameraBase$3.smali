.class Lcom/htc/camera/burst/AutoBurstCameraBase$3;
.super Ljava/lang/Object;
.source "AutoBurstCameraBase.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/HtcCallbackEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;


# direct methods
.method constructor <init>(Lcom/htc/camera/burst/AutoBurstCameraBase;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase$3;->this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/HtcCallbackEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/HtcCallbackEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase$3;->this$0:Lcom/htc/camera/burst/AutoBurstCameraBase;

    invoke-virtual {v0, p3}, Lcom/htc/camera/burst/AutoBurstCameraBase;->onHtcCallbackReceived(Lcom/htc/camera/HtcCallbackEventArgs;)V

    .line 127
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 122
    check-cast p3, Lcom/htc/camera/HtcCallbackEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/burst/AutoBurstCameraBase$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V

    return-void
.end method
