.class Lcom/htc/camera/mainbar/SelfTimerMainBarItem$5;
.super Ljava/lang/Object;
.source "SelfTimerMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Lcom/htc/camera/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/SelfTimerMainBarItem;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/Duration;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/Duration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

    iget-object v0, v0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;

    iget-object v1, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/htc/camera/Duration;

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$SelfTimerDrawable;->setSelfTimer(I)V

    .line 245
    iget-object v0, p0, Lcom/htc/camera/mainbar/SelfTimerMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;->invalidate()V

    .line 246
    return-void
.end method
