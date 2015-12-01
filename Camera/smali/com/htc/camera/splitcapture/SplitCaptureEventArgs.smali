.class public Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;
.super Lcom/htc/camera/base/EventArgs;
.source "SplitCaptureEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/camera/base/EventArgs;"
    }
.end annotation


# instance fields
.field public final biRecord:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;->biRecord:[Ljava/lang/Integer;

    .line 17
    return-void
.end method
