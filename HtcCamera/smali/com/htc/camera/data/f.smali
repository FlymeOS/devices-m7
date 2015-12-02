.class public Lcom/htc/camera/data/f;
.super Lcom/htc/camera/data/PreferenceBinding;
.source "StringPreferenceBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/data/PreferenceBinding",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/data/PreferenceBinding;-><init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/data/f;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/data/f;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/camera/data/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
