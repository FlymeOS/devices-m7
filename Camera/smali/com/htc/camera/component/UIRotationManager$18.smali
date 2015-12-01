.class Lcom/htc/camera/component/UIRotationManager$18;
.super Lcom/htc/camera/trigger/Trigger;
.source "UIRotationManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager$18;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$18;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/UIRotationManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$18;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/component/UIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->setCaptureRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 419
    return-void
.end method
