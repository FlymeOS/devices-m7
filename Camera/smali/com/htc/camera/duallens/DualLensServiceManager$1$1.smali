.class Lcom/htc/camera/duallens/DualLensServiceManager$1$1;
.super Ljava/lang/Object;
.source "DualLensServiceManager.java"

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
.field final synthetic this$1:Lcom/htc/camera/duallens/DualLensServiceManager$1;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensServiceManager$1;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$1$1;->this$1:Lcom/htc/camera/duallens/DualLensServiceManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 5
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
    const/16 v4, 0x2712

    const/16 v3, 0x2711

    const/4 v2, 0x1

    .line 224
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$1$1;->this$1:Lcom/htc/camera/duallens/DualLensServiceManager$1;

    iget-object v0, v0, Lcom/htc/camera/duallens/DualLensServiceManager$1;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    # invokes: Lcom/htc/camera/duallens/DualLensServiceManager;->removeMessages(I)V
    invoke-static {v0, v4}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$400(Lcom/htc/camera/duallens/DualLensServiceManager;I)V

    .line 227
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$1$1;->this$1:Lcom/htc/camera/duallens/DualLensServiceManager$1;

    iget-object v0, v0, Lcom/htc/camera/duallens/DualLensServiceManager$1;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$1$1;->this$1:Lcom/htc/camera/duallens/DualLensServiceManager$1;

    iget-object v1, v1, Lcom/htc/camera/duallens/DualLensServiceManager$1;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    # invokes: Lcom/htc/camera/duallens/DualLensServiceManager;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z
    invoke-static {v0, v1, v3, v2}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$500(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/component/Component;IZ)Z

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$1$1;->this$1:Lcom/htc/camera/duallens/DualLensServiceManager$1;

    iget-object v0, v0, Lcom/htc/camera/duallens/DualLensServiceManager$1;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    # invokes: Lcom/htc/camera/duallens/DualLensServiceManager;->removeMessages(I)V
    invoke-static {v0, v3}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$600(Lcom/htc/camera/duallens/DualLensServiceManager;I)V

    .line 232
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$1$1;->this$1:Lcom/htc/camera/duallens/DualLensServiceManager$1;

    iget-object v0, v0, Lcom/htc/camera/duallens/DualLensServiceManager$1;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$1$1;->this$1:Lcom/htc/camera/duallens/DualLensServiceManager$1;

    iget-object v1, v1, Lcom/htc/camera/duallens/DualLensServiceManager$1;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    # invokes: Lcom/htc/camera/duallens/DualLensServiceManager;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z
    invoke-static {v0, v1, v4, v2}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$700(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/component/Component;IZ)Z

    goto :goto_0
.end method
