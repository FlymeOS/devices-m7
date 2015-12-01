.class Lcom/htc/camera/component/ImageSettingsController$6;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ImageSettingsController;

.field final synthetic val$handle:Lcom/htc/camera/SessionHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsController;Lcom/htc/camera/SessionHandle;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsController$6;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    iput-object p2, p0, Lcom/htc/camera/component/ImageSettingsController$6;->val$handle:Lcom/htc/camera/SessionHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$6;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController$6;->val$handle:Lcom/htc/camera/SessionHandle;

    # invokes: Lcom/htc/camera/component/ImageSettingsController;->lockAutoExposure(Lcom/htc/camera/Handle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/ImageSettingsController;->access$800(Lcom/htc/camera/component/ImageSettingsController;Lcom/htc/camera/Handle;)V

    .line 506
    return-void
.end method
