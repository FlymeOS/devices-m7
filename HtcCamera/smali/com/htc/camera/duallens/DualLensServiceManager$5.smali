.class Lcom/htc/camera/duallens/DualLensServiceManager$5;
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
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$5;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
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
    .line 283
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$5;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    # invokes: Lcom/htc/camera/duallens/DualLensServiceManager;->suspendDualLensServiceInternal()V
    invoke-static {v0}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$900(Lcom/htc/camera/duallens/DualLensServiceManager;)V

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$5;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/duallens/DualLensServiceManager;->resumeDualLensServiceInternal(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$1000(Lcom/htc/camera/duallens/DualLensServiceManager;Z)V

    goto :goto_0
.end method
