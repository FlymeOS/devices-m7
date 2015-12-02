.class Lcom/htc/camera/splitcapture/SplitPhotoUI$15;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/ui/ThumbnailImageEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$15;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 1401
    check-cast p3, Lcom/htc/camera/ui/ThumbnailImageEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitPhotoUI$15;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/ThumbnailImageEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/ThumbnailImageEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/ui/ThumbnailImageEventArgs;",
            ">;",
            "Lcom/htc/camera/ui/ThumbnailImageEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$15;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$15;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v2, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1412
    :sswitch_0
    invoke-virtual {p3}, Lcom/htc/camera/ui/ThumbnailImageEventArgs;->setHandled()V

    goto :goto_0

    .line 1407
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
