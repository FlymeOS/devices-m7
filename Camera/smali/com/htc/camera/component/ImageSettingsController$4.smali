.class Lcom/htc/camera/component/ImageSettingsController$4;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ImageSettingsController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsController;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsController$4;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$4;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    invoke-virtual {v0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/ImageSettingsController$4$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ImageSettingsController$4$1;-><init>(Lcom/htc/camera/component/ImageSettingsController$4;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 385
    return-void
.end method
