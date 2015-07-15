.class public Lcom/htc/widget/ResUtils;
.super Ljava/lang/Object;
.source "ResUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toUpperCase(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "hasKey"    # Z
    .param p2, "value"    # Z

    .prologue
    .line 10
    if-eqz p1, :cond_0

    .line 11
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 16
    :cond_0
    return-object p0
.end method
