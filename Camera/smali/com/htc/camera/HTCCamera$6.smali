.class Lcom/htc/camera/HTCCamera$6;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/ExceptionEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$6;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ExceptionEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/ExceptionEventArgs;",
            ">;",
            "Lcom/htc/camera/ExceptionEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$6;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, p3, Lcom/htc/camera/ExceptionEventArgs;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/htc/camera/HTCCamera;->onUnhandledException(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/htc/camera/HTCCamera;->access$400(Lcom/htc/camera/HTCCamera;Ljava/lang/Throwable;)V

    .line 465
    return-void
.end method

.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 460
    check-cast p3, Lcom/htc/camera/ExceptionEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/HTCCamera$6;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ExceptionEventArgs;)V

    return-void
.end method
