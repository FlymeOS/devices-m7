.class Lcom/htc/camera/HTCCamera$37;
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
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 6557
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$37;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
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
    .line 6561
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$37;->this$0:Lcom/htc/camera/HTCCamera;

    new-instance v1, Lcom/htc/camera/HTCCamera$37$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/htc/camera/HTCCamera$37$1;-><init>(Lcom/htc/camera/HTCCamera$37;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 6568
    return-void
.end method
