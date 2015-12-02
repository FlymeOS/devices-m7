.class public final Lcom/htc/camera/preferences/c;
.super Lcom/htc/camera/preferences/PreferenceBinder;
.source "FlashModePreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/preferences/PreferenceBinder",
        "<",
        "Lcom/htc/camera/FlashMode;",
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
            "Lcom/htc/camera/FlashMode;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/preferences/PreferenceBinder;-><init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lcom/htc/camera/FlashMode;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/preferences/c;->settings:Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/preferences/c;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/camera/FlashMode;->fromValue(Ljava/lang/String;)Lcom/htc/camera/FlashMode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/htc/camera/FlashMode;)V
    .locals 3

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/camera/preferences/c;->settings:Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/preferences/c;->preferenceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/preferences/c;->settings:Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/preferences/c;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected b()Lcom/htc/camera/FlashMode;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/htc/camera/preferences/c;->a()Lcom/htc/camera/FlashMode;

    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/htc/camera/preferences/c;->settings:Lcom/htc/camera/Settings;

    iget-object v3, p0, Lcom/htc/camera/preferences/c;->preferenceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/htc/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/htc/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/camera/FlashMode;->fromValue(Ljava/lang/String;)Lcom/htc/camera/FlashMode;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    .line 38
    goto :goto_0
.end method

.method public synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/htc/camera/preferences/c;->a()Lcom/htc/camera/FlashMode;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/htc/camera/preferences/c;->b()Lcom/htc/camera/FlashMode;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic setPreferenceValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lcom/htc/camera/FlashMode;

    invoke-virtual {p0, p1}, Lcom/htc/camera/preferences/c;->a(Lcom/htc/camera/FlashMode;)V

    return-void
.end method
