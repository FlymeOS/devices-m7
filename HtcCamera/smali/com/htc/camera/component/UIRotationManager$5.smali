.class Lcom/htc/camera/component/UIRotationManager$5;
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
    .line 249
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager$5;->this$0:Lcom/htc/camera/component/UIRotationManager;

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
    .line 253
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$5;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/component/UIRotationManager;->isRotationLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$5;->this$0:Lcom/htc/camera/component/UIRotationManager;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    const/4 v2, 0x0

    # invokes: Lcom/htc/camera/component/UIRotationManager;->onRotationChanged(Lcom/htc/camera/rotate/UIRotation;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/UIRotationManager;->access$500(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/rotate/UIRotation;Z)V

    .line 256
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$5;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/component/UIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager$5;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v1, v1, Lcom/htc/camera/component/UIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    :cond_0
    return-void
.end method
