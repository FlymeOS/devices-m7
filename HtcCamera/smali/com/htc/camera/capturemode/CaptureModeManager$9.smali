.class Lcom/htc/camera/capturemode/CaptureModeManager$9;
.super Ljava/lang/Object;
.source "CaptureModeManager.java"

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
.field final synthetic this$0:Lcom/htc/camera/capturemode/CaptureModeManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/CaptureModeManager;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureModeManager$9;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
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
    .line 666
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$9;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    # invokes: Lcom/htc/camera/capturemode/CaptureModeManager;->resetToDefault()V
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$600(Lcom/htc/camera/capturemode/CaptureModeManager;)V

    .line 668
    :cond_0
    return-void
.end method
