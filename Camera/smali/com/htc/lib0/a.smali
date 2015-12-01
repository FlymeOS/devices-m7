.class public Lcom/htc/lib0/a;
.super Ljava/lang/Exception;
.source "HDKLib0Util.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 290
    const-string v0, "No such method in HDK-base."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 295
    return-void
.end method
