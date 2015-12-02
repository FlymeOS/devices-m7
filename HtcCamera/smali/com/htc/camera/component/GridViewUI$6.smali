.class Lcom/htc/camera/component/GridViewUI$6;
.super Ljava/lang/Object;
.source "GridViewUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/GridViewUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/GridViewUI;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/camera/component/GridViewUI$6;->this$0:Lcom/htc/camera/component/GridViewUI;

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
    .line 158
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/htc/camera/component/GridViewUI$6;->this$0:Lcom/htc/camera/component/GridViewUI;

    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI$6;->this$0:Lcom/htc/camera/component/GridViewUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/GridViewUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GRID_VISIBLE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/component/GridViewUI;->showGridViewUI(Z)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/GridViewUI;->access$000(Lcom/htc/camera/component/GridViewUI;Z)V

    .line 162
    :cond_0
    return-void
.end method
