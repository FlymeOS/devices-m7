.class final Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;
.super Lcom/htc/camera/media/MediaInfo;
.source "AutoFaceCaptureUI.java"


# instance fields
.field public volatile bucketID:Ljava/lang/String;

.field public volatile photoCount:I

.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method private constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Lcom/htc/camera/media/MediaInfo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/component/AutoFaceCaptureUI$1;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    return-void
.end method
