.class Lcom/htc/camera/HTCCamera$7;
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
    .line 468
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$7;->this$0:Lcom/htc/camera/HTCCamera;

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
    .line 472
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$7;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$500(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/HTCCamera$MainHandler;

    move-result-object v0

    const/16 v1, 0x2968

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->d(Landroid/os/Handler;I)V

    .line 473
    return-void
.end method
