.class Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;
.super Ljava/lang/Object;
.source "SplitVideoController.java"


# instance fields
.field final isMute:Z

.field final surface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

.field final videoPath:Lcom/htc/camera/io/Path;


# direct methods
.method public constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;ZLcom/htc/camera/io/Path;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean p2, p0, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;->isMute:Z

    .line 145
    iput-object p3, p0, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;->videoPath:Lcom/htc/camera/io/Path;

    .line 146
    iput-object p4, p0, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;->surface:Landroid/view/Surface;

    .line 147
    return-void
.end method
