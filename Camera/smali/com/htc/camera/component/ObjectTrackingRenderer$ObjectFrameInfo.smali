.class final Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;
.super Ljava/lang/Object;
.source "ObjectTrackingRenderer.java"


# instance fields
.field public final actualBounds:Landroid/graphics/RectF;

.field public final currentBounds:Landroid/graphics/RectF;

.field public volatile faceFrameLine:Lcom/htc/camera/gl/PolyStraightLine;

.field public volatile objectTrackingInfo:Lcom/htc/camera/ObjectTrackingInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->actualBounds:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;->currentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/component/ObjectTrackingRenderer$1;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingRenderer$ObjectFrameInfo;-><init>()V

    return-void
.end method
