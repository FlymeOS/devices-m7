.class Lcom/htc/camera/bi/LaunchGalleryStatisticController$1;
.super Ljava/lang/Object;
.source "LaunchGalleryStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/LaunchGalleryStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/LaunchGalleryStatisticController;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchGalleryStatisticController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 51
    check-cast p3, Lcom/htc/camera/ui/ThumbnailImageEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/bi/LaunchGalleryStatisticController$1;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/ThumbnailImageEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/ThumbnailImageEventArgs;)V
    .locals 2
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
    .line 55
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchGalleryStatisticController;

    iget v1, v0, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->mLaunchGalleryHistory:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->mLaunchGalleryHistory:I

    .line 57
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchGalleryStatisticController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/bi/LaunchGalleryStatisticController;->mHasChanged:Z
    invoke-static {v0, v1}, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->access$002(Lcom/htc/camera/bi/LaunchGalleryStatisticController;Z)Z

    .line 58
    return-void
.end method
