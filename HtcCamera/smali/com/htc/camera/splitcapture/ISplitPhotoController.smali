.class public abstract Lcom/htc/camera/splitcapture/ISplitPhotoController;
.super Lcom/htc/camera/splitcapture/ISplitCaptureController;
.source "ISplitPhotoController.java"


# static fields
.field public static final PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 29
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "CaptureState"

    const-class v2, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    const-class v3, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    sget-object v4, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Preparing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/splitcapture/ISplitCaptureController;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;ZII)V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lcom/htc/camera/splitcapture/ISplitCaptureController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;ZII)V

    .line 37
    return-void
.end method
