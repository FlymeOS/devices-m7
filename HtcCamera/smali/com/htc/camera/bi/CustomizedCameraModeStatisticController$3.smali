.class Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$3;
.super Ljava/lang/Object;
.source "CustomizedCameraModeStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$3;->this$0:Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;

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
    .line 108
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$3;->this$0:Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;

    # getter for: Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mHasChanged:Z
    invoke-static {v0}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->access$000(Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$3;->this$0:Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->saveToPreference()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$3;->this$0:Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->loadFromPreference()V

    goto :goto_0
.end method
