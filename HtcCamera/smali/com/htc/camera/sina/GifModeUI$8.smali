.class Lcom/htc/camera/sina/GifModeUI$8;
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
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/sina/GifModeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/sina/GifModeUI;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/htc/camera/sina/GifModeUI$8;->this$0:Lcom/htc/camera/sina/GifModeUI;

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
    .line 594
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$8;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # getter for: Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$700(Lcom/htc/camera/sina/GifModeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    sget-object v1, Lcom/htc/camera/sina/GifModeUI$9;->$SwitchMap$com$htc$camera$UIState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/UIState;

    invoke-virtual {v0}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 599
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$8;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # getter for: Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/camera/sina/GifModeUI;->access$900()Landroid/graphics/Bitmap;

    move-result-object v1

    # invokes: Lcom/htc/camera/sina/GifModeUI;->showReviewImage(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/htc/camera/sina/GifModeUI;->access$1000(Lcom/htc/camera/sina/GifModeUI;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 602
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI$8;->this$0:Lcom/htc/camera/sina/GifModeUI;

    # invokes: Lcom/htc/camera/sina/GifModeUI;->hideReviewImage()V
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeUI;->access$1100(Lcom/htc/camera/sina/GifModeUI;)V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
