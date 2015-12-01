.class Lcom/htc/camera/component/SmileCaptureUI$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SmileCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SmileCaptureUI;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/camera/component/SmileCaptureUI$2;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI$2;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/SmileCaptureUI;->access$102(Lcom/htc/camera/component/SmileCaptureUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI$2;->this$0:Lcom/htc/camera/component/SmileCaptureUI;

    # invokes: Lcom/htc/camera/component/SmileCaptureUI;->updateSmileCaptureState()V
    invoke-static {v0}, Lcom/htc/camera/component/SmileCaptureUI;->access$000(Lcom/htc/camera/component/SmileCaptureUI;)V

    goto :goto_0
.end method
