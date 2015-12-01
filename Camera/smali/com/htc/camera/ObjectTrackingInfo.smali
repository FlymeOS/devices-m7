.class public final Lcom/htc/camera/ObjectTrackingInfo;
.super Ljava/lang/Object;
.source "ObjectTrackingInfo.java"

# interfaces
.implements Lcom/htc/camera/x;
.implements Ljava/lang/Cloneable;


# instance fields
.field public bounds:Landroid/graphics/RectF;

.field public faceID:I

.field public smileDegree:I

.field public smileScore:I

.field public type:Lcom/htc/camera/ObjectTrackingInfoType;

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lcom/htc/camera/ObjectTrackingInfo;

    invoke-direct {v0}, Lcom/htc/camera/ObjectTrackingInfo;-><init>()V

    .line 18
    iget-object v1, v0, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 19
    iget-object v1, p0, Lcom/htc/camera/ObjectTrackingInfo;->type:Lcom/htc/camera/ObjectTrackingInfoType;

    iput-object v1, v0, Lcom/htc/camera/ObjectTrackingInfo;->type:Lcom/htc/camera/ObjectTrackingInfoType;

    .line 20
    iget v1, p0, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    iput v1, v0, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    .line 21
    iget v1, p0, Lcom/htc/camera/ObjectTrackingInfo;->weight:I

    iput v1, v0, Lcom/htc/camera/ObjectTrackingInfo;->weight:I

    .line 22
    iget v1, p0, Lcom/htc/camera/ObjectTrackingInfo;->smileDegree:I

    iput v1, v0, Lcom/htc/camera/ObjectTrackingInfo;->smileDegree:I

    .line 23
    iget v1, p0, Lcom/htc/camera/ObjectTrackingInfo;->smileScore:I

    iput v1, v0, Lcom/htc/camera/ObjectTrackingInfo;->smileScore:I

    .line 24
    return-object v0
.end method
