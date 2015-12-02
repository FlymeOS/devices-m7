.class Lcom/htc/camera/component/PanoramaUI2$9;
.super Ljava/lang/Object;
.source "PanoramaUI2.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaUI2$9;->this$0:Lcom/htc/camera/component/PanoramaUI2;

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
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$9;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$9;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # getter for: Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaUI2;->access$900(Lcom/htc/camera/component/PanoramaUI2;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$9;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # getter for: Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaUI2;->access$900(Lcom/htc/camera/component/PanoramaUI2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2$9;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/htc/camera/component/PanoramaUI2;->getVirtualDeviceOrientation(I)I
    invoke-static {v1, v0}, Lcom/htc/camera/component/PanoramaUI2;->access$1000(Lcom/htc/camera/component/PanoramaUI2;I)I

    move-result v0

    .line 1117
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2$9;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # getter for: Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/htc/camera/component/PanoramaUI2;->access$1100(Lcom/htc/camera/component/PanoramaUI2;)Lcom/htc/camera/widget/PanoramaIndicatorView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->setDeviceOrientation(I)V

    .line 1119
    :cond_0
    return-void
.end method
