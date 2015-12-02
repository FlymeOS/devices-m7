.class public Lcom/htc/camera/preferences/a;
.super Lcom/htc/camera/preferences/PreferenceBinder;
.source "BooleanPreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/preferences/PreferenceBinder",
        "<",
        "Ljava/lang/Boolean;",
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
            "Ljava/lang/Boolean;",
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
.method protected a()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/camera/preferences/a;->settings:Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/preferences/a;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/htc/camera/preferences/a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
