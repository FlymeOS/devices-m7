.class public Lcom/htc/camera/PreferenceEventArgs;
.super Lcom/htc/camera/base/EventArgs;
.source "PreferenceEventArgs.java"


# instance fields
.field public final preferenceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/camera/PreferenceEventArgs;->preferenceName:Ljava/lang/String;

    .line 22
    return-void
.end method
