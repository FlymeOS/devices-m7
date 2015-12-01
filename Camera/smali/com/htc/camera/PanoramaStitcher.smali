.class public final Lcom/htc/camera/PanoramaStitcher;
.super Ljava/lang/Object;
.source "PanoramaStitcher.java"


# static fields
.field public static final ATTACH_IMAGE_RETURN_VALUE_ATTACH_ERROR:I = -0x80000000

.field public static final ATTACH_IMAGE_RETURN_VALUE_ATTACH_SUCCESS:I = 0x20000000

.field public static final ATTACH_IMAGE_RETURN_VALUE_DIRECTION_DOWN:I = 0x10

.field public static final ATTACH_IMAGE_RETURN_VALUE_DIRECTION_LEFT:I = 0x2

.field public static final ATTACH_IMAGE_RETURN_VALUE_DIRECTION_NO:I = 0x1

.field public static final ATTACH_IMAGE_RETURN_VALUE_DIRECTION_RIGHT:I = 0x4

.field public static final ATTACH_IMAGE_RETURN_VALUE_DIRECTION_UP:I = 0x8

.field public static final ATTACH_IMAGE_RETURN_VALUE_RESULT_BACKWARD:I = 0x4000

.field public static final ATTACH_IMAGE_RETURN_VALUE_RESULT_TOO_FAST:I = 0x2000

.field public static final ATTACH_IMAGE_RETURN_VALUE_RESULT_TOO_NARROW:I = 0x8000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lcom/htc/camera/CameraNativeLibrary;->initialize()V

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synchronized native declared-synchronized attachImage([BIIIII[I)I
.end method

.method public static attachImage([BIILcom/htc/camera/rotate/UIRotation;II[I)I
    .locals 7

    .prologue
    .line 47
    invoke-virtual {p3}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 52
    invoke-static/range {v0 .. v6}, Lcom/htc/camera/PanoramaStitcher;->attachImage([BIIIII[I)I

    move-result v0

    return v0

    .line 50
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static synchronized native declared-synchronized finalizeStitcher()V
.end method

.method public static synchronized native declared-synchronized getImage()[B
.end method

.method public static synchronized native declared-synchronized getThumbnailImage(Ljava/nio/ByteBuffer;Lcom/htc/camera/widget/PanoramaObject;)Z
.end method

.method public static synchronized native declared-synchronized initialize(JI)Z
.end method
