.class public Lcom/htc/camera/imaging/JpegEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "JpegEventArgs.java"


# instance fields
.field public final index:I

.field public final jpegRawData:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 22
    iput p1, p0, Lcom/htc/camera/imaging/JpegEventArgs;->index:I

    .line 23
    iput-object p2, p0, Lcom/htc/camera/imaging/JpegEventArgs;->jpegRawData:[B

    .line 24
    return-void
.end method
