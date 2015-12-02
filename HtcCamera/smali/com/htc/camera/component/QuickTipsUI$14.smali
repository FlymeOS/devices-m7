.class Lcom/htc/camera/component/QuickTipsUI$14;
.super Ljava/lang/Object;
.source "QuickTipsUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/QuickTipsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/QuickTipsUI;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$14;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$14;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->disableAllQuickTips()V
    invoke-static {v0}, Lcom/htc/camera/component/QuickTipsUI;->access$1800(Lcom/htc/camera/component/QuickTipsUI;)V

    .line 454
    return-void
.end method
