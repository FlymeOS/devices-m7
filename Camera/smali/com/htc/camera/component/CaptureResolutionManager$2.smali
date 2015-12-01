.class Lcom/htc/camera/component/CaptureResolutionManager$2;
.super Ljava/lang/Object;
.source "CaptureResolutionManager.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/CaptureResolutionManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$2;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 1
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
    .line 157
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$2;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions()V

    .line 158
    return-void
.end method
