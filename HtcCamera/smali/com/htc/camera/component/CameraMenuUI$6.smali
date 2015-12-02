.class Lcom/htc/camera/component/CameraMenuUI$6;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$6;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
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
    .line 744
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$6;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->closeCameraMenuUI()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3200(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 745
    return-void
.end method
