.class public Lcom/htc/camera/OneValueEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "OneValueEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/camera/event/EventArgs;"
    }
.end annotation


# instance fields
.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    .line 18
    return-void
.end method
