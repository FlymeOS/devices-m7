.class public Lcom/htc/camera/SettingsEventArgs;
.super Lcom/htc/camera/base/EventArgs;
.source "SettingsEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSettings:",
        "Lcom/htc/camera/Settings;",
        ">",
        "Lcom/htc/camera/base/EventArgs;"
    }
.end annotation


# instance fields
.field public final settings:Lcom/htc/camera/Settings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTSettings;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/Settings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSettings;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/htc/camera/SettingsEventArgs;->settings:Lcom/htc/camera/Settings;

    .line 23
    return-void
.end method
