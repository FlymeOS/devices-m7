.class Lcom/htc/camera/component/UIRotationManager$14;
.super Lcom/htc/camera/trigger/Trigger;
.source "UIRotationManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager$14;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$14;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/UIRotationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$14;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/component/UIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager$14;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v1, v1, Lcom/htc/camera/component/UIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    :cond_0
    return-void
.end method
