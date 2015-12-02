.class public Lcom/htc/camera/data/a;
.super Lcom/htc/camera/data/PreferenceBinding;
.source "BooleanPreferenceBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/data/PreferenceBinding",
        "<",
        "Ljava/lang/Boolean;",
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
            "Ljava/lang/Boolean;",
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
.method protected a()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/data/a;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/data/a;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/camera/data/a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
