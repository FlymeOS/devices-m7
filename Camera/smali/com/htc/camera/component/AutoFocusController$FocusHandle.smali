.class Lcom/htc/camera/component/AutoFocusController$FocusHandle;
.super Lcom/htc/camera/Handle;
.source "AutoFocusController.java"


# instance fields
.field public callbackTimerHandle:Lcom/htc/camera/Handle;

.field public final focusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public final focusMode:Lcom/htc/camera/AutoFocusMode;

.field public final meteringAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/AutoFocusMode;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-focus-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/htc/camera/AutoFocusMode;

    .line 71
    iput-object p2, p0, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    .line 72
    iput-object p3, p0, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->meteringAreas:Ljava/util/List;

    .line 73
    return-void
.end method
