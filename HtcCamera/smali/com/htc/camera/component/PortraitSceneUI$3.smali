.class Lcom/htc/camera/component/PortraitSceneUI$3;
.super Ljava/lang/Object;
.source "PortraitSceneUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/PortraitSceneUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PortraitSceneUI;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/camera/component/PortraitSceneUI$3;->this$0:Lcom/htc/camera/component/PortraitSceneUI;

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
    .line 189
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI$3;->this$0:Lcom/htc/camera/component/PortraitSceneUI;

    # invokes: Lcom/htc/camera/component/PortraitSceneUI;->updateSeekBarUI()V
    invoke-static {v0}, Lcom/htc/camera/component/PortraitSceneUI;->access$000(Lcom/htc/camera/component/PortraitSceneUI;)V

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI$3;->this$0:Lcom/htc/camera/component/PortraitSceneUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/PortraitSceneUI;->hideControls()V

    goto :goto_0
.end method
