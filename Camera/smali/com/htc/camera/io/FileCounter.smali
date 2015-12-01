.class public final Lcom/htc/camera/io/FileCounter;
.super Ljava/lang/Object;
.source "FileCounter.java"


# instance fields
.field public final mainCounter:I

.field public final subCounter:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/io/FileCounter;-><init>(II)V

    .line 11
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/htc/camera/io/FileCounter;->mainCounter:I

    .line 15
    iput p2, p0, Lcom/htc/camera/io/FileCounter;->subCounter:I

    .line 16
    return-void
.end method
