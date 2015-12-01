.class Lcom/htc/camera/panorama/PanoramaPlusUI$5;
.super Ljava/lang/Object;
.source "PanoramaPlusUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$5;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

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
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 862
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$5;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$5;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_IsUISetup:Z
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2200(Lcom/htc/camera/panorama/PanoramaPlusUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_1

    .line 865
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$5;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->showReviewScreen(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2300(Lcom/htc/camera/panorama/PanoramaPlusUI;Z)V

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Closing:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$5;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->showReviewScreen(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2300(Lcom/htc/camera/panorama/PanoramaPlusUI;Z)V

    goto :goto_0
.end method
