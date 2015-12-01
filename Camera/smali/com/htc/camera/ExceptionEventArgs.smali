.class public Lcom/htc/camera/ExceptionEventArgs;
.super Lcom/htc/camera/base/EventArgs;
.source "ExceptionEventArgs.java"


# instance fields
.field public final exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/camera/ExceptionEventArgs;->exception:Ljava/lang/Throwable;

    .line 22
    return-void
.end method
