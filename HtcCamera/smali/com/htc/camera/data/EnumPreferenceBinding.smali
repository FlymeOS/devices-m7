.class public Lcom/htc/camera/data/EnumPreferenceBinding;
.super Lcom/htc/camera/data/PreferenceBinding;
.source "EnumPreferenceBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEnum:",
        "Ljava/lang/Enum",
        "<TTEnum;>;>",
        "Lcom/htc/camera/data/PreferenceBinding",
        "<TTEnum;>;"
    }
.end annotation


# instance fields
.field private final m_Class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTEnum;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/Settings;Ljava/lang/String;Ljava/lang/Class;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TTEnum;>;",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTEnum;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/data/EnumPreferenceBinding;-><init>(Lcom/htc/camera/Settings;Ljava/lang/String;Ljava/lang/Class;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/d;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/Settings;Ljava/lang/String;Ljava/lang/Class;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/Settings;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TTEnum;>;",
            "Lcom/htc/camera/base/e;",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTEnum;>;",
            "Lcom/htc/camera/data/d",
            "<TTEnum;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/data/PreferenceBinding;-><init>(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/d;)V

    .line 39
    if-nez p3, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No enumeration class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p3, p0, Lcom/htc/camera/data/EnumPreferenceBinding;->m_Class:Ljava/lang/Class;

    .line 42
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
    .line 51
    iget-object v0, p0, Lcom/htc/camera/data/EnumPreferenceBinding;->source:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/data/EnumPreferenceBinding;->preferenceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/camera/data/EnumPreferenceBinding;->m_Class:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/htc/camera/data/EnumPreferenceBinding;->getPreferenceValue()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
