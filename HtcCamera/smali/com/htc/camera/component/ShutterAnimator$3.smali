.class Lcom/htc/camera/component/ShutterAnimator$3;
.super Ljava/lang/Object;
.source "ShutterAnimator.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ShutterAnimator;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ShutterAnimator;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/camera/component/ShutterAnimator$3;->this$0:Lcom/htc/camera/component/ShutterAnimator;

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
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    sget-object v1, Lcom/htc/camera/component/ShutterAnimator$6;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 226
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$3;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$600(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$3;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$700(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/IViewFinder3D;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/ShutterAnimator$3;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/ShutterAnimator;->access$600(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->removePreviewFilterRenderer(Lcom/htc/camera/Handle;)V

    .line 229
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$3;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/ShutterAnimator;->access$602(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 233
    :cond_0
    :pswitch_0
    return-void

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
