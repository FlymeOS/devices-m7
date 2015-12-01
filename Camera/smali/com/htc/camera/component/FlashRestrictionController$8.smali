.class Lcom/htc/camera/component/FlashRestrictionController$8;
.super Ljava/lang/Object;
.source "FlashRestrictionController.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FlashRestrictionController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashRestrictionController;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/htc/camera/component/FlashRestrictionController$8;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 389
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 390
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/component/FlashRestrictionController$8;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # invokes: Lcom/htc/camera/component/FlashRestrictionController;->onDisableStatusUpdated(II)V
    invoke-static {v2, v0, v1}, Lcom/htc/camera/component/FlashRestrictionController;->access$1800(Lcom/htc/camera/component/FlashRestrictionController;II)V

    .line 391
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
