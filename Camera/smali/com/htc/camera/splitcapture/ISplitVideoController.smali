.class public abstract Lcom/htc/camera/splitcapture/ISplitVideoController;
.super Lcom/htc/camera/splitcapture/ISplitCaptureController;
.source "ISplitVideoController.java"


# instance fields
.field public final captureState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/splitcapture/SplitVideoCaptureState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 5

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/splitcapture/ISplitCaptureController;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 30
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ISplitVideoController.CaptureState"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/splitcapture/ISplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->UNAVAILABLE:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/ISplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;ZII)V
    .locals 5

    .prologue
    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/htc/camera/splitcapture/ISplitCaptureController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;ZII)V

    .line 23
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ISplitVideoController.CaptureState"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/splitcapture/ISplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->UNAVAILABLE:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/ISplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract setDuration(Lcom/htc/camera/Duration;)V
.end method
