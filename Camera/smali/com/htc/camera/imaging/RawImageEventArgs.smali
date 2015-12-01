.class public Lcom/htc/camera/imaging/RawImageEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "RawImageEventArgs.java"


# instance fields
.field public final imageHeight:I

.field public final imageWidth:I

.field public final pixelFormat:Lcom/htc/camera/imaging/PixelFormat;

.field public final rawImage:[B


# direct methods
.method public constructor <init>([BLcom/htc/camera/imaging/PixelFormat;II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/htc/camera/imaging/RawImageEventArgs;->rawImage:[B

    .line 21
    iput-object p2, p0, Lcom/htc/camera/imaging/RawImageEventArgs;->pixelFormat:Lcom/htc/camera/imaging/PixelFormat;

    .line 22
    iput p3, p0, Lcom/htc/camera/imaging/RawImageEventArgs;->imageWidth:I

    .line 23
    iput p4, p0, Lcom/htc/camera/imaging/RawImageEventArgs;->imageHeight:I

    .line 24
    return-void
.end method
