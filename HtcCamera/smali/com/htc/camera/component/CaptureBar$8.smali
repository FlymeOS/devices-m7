.class Lcom/htc/camera/component/CaptureBar$8;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/input/MotionEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 1936
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$8;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1936
    check-cast p3, Lcom/htc/camera/input/MotionEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/CaptureBar$8;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/MotionEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/MotionEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/MotionEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/input/MotionEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$8;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v1, p3, Lcom/htc/camera/input/MotionEventArgs;->motionEvent:Landroid/view/MotionEvent;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onPopMenuOutsideTouched(Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/CaptureBar;->access$2000(Lcom/htc/camera/component/CaptureBar;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    invoke-virtual {p3}, Lcom/htc/camera/input/MotionEventArgs;->setHandled()V

    .line 1942
    :cond_0
    return-void
.end method
