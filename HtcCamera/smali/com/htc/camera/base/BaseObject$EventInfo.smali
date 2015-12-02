.class final Lcom/htc/camera/base/BaseObject$EventInfo;
.super Ljava/lang/Object;
.source "BaseObject.java"


# instance fields
.field public addingHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/base/b",
            "<*>;>;"
        }
    .end annotation
.end field

.field public final eventKey:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<*>;"
        }
    .end annotation
.end field

.field public handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/base/b",
            "<*>;>;"
        }
    .end annotation
.end field

.field public logFlags:I

.field public raisingCounter:I

.field public removingHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/base/b",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/base/EventKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/EventKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/camera/base/BaseObject$EventInfo;->logFlags:I

    .line 63
    iput-object p1, p0, Lcom/htc/camera/base/BaseObject$EventInfo;->eventKey:Lcom/htc/camera/base/EventKey;

    .line 64
    return-void
.end method
