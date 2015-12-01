.class Lcom/htc/camera/sina/GifModeUI$3;
.super Ljava/lang/Object;
.source "GifModeUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/sina/GifModeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/sina/GifModeUI;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/htc/camera/sina/GifModeUI$3;->this$0:Lcom/htc/camera/sina/GifModeUI;

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
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 416
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$3;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # getter for: Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$700(Lcom/htc/camera/sina/GifModeUI;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    sget-object v1, Lcom/htc/camera/sina/GifModeUI$9;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 423
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$3;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # invokes: Lcom/htc/camera/sina/GifModeUI;->canUseGifMode()Z
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$100(Lcom/htc/camera/sina/GifModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$3;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # getter for: Lcom/htc/camera/sina/GifModeUI;->m_State:I
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$500(Lcom/htc/camera/sina/GifModeUI;)I

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$3;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # setter for: Lcom/htc/camera/sina/GifModeUI;->m_CanCapture:Z
    invoke-static {v0, v2}, Lcom/htc/camera/sina/GifModeUI;->access$602(Lcom/htc/camera/sina/GifModeUI;Z)Z

    .line 430
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$3;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # setter for: Lcom/htc/camera/sina/GifModeUI;->m_State:I
    invoke-static {v0, v2}, Lcom/htc/camera/sina/GifModeUI;->access$502(Lcom/htc/camera/sina/GifModeUI;I)I

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
