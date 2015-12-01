.class Lcom/htc/camera/component/PanoramaController2$9;
.super Ljava/lang/Object;
.source "PanoramaController2.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/burst/BurstCameraState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaController2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaController2;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2$9;->this$0:Lcom/htc/camera/component/PanoramaController2;

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
            "Lcom/htc/camera/burst/BurstCameraState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/burst/BurstCameraState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$9;->this$0:Lcom/htc/camera/component/PanoramaController2;

    # getter for: Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaController2;->access$400(Lcom/htc/camera/component/PanoramaController2;)Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    sget-object v1, Lcom/htc/camera/component/PanoramaController2$12;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 374
    :pswitch_0
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$9;->this$0:Lcom/htc/camera/component/PanoramaController2;

    # getter for: Lcom/htc/camera/component/PanoramaController2;->m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaController2;->access$500(Lcom/htc/camera/component/PanoramaController2;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$9;->this$0:Lcom/htc/camera/component/PanoramaController2;

    # getter for: Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaController2;->access$600(Lcom/htc/camera/component/PanoramaController2;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStitchCompleted later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$9;->this$0:Lcom/htc/camera/component/PanoramaController2;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2$9;->this$0:Lcom/htc/camera/component/PanoramaController2;

    # getter for: Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v1}, Lcom/htc/camera/component/PanoramaController2;->access$400(Lcom/htc/camera/component/PanoramaController2;)Lcom/htc/camera/CaptureHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2$9;->this$0:Lcom/htc/camera/component/PanoramaController2;

    # getter for: Lcom/htc/camera/component/PanoramaController2;->m_StitchedJpegData:[B
    invoke-static {v2}, Lcom/htc/camera/component/PanoramaController2;->access$700(Lcom/htc/camera/component/PanoramaController2;)[B

    move-result-object v2

    # invokes: Lcom/htc/camera/component/PanoramaController2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;[B)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/PanoramaController2;->access$800(Lcom/htc/camera/component/PanoramaController2;Lcom/htc/camera/CaptureHandle;[B)V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
