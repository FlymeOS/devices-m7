.class Lcom/htc/camera/component/ThumbnailUI$7;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$7;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$7;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/UIState;->Closing:Lcom/htc/camera/UIState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$7;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne v0, v2, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailUI$7;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    # invokes: Lcom/htc/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v2, v0, v1}, Lcom/htc/camera/component/ThumbnailUI;->access$1100(Lcom/htc/camera/component/ThumbnailUI;ZZ)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
