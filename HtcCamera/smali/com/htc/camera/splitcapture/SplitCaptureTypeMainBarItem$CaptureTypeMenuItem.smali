.class final Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;
.super Lcom/htc/camera/menu/IconMenuItem;
.source "SplitCaptureTypeMainBarItem.java"


# instance fields
.field public final captureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;Lcom/htc/camera/HTCCamera;ILcom/htc/camera/splitcapture/SplitCaptureType;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;

    .line 54
    invoke-static {p4}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->getDrawable(Lcom/htc/camera/splitcapture/SplitCaptureType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/htc/camera/menu/IconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Landroid/graphics/drawable/Drawable;I)V

    .line 55
    iput-object p4, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;->captureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 56
    return-void
.end method
