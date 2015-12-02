.class public Lcom/htc/camera/preferences/EnumPreferenceBinder;
.super Lcom/htc/camera/preferences/PreferenceBinder;
.source "EnumPreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEnum:",
        "Ljava/lang/Enum",
        "<TTEnum;>;>",
        "Lcom/htc/camera/preferences/PreferenceBinder",
        "<TTEnum;>;"
    }
.end annotation


# instance fields
.field private final m_EnumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTEnum;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/htc/camera/property/Property",
            "<TTEnum;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TTEnum;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/preferences/EnumPreferenceBinder;-><init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Enum;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Lcom/htc/camera/property/Property",
            "<TTEnum;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TTEnum;>;TTEnum;)V"
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/preferences/PreferenceBinder;-><init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    if-nez p5, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 25
    :cond_0
    iput-object p5, p0, Lcom/htc/camera/preferences/EnumPreferenceBinder;->m_EnumClass:Ljava/lang/Class;

    .line 26
    invoke-virtual {p0}, Lcom/htc/camera/preferences/EnumPreferenceBinder;->updateFromPreference()V

    .line 27
    return-void
.end method


# virtual methods
.method protected getPreferenceValue()Ljava/lang/Enum;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTEnum;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/camera/preferences/EnumPreferenceBinder;->settings:Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/preferences/EnumPreferenceBinder;->preferenceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/camera/preferences/EnumPreferenceBinder;->m_EnumClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/htc/camera/preferences/EnumPreferenceBinder;->getPreferenceValue()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public updateFromPreference()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/preferences/EnumPreferenceBinder;->m_EnumClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 44
    invoke-super {p0}, Lcom/htc/camera/preferences/PreferenceBinder;->updateFromPreference()V

    .line 45
    :cond_0
    return-void
.end method
