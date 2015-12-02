.class Lcom/htc/camera/bi/VideoDurationStatisticController$3;
.super Ljava/lang/Object;
.source "VideoDurationStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/VideoDurationStatisticController;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$3;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

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
    .line 95
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$3;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    # getter for: Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontHasChanged:Z
    invoke-static {v0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->access$100(Lcom/htc/camera/bi/VideoDurationStatisticController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$3;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    # getter for: Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainHasChanged:Z
    invoke-static {v0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->access$200(Lcom/htc/camera/bi/VideoDurationStatisticController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$3;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    # getter for: Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedHasChanged:Z
    invoke-static {v0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->access$300(Lcom/htc/camera/bi/VideoDurationStatisticController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$3;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    # getter for: Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInHasChanged:Z
    invoke-static {v0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->access$400(Lcom/htc/camera/bi/VideoDurationStatisticController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$3;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->saveToPreference()V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$3;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->loadFromPreference()V

    goto :goto_0
.end method
