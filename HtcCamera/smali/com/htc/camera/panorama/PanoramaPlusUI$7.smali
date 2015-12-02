.class Lcom/htc/camera/panorama/PanoramaPlusUI$7;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$7;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

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
    .line 893
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$7;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$7;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCapture()V
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2500(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    .line 899
    :cond_0
    return-void
.end method
