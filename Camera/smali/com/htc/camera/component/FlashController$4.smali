.class Lcom/htc/camera/component/FlashController$4;
.super Ljava/lang/Object;
.source "FlashController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FlashController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashController;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/htc/camera/component/FlashController$4;->this$0:Lcom/htc/camera/component/FlashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$4;->this$0:Lcom/htc/camera/component/FlashController;

    sget-object v1, Lcom/htc/camera/IFlashController;->PROPERTY_FLASH_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/SupportState;->UNKNOWN:Lcom/htc/camera/SupportState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/FlashController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$4;->this$0:Lcom/htc/camera/component/FlashController;

    # invokes: Lcom/htc/camera/component/FlashController;->applyFlashMode()V
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$000(Lcom/htc/camera/component/FlashController;)V

    .line 358
    :cond_0
    return-void
.end method
