.class Lcom/htc/camera/component/ImageSettingsController$4$1$1;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/htc/camera/component/ImageSettingsController$4$1;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsController$4$1;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsController$4$1$1;->this$2:Lcom/htc/camera/component/ImageSettingsController$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$4$1$1;->this$2:Lcom/htc/camera/component/ImageSettingsController$4$1;

    iget-object v0, v0, Lcom/htc/camera/component/ImageSettingsController$4$1;->this$1:Lcom/htc/camera/component/ImageSettingsController$4;

    iget-object v0, v0, Lcom/htc/camera/component/ImageSettingsController$4;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    # invokes: Lcom/htc/camera/component/ImageSettingsController;->unlockAutoExposure(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/ImageSettingsController;->access$100(Lcom/htc/camera/component/ImageSettingsController;Z)V

    .line 379
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$4$1$1;->this$2:Lcom/htc/camera/component/ImageSettingsController$4$1;

    iget-object v0, v0, Lcom/htc/camera/component/ImageSettingsController$4$1;->this$1:Lcom/htc/camera/component/ImageSettingsController$4;

    iget-object v0, v0, Lcom/htc/camera/component/ImageSettingsController$4;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    # invokes: Lcom/htc/camera/component/ImageSettingsController;->unlockAutoWhiteBalance(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/ImageSettingsController;->access$200(Lcom/htc/camera/component/ImageSettingsController;Z)V

    .line 380
    return-void
.end method
