.class Lcom/htc/camera/sina/GifModeUI$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/sina/GifModeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/sina/GifModeUI;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/htc/camera/sina/GifModeUI$2;->this$0:Lcom/htc/camera/sina/GifModeUI;

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
    .line 392
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$2;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # invokes: Lcom/htc/camera/sina/GifModeUI;->canUseGifMode()Z
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$100(Lcom/htc/camera/sina/GifModeUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$2;->this$0:Lcom/htc/camera/sina/GifModeUI;

    const v1, 0x7f08017f

    # invokes: Lcom/htc/camera/sina/GifModeUI;->changeRecording(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/sina/GifModeUI;->access$200(Lcom/htc/camera/sina/GifModeUI;I)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$2;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # getter for: Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$300(Lcom/htc/camera/sina/GifModeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Release capture button"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$2;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # invokes: Lcom/htc/camera/sina/GifModeUI;->closeCaptureUI()V
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$400(Lcom/htc/camera/sina/GifModeUI;)V

    .line 404
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$2;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # getter for: Lcom/htc/camera/sina/GifModeUI;->m_State:I
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$500(Lcom/htc/camera/sina/GifModeUI;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 405
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$2;->this$0:Lcom/htc/camera/sina/GifModeUI;

    const/4 v1, 0x2

    # setter for: Lcom/htc/camera/sina/GifModeUI;->m_State:I
    invoke-static {v0, v1}, Lcom/htc/camera/sina/GifModeUI;->access$502(Lcom/htc/camera/sina/GifModeUI;I)I

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$2;->this$0:Lcom/htc/camera/sina/GifModeUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/sina/GifModeUI;->m_CanCapture:Z
    invoke-static {v0, v1}, Lcom/htc/camera/sina/GifModeUI;->access$602(Lcom/htc/camera/sina/GifModeUI;Z)Z

    goto :goto_0
.end method
