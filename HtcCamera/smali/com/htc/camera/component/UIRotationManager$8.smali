.class Lcom/htc/camera/component/UIRotationManager$8;
.super Ljava/lang/Object;
.source "UIRotationManager.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/UIRotationManager;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager$8;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x2712

    .line 308
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$8;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/component/UIRotationManager;->isRotationLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$8;->this$0:Lcom/htc/camera/component/UIRotationManager;

    # getter for: Lcom/htc/camera/component/UIRotationManager;->m_IsOrientationListenerChanged:Z
    invoke-static {v0}, Lcom/htc/camera/component/UIRotationManager;->access$200(Lcom/htc/camera/component/UIRotationManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$8;->this$0:Lcom/htc/camera/component/UIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager$8;->this$0:Lcom/htc/camera/component/UIRotationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/camera/component/UIRotationManager;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$8;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/UIRotationManager;->removeMessages(I)V

    goto :goto_0
.end method
