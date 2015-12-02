.class Lcom/htc/camera/component/FlashController$2;
.super Lcom/htc/camera/data/Trigger;
.source "FlashController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/data/Trigger",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FlashController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/htc/camera/component/FlashController$2;->this$0:Lcom/htc/camera/component/FlashController;

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/camera/data/Trigger;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$2;->this$0:Lcom/htc/camera/component/FlashController;

    # invokes: Lcom/htc/camera/component/FlashController;->checkFlash()V
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$100(Lcom/htc/camera/component/FlashController;)V

    .line 327
    return-void
.end method
