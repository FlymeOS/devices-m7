.class Lcom/htc/camera/component/UIRotationManager$6;
.super Ljava/lang/Object;
.source "UIRotationManager.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/UIRotationManager;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager$6;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 3
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
    .line 266
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$6;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/component/UIRotationManager;->isRotationLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$6;->this$0:Lcom/htc/camera/component/UIRotationManager;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    # setter for: Lcom/htc/camera/component/UIRotationManager;->m_ActualRotation:Lcom/htc/camera/rotate/UIRotation;
    invoke-static {v0, v1}, Lcom/htc/camera/component/UIRotationManager;->access$602(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/rotate/UIRotation;

    .line 270
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$6;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/component/UIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager$6;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v1, v1, Lcom/htc/camera/component/UIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$6;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/component/UIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager$6;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v1, v1, Lcom/htc/camera/component/UIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$6;->this$0:Lcom/htc/camera/component/UIRotationManager;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/UIRotationManager;->m_LastDeviceOrientation:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/UIRotationManager;->access$702(Lcom/htc/camera/component/UIRotationManager;I)I

    .line 279
    return-void
.end method
