.class public abstract Lcom/htc/camera/preferences/PreferenceUpgradeWorker;
.super Ljava/lang/Object;
.source "PreferenceUpgradeWorker.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field public final sourceVersion:I

.field public final targetVersion:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/preferences/PreferenceUpgradeWorker;->TAG:Ljava/lang/String;

    .line 23
    iput p1, p0, Lcom/htc/camera/preferences/PreferenceUpgradeWorker;->sourceVersion:I

    .line 24
    iput p2, p0, Lcom/htc/camera/preferences/PreferenceUpgradeWorker;->targetVersion:I

    .line 25
    return-void
.end method


# virtual methods
.method public abstract upgradePreferences(Landroid/content/Context;Ljava/util/Map;Landroid/content/SharedPreferences$Editor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation
.end method
