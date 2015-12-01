.class public abstract Lcom/htc/camera/photopattern/e;
.super Ljava/lang/Object;
.source "PhotoPatternFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TPattern:",
        "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Lcom/htc/camera/photopattern/PhotoBoothPattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTPattern;"
        }
    .end annotation
.end method
