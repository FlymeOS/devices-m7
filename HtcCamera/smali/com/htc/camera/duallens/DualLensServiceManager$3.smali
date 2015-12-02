.class Lcom/htc/camera/duallens/DualLensServiceManager$3;
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
        "Lcom/htc/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$3;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

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
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    sget-object v1, Lcom/htc/camera/duallens/DualLensServiceManager$11;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$3;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/duallens/DualLensServiceManager;->resumeDualLensServiceInternal(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$1000(Lcom/htc/camera/duallens/DualLensServiceManager;Z)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$3;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    # invokes: Lcom/htc/camera/duallens/DualLensServiceManager;->suspendDualLensServiceInternal()V
    invoke-static {v0}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$900(Lcom/htc/camera/duallens/DualLensServiceManager;)V

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
