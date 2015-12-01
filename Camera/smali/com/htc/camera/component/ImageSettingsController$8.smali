.class Lcom/htc/camera/component/ImageSettingsController$8;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ImageSettingsController;

.field final synthetic val$handle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsController;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsController$8;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    iput-object p2, p0, Lcom/htc/camera/component/ImageSettingsController$8;->val$handle:Lcom/htc/camera/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$8;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController$8;->val$handle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ImageSettingsController;->unlockAutoExposure(Lcom/htc/camera/Handle;)V

    .line 1001
    return-void
.end method
