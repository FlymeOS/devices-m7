.class final Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$1;
.super Ljava/lang/Object;
.source "HtcShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 249
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->access$002(Z)Z

    .line 250
    return-void
.end method
