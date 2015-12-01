.class Lcom/htc/camera/HTCCamera$36;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 6544
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$36;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2

    .prologue
    .line 6547
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$36;->this$0:Lcom/htc/camera/HTCCamera;

    new-instance v1, Lcom/htc/camera/HTCCamera$36$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/camera/HTCCamera$36$1;-><init>(Lcom/htc/camera/HTCCamera$36;Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 6554
    return-void
.end method
