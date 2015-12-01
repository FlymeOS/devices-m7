.class public Lcom/htc/camera/IntentEventArgs;
.super Lcom/htc/camera/base/EventArgs;
.source "IntentEventArgs.java"


# instance fields
.field public final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/htc/camera/IntentEventArgs;->intent:Landroid/content/Intent;

    .line 24
    return-void
.end method
