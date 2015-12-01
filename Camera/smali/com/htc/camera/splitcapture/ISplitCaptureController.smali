.class public abstract Lcom/htc/camera/splitcapture/ISplitCaptureController;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ISplitCaptureController.java"


# static fields
.field public static final EVENT_LONG_PRESS_TO_RETAKE:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_SPLIT_CAPTRUE_FINISHED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/splitcapture/SplitCaptureEventArgs",
            "<[",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final isLeft2Right:Lcom/htc/camera/property/a;

.field public final isSplitCaptureActive:Lcom/htc/camera/property/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "LongPressToRetake."

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/splitcapture/ISplitCaptureController;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitCaptureController;->EVENT_LONG_PRESS_TO_RETAKE:Lcom/htc/camera/base/EventKey;

    .line 23
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "SplitCaptureFinished"

    const-class v2, Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;

    const-class v3, Lcom/htc/camera/splitcapture/ISplitCaptureController;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitCaptureController;->EVENT_SPLIT_CAPTRUE_FINISHED:Lcom/htc/camera/base/EventKey;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 55
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "ISplitCaptureController.IsSplitCaptureActive"

    iget-object v2, p0, Lcom/htc/camera/splitcapture/ISplitCaptureController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/ISplitCaptureController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    .line 56
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "ISplitCaptureController.IsLeft2Right"

    iget-object v2, p0, Lcom/htc/camera/splitcapture/ISplitCaptureController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/ISplitCaptureController;->isLeft2Right:Lcom/htc/camera/property/a;

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;ZII)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 45
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "ISplitCaptureController.IsSplitCaptureActive"

    iget-object v2, p0, Lcom/htc/camera/splitcapture/ISplitCaptureController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/ISplitCaptureController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    .line 46
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "ISplitCaptureController.IsLeft2Right"

    iget-object v2, p0, Lcom/htc/camera/splitcapture/ISplitCaptureController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/ISplitCaptureController;->isLeft2Right:Lcom/htc/camera/property/a;

    .line 47
    return-void
.end method


# virtual methods
.method public abstract enter(I)Z
.end method

.method public abstract exit(I)V
.end method
