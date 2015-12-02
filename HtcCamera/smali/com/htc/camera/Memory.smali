.class public final Lcom/htc/camera/Memory;
.super Ljava/lang/Object;
.source "Memory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native allocate(I)J
.end method

.method public static native copy(J[BII)V
.end method

.method public static native copy(J[III)V
.end method

.method public static native copy([BJII)V
.end method

.method public static native copy([IJII)V
.end method

.method public static native free(J)V
.end method

.method public static native reallocate(JI)J
.end method
