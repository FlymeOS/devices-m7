.class Lcom/htc/camera/splitcapture/SplitPhotoUI$5$1;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/splitcapture/SplitPhotoUI$5;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI$5;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5$1;->this$1:Lcom/htc/camera/splitcapture/SplitPhotoUI$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5$1;->this$1:Lcom/htc/camera/splitcapture/SplitPhotoUI$5;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Reviewing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-ne v0, v1, :cond_0

    .line 920
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5$1;->this$1:Lcom/htc/camera/splitcapture/SplitPhotoUI$5;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelLongPressed(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1300(Lcom/htc/camera/splitcapture/SplitPhotoUI;I)V

    .line 921
    :cond_0
    return-void
.end method
