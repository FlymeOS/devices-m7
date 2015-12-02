.class public Lcom/htc/camera/data/b;
.super Lcom/htc/camera/data/PreferenceBinding;
.source "DurarionPreferenceBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/data/PreferenceBinding",
        "<",
        "Lcom/htc/camera/Duration;",
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
            "Lcom/htc/camera/Duration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/data/PreferenceBinding;-><init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected a()Lcom/htc/camera/Duration;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/camera/data/b;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/data/b;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getDuration(Ljava/lang/String;)Lcom/htc/camera/Duration;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/htc/camera/data/b;->a()Lcom/htc/camera/Duration;

    move-result-object v0

    return-object v0
.end method
