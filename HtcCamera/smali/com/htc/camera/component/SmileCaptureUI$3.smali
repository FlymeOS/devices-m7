.class Lcom/htc/camera/component/SmileCaptureUI$3;
.super Ljava/lang/Object;
.source "SmileCaptureUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/SmileCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SmileCaptureUI;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/htc/camera/component/SmileCaptureUI$3;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

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
    .line 163
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI$3;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/component/SmileCaptureUI$3;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

    # invokes: Lcom/htc/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z
    invoke-static {v1}, Lcom/htc/camera/component/SmileCaptureUI;->access$200(Lcom/htc/camera/component/SmileCaptureUI;)Z

    move-result v1

    # invokes: Lcom/htc/camera/component/SmileCaptureUI;->showToast(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/SmileCaptureUI;->access$300(Lcom/htc/camera/component/SmileCaptureUI;Z)V

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI$3;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/SmileCaptureUI;->removeMessages(I)V

    goto :goto_0
.end method
