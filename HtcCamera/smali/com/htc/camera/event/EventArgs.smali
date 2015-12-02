.class public Lcom/htc/camera/event/EventArgs;
.super Ljava/lang/Object;
.source "EventArgs.java"


# static fields
.field public static final empty:Lcom/htc/camera/event/EventArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/htc/camera/event/EventArgs;

    invoke-direct {v0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    sput-object v0, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
