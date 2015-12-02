.class public Lcom/htc/camera/preferences/e;
.super Lcom/htc/camera/preferences/PreferenceBinder;
.source "IntegerPreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/preferences/PreferenceBinder",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/preferences/PreferenceBinder;-><init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/htc/camera/preferences/e;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 27
    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lcom/htc/camera/preferences/e;->settings:Lcom/htc/camera/Settings;

    iget-object v2, p0, Lcom/htc/camera/preferences/e;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/preferences/e;->settings:Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/preferences/e;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/camera/preferences/e;->settings:Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/preferences/e;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method protected synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/htc/camera/preferences/e;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic setPreferenceValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/camera/preferences/e;->a(Ljava/lang/Integer;)V

    return-void
.end method
