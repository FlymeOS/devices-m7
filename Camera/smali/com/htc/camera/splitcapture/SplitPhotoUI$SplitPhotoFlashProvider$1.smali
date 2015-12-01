.class Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPhotoFlashProvider$1;
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
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/c;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/c;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPhotoFlashProvider$1;->this$0:Lcom/htc/camera/splitcapture/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPhotoFlashProvider$1;->this$0:Lcom/htc/camera/splitcapture/c;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/c;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPhotoFlashProvider$1;->this$0:Lcom/htc/camera/splitcapture/c;

    sget-object v1, Lcom/htc/camera/FlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/splitcapture/c;->a(Lcom/htc/camera/splitcapture/c;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPhotoFlashProvider$1;->this$0:Lcom/htc/camera/splitcapture/c;

    invoke-static {v0}, Lcom/htc/camera/splitcapture/c;->a(Lcom/htc/camera/splitcapture/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset flash mode: "

    sget-object v2, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method
